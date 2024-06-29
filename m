Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1F321364
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719684263; cv=none; b=kjuozhqXYBs1FQowtpTOjCLVnk4HXKsAwv2rlrVmg9i1rgL6rUnIJ558Lmf6CoxRUYtIqjMmyhQlOt1ylUPzZ5gh4x+aFwU1koJBD2Fg/30pnWUv0JOdYWsxvU0HalvtQuuvPi2+1YrbrJFN14myJtZUpqPl8/Gg21DFL5TQKys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719684263; c=relaxed/simple;
	bh=YUqeU0JhqRPtbOp34TY10hChf1weGUYH4Pe3UW67P7U=;
	h=To:Subject:From:Message-Id:Date; b=ow+QyTJlXPsOTXTNDVcpVm00swlsxK0vQkXAXsCxBlZyZps3B/Vk1LdVUbNiSLOVBC8HhCCOCXSdIRjcT6hWZVbyOAJQTdTmmbZqGlkzUIZLqCETQ6iY3gCku83Tjrbnw/1I+/9BtCrGY+NtJq0dbESuK1Rne++RpIAXBl8sIlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHejdmA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHejdmA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAF62C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719684263;
	bh=YUqeU0JhqRPtbOp34TY10hChf1weGUYH4Pe3UW67P7U=;
	h=To:Subject:From:Date:From;
	b=LHejdmA4hOkjfrCvnpcNmefLKbOH6KwtESHNFjw8/TqC4Tsh6/0grYb/jxfTbaex+
	 TENpzZhyI3QGdpRm6twGmzbk7l/4MycFbzQQsgCD4rINEAuuVYr6dKrscDDjm/R0Fa
	 DuqwDQ7SkcxByAPfNjh19FWr60EDEN8eU1HzkKhkl/2kais+SujNKa3k7aGpOHvryn
	 qIPDmRU3jIrsG/6ZP0v/KpE/zSfjKlfwp3O5K/hyyCgM5PDPdm5i+vnZP566G7/FQT
	 ZYy4236z2ttdMAHmBkym9j4kK7lzxcQwddc4lAxstbM9kHzqsP1a+XR0O6gXC43qJ6
	 oRVsfWW7RsJDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D12AEC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968426283.19247.1372409003573525794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0441b33136ca7cf09acf990240989b2a36a0c05de0f5e2233dd0bdb8ccca14ea
Date: Sat, 29 Jun 2024 18:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719684262
