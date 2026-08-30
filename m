Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C3025B0B6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788130834; cv=none; b=W/WfmkNXbg9fj+ggx7uePfoTTDEXvdw16e4E1Ul4mQWMjEUOnB4pR9qUkfuW3eBZutnVf+ootXWi7nAJEOniX+i6Ovifki9QLjWeOPMYiRK/CwvIVVhUQMaX57qoeV4HYT/TAIb5sOQO+4+67edF6dz6or4nq6MPZ/2xquilPcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788130834; c=relaxed/simple;
	bh=2XVEGVg4BF/4ASmjZxldM0ohjL59GXmifY396AwS4RI=;
	h=To:Subject:From:Message-Id:Date; b=EqR5O4qdSiUx7s8DNioz7wAL1/JC+7rv9dX6gWeu3TjmrhvARGt9JJ2SMmOKz4ivQTETURtp4wLK5V6pcFBTO2DmmAK/PD8BhUVeYBE1TbcyLvcDECHq3ztfjISb2H8syP3iiBk5d+jejCn6EQ7TNpLlCNxm10OwRiuIGLGL29w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qgen6kO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qgen6kO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A00C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788130833;
	bh=2XVEGVg4BF/4ASmjZxldM0ohjL59GXmifY396AwS4RI=;
	h=To:Subject:From:Date:From;
	b=Qgen6kO0fK51kQQjwj73ViksbJsdy9eqb8l0z6d/dIMAvH+FT7TEYNKPSIfnosPDO
	 8C1EEhCli5oY3i0SwCFE6ajGo4urkw76A46qatZ2nu10FDDb46GYdt3q/qm4k4aNPx
	 m0nRMrslgu7HWdt2pLMP4liLwbgr5+845em/1ZcOFdNv03fRtpB/+PgS61/2XGixo2
	 sakvhHC0a9BH+M+KxsvPVLAEkD8eF0Z+Hbkb/NM2Hkp6iPPVMWvTRl86flG+YX60Gg
	 2Li/F9Ss3uYjLtx4KZ8UalvmY05x40F3DpfTrv9syrA0oV3DVcWZUt+jIVOzdGLtsV
	 s4BLdDKUa9YzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE29AC61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813083370.3715.14733414869549458782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0c093caa3ba3ee0d5cb02648754be310f10dc597d151e082a3e735a640cf6b
Date: Sun, 30 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788130833
