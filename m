Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECE710A1F
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745291394; cv=none; b=B4U4ef5peTNSQEevRErxYMTJ445TOx69gk5ZHECv7kCEG5duWmuo6YByrmgTf4/KgrFcUugmnlC97hHhghqzAQT7tBuNnGgLDi3j4Yc8iixcYA3Ejwb1SEP1qYuWzNvw9pER7e8xlwDc7Tl5xbeAncfYYaO0Iwvaic6baZzuyx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745291394; c=relaxed/simple;
	bh=7JhVwkJeJc9TBCXuINg9eL/O31Arue5D4n8lJHYyw7Q=;
	h=To:Subject:From:Message-Id:Date; b=QK3Uj1VUUjLPIkJ/gg11CxZZQt3t32ENS2DKuVCmS+QPljJpB8rQ1JIoV1g4nkOuGf19gccsomqW0oyv6TpHmb47q4eqhwlAneOe2j2l0PV3P/RtZ2XVVEon1O1hmhcrjS163qD/aGWvyis6KO+vkex6OEZkZMb/Y9Wi3GD3DKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1DGG+Xs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1DGG+Xs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B13C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745291393;
	bh=7JhVwkJeJc9TBCXuINg9eL/O31Arue5D4n8lJHYyw7Q=;
	h=To:Subject:From:Date:From;
	b=V1DGG+Xsyqz2fERPj3nvPs2FF1dRK5SQ15miQgvbtS5+zdW+n+9S/EgDQmsSL9l1U
	 NIZiE+rDW4srRN/cpv1VcuLhwzrsqA9IQirxczazeapiDY6uLAnFCd06RFRVgN3/ID
	 BccBTgEnGvnQkOzzpaGekhz4MtidlK2c/vdbO41/0AZELaEvxBw0Wsaow8IIOYPiCO
	 OJebcavxD1Le6BEoRqymJONvMAiPqg5c2igdmGO0UjclUYZELvGNybxAX8YcUo9zML
	 uNpJm6dANRB4uM94y7WodiSS6o2avpiIHFMCwUZmDgCeb6Ogv7v5V1I/9OXRl3ih6/
	 nn2LM++LG0UYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975FEC369AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174529139361.24566.3533000805515097104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a1f5dbe7dc9808d622f5bfd06e488156b92dd41a88654bddb2e2c3c5dadf08
Date: Tue, 22 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745291393
