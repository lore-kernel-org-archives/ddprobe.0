Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD6112C52E
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728719154; cv=none; b=MIGVLI+ehNe7ZcSOYkZyh/tDRppVyMlPbdGlS88SWJ01d7etBqCkk9foeLwHfmhVS54LoSH3UZgK87lxWyS4GCnvD/2f4aXA7nq0NAoxWAqeA82m4YjxKVKGjFfjlxDZHCLq67SOyv/h5WWMpDMRZrprosuLqD1CIt275F0PHzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728719154; c=relaxed/simple;
	bh=9JkKbLPtRqAW+sNcECOPZfrj/8Jw9LKZM63PIji1h98=;
	h=To:Subject:From:Message-Id:Date; b=MKlTcckgwfSOCBSPEm/ufSMphv98OXqxdgGK5NgZN7dVRIljaQhV+TUWPtxTE9AJxoRhtdg6byTDu1xSONRauEvQAeaxn3shK5+hWNftDfyeOw/V5OmvsYtlGvh6vwCnuKXpyp4u/B4Yh8G5dZ14gKPSjIV2ktUi9VNKyskV9y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZEv0BDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZEv0BDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EBEC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728719153;
	bh=9JkKbLPtRqAW+sNcECOPZfrj/8Jw9LKZM63PIji1h98=;
	h=To:Subject:From:Date:From;
	b=OZEv0BDdpa1VmRvUp48j05XFVyDcgS8atVmOyRRm2bFTTNoBbRxyxUJ8EZTl4+KBL
	 6+Y9bws5zTvPbcxUu5pzHRaVI6vI+22mo7CfuZdL0JCz+FXHwK6pUe0zW3IU7KlM58
	 kQX5qAc3ABKbn/XD8fVaxQk51JIFuCB0gHiopLin3w9lqLqMNpFSQJQFMOq646oHcP
	 IyBKOEXDdEpWPT9GCqWTEUua888eVpMCjdpgJSSCcRwAbYc7ZlRAmoyGfNU/0OuJfr
	 XIQ9Ik7yoMwGileulUOu+bMCGaR6aGYUQuNygULvxa+Q7dkKZ20Mz+coIKfRPG4Fxr
	 LrrThxMXvvsnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97868D1A431
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172871915361.16309.17278028406387526182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b6196f24ae1e8934dcfb84015bc0816814af378db8f937368b443440cb7c69
Date: Sat, 12 Oct 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728719153
