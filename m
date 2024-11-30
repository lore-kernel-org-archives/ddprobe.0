Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E9C1C6A3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 08:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732956354; cv=none; b=kUHTIEhaHMHLOOjK0GIQgdmE0nYtYJcma7qCEqtKhnIH/H6StbcKyd2uzEEBBIelshnbysH2Bguyseihm7rtnuM6+eqjfAr5gqFaXguODVI2RZ53ZiuOBpBc0WKos3AWeZhJpi2P8YaYcwickgpgexeW+R88l5fRY2wTi0bFeU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732956354; c=relaxed/simple;
	bh=wH8RESGH0J5emXW2iuAblKuccRqM9xqy/+eTHyiJIC4=;
	h=To:Subject:From:Message-Id:Date; b=HNGro7/8PL8ydqYebfl5bXSpbFt9niKpSWVHVObbVAJwtZv/6wleMsQD67pVi6jvi2IDVXldll2hSB7+M1O6be8uoM89kFjKxr+mMxIAsCmKaXhYso0hJM6eMgamOWIzFMSNOYeuEYbSN+646lqFSOSTPLx18yYBib1NkYzFc4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfk+QaZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfk+QaZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FBCC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732956353;
	bh=wH8RESGH0J5emXW2iuAblKuccRqM9xqy/+eTHyiJIC4=;
	h=To:Subject:From:Date:From;
	b=pfk+QaZgbDSs8fSmqnKnW7+TO78t/HGNEvcBwILruzlT+gZ4qp2XjOnapPPU9p+xE
	 +t8NHM6hsyP47TrQPHi6sIpiYJfHqVw+zW9vgyUEuapGwYWB36kpZWrjmLLLZNeioF
	 E6ZrJVFhVQIjnYdXS4f61MhqICi1TrvVjMowwE8pCBjwFQAcq0S/Ub8D5iOMwObEnA
	 kTRpFy5nTrPiELGekTFhJnO15J6NiTlwl5HHKGRyuHwwQk8LuBvLujTerD5Cehl7q8
	 WnaKdneYmmSXu0Qb6za6GoBlDXTYKIX1gy1zV+FNuFHisFTIfxzciulUo8aoId2ae3
	 9vE1SGczKZw0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C18D735F8
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173295635373.24304.12626715529171372838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ea5e5cbe42bbbced3cc32a0f8f619b4556f4b42ace3360870215927c78a736
Date: Sat, 30 Nov 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732956353
