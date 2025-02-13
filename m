Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6223F2135D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739444336; cv=none; b=L79rURppYjzFIG5kHpR4mVKlp7Jvj07q5SK8CgZDwuLvemAK/uXABskhjPBzAWeszLYoqOST4188+yutnD/Zcb2bML2ghTy/4oN71O2W6UbBMQ5VJq8EP+/CofFrrAAEChc/zqE0vGKoLEY9VjhED95SrpsNbtqE4nuRJXKoqoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739444336; c=relaxed/simple;
	bh=bXSZJs9uhenYVID2YbxoVAzw6vESnXpMJJqKQqZhxPk=;
	h=To:Subject:From:Message-Id:Date; b=iwSv/AS7W0UXX3yrHqsCHvOo0OeB+WVy5HWSGVYzn7qrrbeboin3pQertgvyyA1AYcDr7MEIy4elRlX16A6ni0kpyy7M7hBujgpfZsjEUJcrzjeMNNBofk2DbYNUkfjmh+pVAqU277AtjyuLkkIbdcXyWNb9anm+UfI2F4nVSxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZEfhRaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZEfhRaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF95AC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739444333;
	bh=bXSZJs9uhenYVID2YbxoVAzw6vESnXpMJJqKQqZhxPk=;
	h=To:Subject:From:Date:From;
	b=KZEfhRaZKft2aZSDbxBrZ8Qg54LjYCxnI5lZSJmYPGJhZWyqXe45eqsLtMOB21yzx
	 eZoIFdpan7ZUmoDL47mkoLfnUOh81Ai70pi2RXRi5Czv0o+FaBruwidqGzO0r76qfu
	 KDAqM/dSxzbfzOTpe4NfWpkuNMukFyv0YXpvlneAG3Z7TRXuj3RGCyxaDBDDwGdBbj
	 n0YJpeHQG0Vr4N1mckLgWcj6Uxys8D9gEbTiBX0GkX89QooB4fRlfyYbEEiSvqlJry
	 OK4WB1TJzpjF1t8Fzfv9cOWNLNpQVVOVbDzwiHsec06RefpjRYfuwKysiiW/GEBFyo
	 k3BiYmQ1ts5yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A38BEC0219D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 10:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173944433366.14315.17952304193487039058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d60806cc88bbb8a7ae3c2278ac9deb42b61fe22548716854d3c01f1f1b4a71
Date: Thu, 13 Feb 2025 10:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739444333
