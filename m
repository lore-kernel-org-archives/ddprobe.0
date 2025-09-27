Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320351F94A
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758948594; cv=none; b=CsPhJAtqZdm1Zl9SAjE0xvN/A2b+bJ4kT7rTjqwkzk74bS/0lBMe/uNJ2QiopOSZQfSv/dE+qdeh5gn4Hj+fU9YUURCpjvxQPXTMOcUNbA1KIWNfbFgMcJ1yDskmKhEihUxgiwTF/5hrXwZxpSpdkYCWnYY+h2uG8RJ63+kW8Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758948594; c=relaxed/simple;
	bh=65qOGXQW7mwQjTXuIagsUXGwxayVgS9ruL74aPvVepA=;
	h=To:Subject:From:Message-Id:Date; b=Kuq/uOIMyhncrm0nUUOZi/PBOStxj1ZY3cKEU7uMKL1CXwJ7aKZV/ST6LlXuPqSv3TEA1GvVk2GXWQUwBTcCbw+iBeFCYGbZrNU1LuyrvfBrUjREDZeDfBP3q5IBrulidZBjNv0WmzsE2tByThfsChqKxqVl0KS0cOYtRzAhfXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRazub1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRazub1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A547DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758948593;
	bh=65qOGXQW7mwQjTXuIagsUXGwxayVgS9ruL74aPvVepA=;
	h=To:Subject:From:Date:From;
	b=PRazub1e6Cv/cLc5dkhjD5KvMz3RhtX5Rsi4lCb+oESjagRnCp4pySUYiqI0LEq/G
	 ROmXfNF1eMXm8UiShxRsbxelyOV8DZpFngpj7LJPTn1nNWkNcaCogfJr5OYUJR3hnB
	 VXBxTl3Mt/pUQjUGeTR0M94M7JgMySZnZpyMopUtBaEmHl8SQ0yN+MeB3t7pPUeJnu
	 Zded6jHliP6TibUiw0SrfjseTNTDIWZjowBUvO2Pvc+SJVXd3qb+sgWDQ0cHOgIvtL
	 sGyV3jmv59W1sj/pGonnR8UE7ahmfH+fitC9scVb14WQVjxLHxF9ooS9dPY4llZ/ny
	 tyqZRvdX6vA1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C18CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894859357.6626.14485210684720356565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23ca8133870cee8ff49127a870bc32613a65f1c58b6c4f8bb15791a327dc9af
Date: Sat, 27 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758948593
