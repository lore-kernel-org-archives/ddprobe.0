Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B82536C
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736011554; cv=none; b=bo3e8iuN1S7nAfR/ymZdWeWrqqvwCQu3gadIl0Tl5GUxgS97ox2/48ky0PJxeTfGnn8sVh52tA1zmMqSlt+j4JehhlLj6T1TfdXI07WLL5P3DXzdmlIa4hvlZQAFXg9EdxhzVLrqzpfbw6v+D9hmJg74PXvqIK8hNzvf28W8ijU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736011554; c=relaxed/simple;
	bh=RkIfiGk3Gb7kv5D2iBMSFQU1f7UV9T8Ufmb2own5pkk=;
	h=To:Subject:From:Message-Id:Date; b=OifGEQULT61t4faDi6iYlYwc5kvbYcf1J4ppFLHOYAVnoGhHgEDkikdYAORKtmcALxUWNOsG8VfJctQUVb+JzUu1FTomLFYre+gUmnw3vAww5Rw5snKjSGg5VV+Mk0LTvHvml7SqpCG+P3uDShtTwYNjfk3T+OCfp1/T7JBIZrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZA7NvK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZA7NvK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B460BC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736011553;
	bh=RkIfiGk3Gb7kv5D2iBMSFQU1f7UV9T8Ufmb2own5pkk=;
	h=To:Subject:From:Date:From;
	b=eZA7NvK2aI7F47Axh89k2ENf5eywVwbvyxRx+hM/nVBsQmIeoAxqso3ZqgPZSLkfG
	 XT8wrsCcaTLkWeR59orAW1u7JrgipaJ6uypDvfPpGqOtHIWrqlwnKJ3G4CQ3ptAtlg
	 sKwhgCCoW6aVzrJnsY2SFI9KcCWywbtS3bqchpHDK52sWId63Y0OM2DyndS2rZccR2
	 mCDq4vlhGFqOC1nMy8FOy04ztHSkxfkNGHGUnE0Ye5CKXVWezylUtZ8clmI/fp1PGj
	 C7oi0K/togXHBJeTTAdk4cItrCsH/AnfXFJbrQrSylGhkuVw2loho2f0ZoScsEB4Ll
	 sTIfLKdgZSdVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F0BE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173601155358.11380.14662426432066035024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb1605f021166a52f33ade71b56606d219cccf8133c992dd0158374aeaee8c3e
Date: Sat, 04 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736011553
