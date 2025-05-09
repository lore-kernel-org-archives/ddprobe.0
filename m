Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7AC78F44
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746779394; cv=none; b=NULMI/1TchkpMMm8Lo5+0SYT3yNm9Yt8btAX36ma4nXMK2PAPJNVJm8N9wgbJd0oNSnjDYbUM4s2Rzp4qBk5o6WOY4vAWtzFNC68osNilDfXerdmXL94vVK24/5N8M/89guP/lCdRAzWx8JMAdFe1nR6vpnt5nvRD/otupRhN3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746779394; c=relaxed/simple;
	bh=TSwz4yTkIToQhxCX5kMN0h4hdI3QlpCEFdn7JK58JcA=;
	h=To:Subject:From:Message-Id:Date; b=iqRAzFq/0f2RGUhYm2CGrdw1hAXEXe/1w3mKonDLtIl+9SI9OIzPqfHNCU9HNjZZRWiwbRpzqZLp71eV6UHFgjKP7cxHj3OnWxrz2Ibkpwcxk6XU3uJGiqlxeFYpnRqgnCvysc6DeWWH/29/01GRa8vW9FIh/H0a/7eZiETV+0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDOoK87Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDOoK87Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8066C4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746779393;
	bh=TSwz4yTkIToQhxCX5kMN0h4hdI3QlpCEFdn7JK58JcA=;
	h=To:Subject:From:Date:From;
	b=rDOoK87QHKHQ7K1wT9hNAhwr5IuhnZfrhb4nPKCbyv+y7EM8nrFUisOnOLvNkj//d
	 xYKNWDztcIAcLZVRL1kIrtjSMb4lYxVv6O0AP6uUHSk6pU9aiRqRhKLNkVvcz0AEhw
	 4/qK1fEHYqLHhmRHRvz1oVCGf9r7TQVxphqDXCmgLU0RT2YDipOz+wDrIefoQL4tbI
	 yP8cX/23yROHecknkOU7/ghhpyAeVr6X1wwTGccWlRJlwSlV9jVTZSitwhJnuHkm7Y
	 S9R+pX1GTcbWiRNrnKq7MP3qfzfmH3c5kq/RYbmSEZIbXmqH+Aw2n9zwSAGwYvdXcl
	 O0fRnXEPglOiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9538DC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677939357.28810.15481622163985042393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e3165908790eb9cfb54e0c7f22f144f016d8cc07e210df5fabd42346276a36
Date: Fri, 09 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746779393
