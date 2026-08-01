Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F803353A98
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785556834; cv=none; b=KeNK/BEU/tEiw4tHZMJGP3Z4nC/9ibmet/YBID/5ddgP2XXRYPs5rKKLrJ1ufttS0xh7EPA6QcDz22rhEebv8t763I1ep0f+Z5JLIovCZm3qQy/oSE8oPqts/duEyawx1ty8SSmnKApMu3L7QqhsrsDj8nVvK8YImbNH0Am1W3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785556834; c=relaxed/simple;
	bh=j3KkfppI4GAJgNnX4QPMEEnm0zpguP3Q3dJmhyVKfYc=;
	h=To:Subject:From:Message-Id:Date; b=cmHmMNLyKkARZLYHejeY862Z6Q4h9PYBh9hwBRRBPYcuLkNzvZYwy3H0fS8m2todd3D3ZisA8Bvmr2g+gU5ZZSdUYlulMP4/66ZDN6lnRo50g2jcHD8prJ7DgDjUTIvvBfztloZMVk0U/f6QTNtXCaQs8RbnLqInkOMNU0+usks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjJssQu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjJssQu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CBCC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785556833;
	bh=j3KkfppI4GAJgNnX4QPMEEnm0zpguP3Q3dJmhyVKfYc=;
	h=To:Subject:From:Date:From;
	b=kjJssQu5wudh6SEuBPNwU3FO4wshyfCezmWoEkByAqqHWxyhm6sRG2NDNI4qyNjpV
	 V8KDWAED3yQaIH5QEXuwxKOYI/SpX76lh+OD0UXkyXzEaKvmFx8hxRqj8H4141QWOS
	 EdaWsZBwuZhG/6ka70esK3jnMHi4ZZDJ/xAd8XGV4A15Hk/Zm+ttzjYZG1GbvDVI7n
	 C0xkDykl2kVr4GtD/a6FN+7PgkBh29Qvh3lYH7t+MYpB8Yh89KCMAvN0/P3skYMDTI
	 pmsX3HvNk8UT6bS6BEmpX3ZpFbrS4XbOEb/H2TQMFB1lAGtcLuoIfXdrvAA5alOKui
	 66/5l4ve03v7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA355C54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555683368.3942.14105536570001345852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2f5469a456aaaf4e3f7d17d99007bef28fa6f29f2d4ba7112f9255939126d15
Date: Sat, 01 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785556833
