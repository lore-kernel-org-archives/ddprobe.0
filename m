Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FA22B9A2
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733079954; cv=none; b=EwfFNdJOi3xQ52q4cW4SEAOwuJg1v/j2aH9NbMio89VBS7K6wjmhpvEJujxyKQhaqJXxukOEos/VJPumGhyWg4C4FmZzAC5LPJ4SBIT9IrdNERsnSkubnYuWzvlZNaXZ57V8JZukr8R1GdGv+1LbXLCzYldhHX+5To78iZnEdjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733079954; c=relaxed/simple;
	bh=htvClVvd9rJAtl2JrRDsBkMkAEf74vbF4LaKJYaJBDA=;
	h=To:Subject:From:Message-Id:Date; b=Ok8ZOYT+UIhq2WkzPGPedUYAJxqnQOmP9NUIvbohBbhuBf+CWiq+bMOfmhrglVfTALTn3qisfll5fFY/E5oEDvom3UJWgz9ilwCO5mLAjPZOMic4CY8BZ+DOsSW2eVFoNqHb3ecUdUAxGVH2kJRyhJGW4e9au4wmktDd1WXrFTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+nf/ZGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+nf/ZGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EECC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733079953;
	bh=htvClVvd9rJAtl2JrRDsBkMkAEf74vbF4LaKJYaJBDA=;
	h=To:Subject:From:Date:From;
	b=Z+nf/ZGzNuj6qRmebrtSTrOxwxHExqrW+KfVznNqvoOMERq6TiMEmE2fMu8zl2AbT
	 JL1FNLESo7/7GqT7Nv7V3I4/3ybwk3Gyp8a46ZCizxK0ENrTkNDptGkEPXGR6UgfR8
	 658Jx/6mS5MDgytD7LKtmbYEgZ/8JJKJ3N6BkWxL6dMxav/JOs1TKmjiiDm7ZyaoAK
	 sEtfSXazwgcjL4wXfFYF+vXXWGirlxjU5jqRMSeNsh4qfcHF6xghNAqTTLgXWN9RgX
	 KvSd8RADk77/7NMkWxRVgBg1xc7VS58kvNcYYSRB8FaZJ8TeQm28UNOPEj5meGLq1G
	 ijY8MR4XN4nGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0689D49780
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173307995361.7600.3212719362255439054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 429ebd40dc4b10f9ea3abb415a7e3973ed0e3bc8b866e7c353f474b04e8a1fec
Date: Sun, 01 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733079953
