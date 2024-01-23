Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9ED759B54
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705999097; cv=none; b=eUyhzeH5kferDb6g0t1hj86Gs30b/Bn3/7nGXtOqXl70XLwDeWJdh9BeLeCSKyyzqokq59OgQAAtJDKJr+q23pRm36Oh8X+NRzDbwUWXKP9NlJkjjtv7P9qk/j1eOebtVKh9dI7ECck21Y4JpQWjxDJlgbTQXMLwlSKceQel+NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705999097; c=relaxed/simple;
	bh=9vaS7HmN/Pzf/ISwlxmvRUCAeS8pNcvuV1kV+ZmdK2o=;
	h=To:Subject:From:Message-Id:Date; b=Ofbr4A00C+1AG0Vhj3TlQS4vMOP89fhTF78Sn0wn0Np0/vFL5fkkAqQbLm6XqjdQJS3qAbLw4383qVoSeYXk7o0iXq1WprS5GE8YdnbBiZWO2Wj6Fg5q/HGFedsszU9AUUjNB+dgbM1aqQe0RDDyiTbxuUnRP+ik7thafo/WtRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8V/Gq6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8V/Gq6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76CF5C43394
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705999096;
	bh=9vaS7HmN/Pzf/ISwlxmvRUCAeS8pNcvuV1kV+ZmdK2o=;
	h=To:Subject:From:Date:From;
	b=C8V/Gq6Lal1y3ez4KQXrn0J2YHBEhK7uBV9VpaF68krDJ9Y1K4DCnLH3seMuXvNkL
	 +HyG8stKarHgJlRXiWanmvi94LEVtrzbhJ4Dhh4UOnAyshCs6PJh65IolootUindmT
	 AipjIJNXTFACZI84LUjcRrZqQ/QFS9HpHrcoX5yiuTdkBe3TFrdVML0BKlNpvp/Ko6
	 zCq1fKQmapBg7t31oVsPnymfK9M0z4SXkOuHvjFhr1tyEv4OKOG6mvfE1MCyqImIkT
	 SFAD9M+cjv7n+QfkzHz/aD7hgpZzsNo3VK623b2NuLKCnhTj2iuW4HlZV83hIiVizG
	 sxk/zCoe8Feuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC0EC47DDC
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170599909637.6130.10516235383363624130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217739aa79b0c643db69d9ec4a8b71ae63d16ce9c1970a476dae061adfd27db9
Date: Tue, 23 Jan 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705999096
