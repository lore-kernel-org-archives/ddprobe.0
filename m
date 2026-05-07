Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250C931F98C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778141854; cv=none; b=Jf21kVV/i5k5wwy/r65nIC7ZFLxc+r8kNugUGpu+h4yLL9uNzh3V9/j5888ub26ISxChRgsWC6tIIe469PRFmT2K20QTorYmPmsxZGHci/nigiuJRGO70Rbu0dml2hGhFI0OygT+yF6hWXr2wXga9mnUD82b0Qh+mx7ii3d4BlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778141854; c=relaxed/simple;
	bh=6db0hDuynNyPKJWK2uF77ZS00vD+l+FWLgxYVGoOQyQ=;
	h=To:Subject:From:Message-Id:Date; b=nwp5wv2CHHpiEnoywz7yOP+vFXc/dvr57Bh4Uy88EwM6QU0iZB9x9H+6dxrnl0DTHFnKb5qjXPGYdYkL16eSsO36XWqO2xRyCmRGIIWvEyd+LYRDTQeQZ/10eEHIwwzIWyTSujIlXCzLwUqddy97qsWlOag+essbDHUrZkiKMJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmjqrjuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmjqrjuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1958C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778141853;
	bh=6db0hDuynNyPKJWK2uF77ZS00vD+l+FWLgxYVGoOQyQ=;
	h=To:Subject:From:Date:From;
	b=TmjqrjuGz5lfs6Vh0C5wjzv+d3bYfL81Vhz1f+8u0gWbtBIRWcDkZ+07CUhKJH70p
	 lPiUEwt3yhf2rTx3tPUflAlp9lPqB3CV0TmN/o3cfoyn6fbOKAwWR5n1Mj/0t7MNyU
	 zj8iEwecHajDwAQV/GMJfunHMS7PK0FuRZX4bc8z3tMblwz7837xE1NojxqFQ4/V0+
	 Khar39jeSd5vggFX12M3IuK3jTHo+7I+5pJrlFbgs7LNL5cbyiPokO9+Rc4L/Ez2+e
	 6QEXyUc+uo8SIsaY+8r1Hl0pOYf7fMwiw2AvX5yWGQljNuxKlORQ0pnFylYPseYbzo
	 I17yH0VCUcbZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B098ACD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814185368.9590.319367805967469650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af4fb973649d1c4c5f39e9b2eb5a6262e4eb69639f89d0f682d58a184846fa0
Date: Thu, 07 May 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778141853
