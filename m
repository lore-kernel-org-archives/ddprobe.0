Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBBF13FE0
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706333297; cv=none; b=OPD6quMFiiPVebdT6K8wv+sCedkeo7EAW44z781RMQ5CEvG4SNQ6vGLTAqqbBrXSaZkFgr8TQbcw6FAVdMw8Yo7igVwOq7Eol5EsJJXDFsZxeM2KqTlZQcMohdu7O6UCI6ivkVR7NbHLGZF8Q3uiENuV4ntxA7l+VBHnWBAInp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706333297; c=relaxed/simple;
	bh=uOsc9bemqe+Z4PmQixxU9HkSMfhuTfhezAcukKOXKrk=;
	h=To:Subject:From:Message-Id:Date; b=Yc8WIKAhiWQeH8jUB+etHLZLW8YyZSMEMt6mOG6EeKr1qxoaQVEpLSeQim0NcGLIoNaq8Wy46VAuwK8i3lNlIvaXwPdcYa1qfmPJBNPCO686hOtzHlvdbmOG7NWu8KaYFRvuPNFup6Rp/4tgzn2B/4nlDG7Pnufe+WVyM5Bd5gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3KnHWld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3KnHWld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C9FCC433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706333296;
	bh=uOsc9bemqe+Z4PmQixxU9HkSMfhuTfhezAcukKOXKrk=;
	h=To:Subject:From:Date:From;
	b=Z3KnHWld4WOGh643ju+vWQsM2yJRrwe8gumv747Lpak1Z/VA3xF0ggKZFNbzat+Ki
	 3D1U1/Rmicce+pfnWdimb07n//k1GgRFJnDZ5t+b+QZVsNiNk99bejRaSuXTo+rPLk
	 fvslqm1SomAPg/dJ7SU8369odevnFYaafxdkSutV1z91y2NmH962yhPLDD6LFsu1Xu
	 ISUp/SCn+XeDrYPBgUosmKgfbYJLCo1a6JdjmeyJZYgdn91aCc99ASYgI1wRj6oaKM
	 mTi9rbQ2isN3vOhy9koQxZr2ZkQyEmPtQs0J99TbaXNwaPcO7Lt2nmofjS8M2GLhsg
	 aoXdIElS3PQIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6079AC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170633329636.26962.12764576695562027865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45acdd0a132ce1b805af762233b85c481f4c5c9c4dd6e6f00f821e40166ca842
Date: Sat, 27 Jan 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706333296
