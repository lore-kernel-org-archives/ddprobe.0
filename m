Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF9E274650
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772311494; cv=none; b=CjOh5muPKYGBmKT9mvV0LA5sSFY0j2Ks5OfVE50jejzroGNM6CNy+EgrgDM3rpS4Q6kd60IV1r49tJ2W1L7jhovQGAwnVpfXkuEIXwSqN76tPAOtXmuoiex4XfUwSkL90yvwHTRTbJEZVyDUDEwM8y4a/yTipA2NsXBpXm5Sjsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772311494; c=relaxed/simple;
	bh=DN76zkZMPal5Dtunf7pnW66+8jGwrDtOIN1yynWd3do=;
	h=To:Subject:From:Message-Id:Date; b=bv0GdDcXJuxoybaFocdAFaw+yuKYlN6hu4BSjaCq6HO/6ztyKplF4DWZU17oKdbrrO3AHsh2OXyYY2XNUZQI0xgfkbTAGeySdkMyRdQ9aMs2vOZZFmoRm5ZbDTDgObqOQFrMfaJcq7yL/nR/ZqTrls0aw4LfwFN9iV3rSJ2v60I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8h+XAYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8h+XAYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC440C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772311493;
	bh=DN76zkZMPal5Dtunf7pnW66+8jGwrDtOIN1yynWd3do=;
	h=To:Subject:From:Date:From;
	b=B8h+XAYDW/V0kO8DkEnjOmQ4OdrUBmGaGUYW25apFkVpha6urptTBB+ixdu4y5P20
	 8XD7ELfhJe78ei6WPRlhq9mN83gmXMFn1AtPPRBBLTpscl90Ek7QJvwdoTFxVO15NV
	 W6+MEu/5JgBTIb02eC3QqRCmNVnfR00wgbxKaIbPuFxhavMpl5pdpYPLNQnGHE14pi
	 CvXTUxJQcBZNsF1y8vBEPLWmugEu7Nf07qBsRF/pRqK1D+ulV3Y/7wt+POpWk7wVJp
	 2mVtWz0v3UjL7hOxNWL6U3qY1VdWZeYPc/b5fhSTA1JBteYvJrQxx6sSwGZM2E03dz
	 RjY5CuRDvafHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3ADFFEE4FE
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231149368.11880.3672391374895053647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4021e0b71c5d88491159d0bbfd3d4992aafd481002973d018c244841a543ba
Date: Sat, 28 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772311493
