Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3179919E804
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732115754; cv=none; b=VPJa2Wy2VzUkRqU4k+X1MqfLZjY2SabpKaxbcEuUrx+TIuiz4LAK8tC9MRd+KJKTy8IVFO1eaB02KZHiREOqlpM3XMsn1kzQOJroc8mrCGUDp+a6fwBl6ztdPGCg+2MVmHyOBvl41z+zrof2AdhdpYR4nEDoOvqs69jNaffdin4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732115754; c=relaxed/simple;
	bh=hxyViC3qtRUEYUENlP0/bx778nfHSNMsPxoRK52mJ74=;
	h=To:Subject:From:Message-Id:Date; b=nw22M0tLh81UG2YCRWGXjzi8hi0ZhFanNm3+flQoWXjq77z2026pOuiKuVhGvSBnaakyC3VZLy6yRTTyuAgeEfGPR0CzK2s1ZX01IOLot5LK2WMYFoWcZEAezS+P+XNcd6qo2Jr96M1Bc272Th5rnri1h9y26tV0fug+Zj4+yas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryWmttIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryWmttIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82B2C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732115753;
	bh=hxyViC3qtRUEYUENlP0/bx778nfHSNMsPxoRK52mJ74=;
	h=To:Subject:From:Date:From;
	b=ryWmttIjhuM0qx1guVHLB1b4vt/DWTtNO+2b69tQ10COHmPq7JEUsQ218UByJx9r3
	 q8iZY+Mmha/c1bqn5gZoX2/UJ5Uf3jhBj4xapv4sk5gSxpxBVCtZ5ZhpigDpgndlJH
	 gagjc5DBG4t6KqDz/E//4p6wa7xwvaR2vnYTZ824mQx6PDC79DqU3AA+lpmjUrr6sS
	 DUqKW+sVmkAvD5o0NiBFSGutDMlCzF6lpgPl2oXI5ocCdDTKtqolsX3iIfdaHO6HLs
	 K/AQRsN1jnFbWPC5GV6y3Uhgrdugi/922xJr8sKSfEIkylNTZcWM4/v9eopTkBCz2d
	 WVWlmVMZX0Mxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96505D711AC
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173211575360.12307.13239161532290284927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41cc0fbd6c6ff9aa6b43e92d1e8586df56cf1af591550d80ff43df380aa3b6ae
Date: Wed, 20 Nov 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732115753
