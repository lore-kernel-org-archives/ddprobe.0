Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C86E13D503
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756044594; cv=none; b=hpm00mqJjoAMjvnnZ39Bj+EU/hLlbqc3NmCY+nJX6pqlL5j4jQFMujQCADuhrYx2ysraVhFgoDhaWIRD9SE75/j01iLYFq0cOXWhDirG6Lr9HmyAodENTsRiPAakzWWEUO53z49iHcvFTWwlKwhAJL43XK4W0iVlMoNKHRMFGkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756044594; c=relaxed/simple;
	bh=gmH3DY1McPK1buPdDg1mCEq3y5rt9O53eqxGEJID/UI=;
	h=To:Subject:From:Message-Id:Date; b=dOEBViiiTph/vSJPBJibA+hYTV8t0V7EAPYo5VA4Ub2MmQkIPkxyE9mHeKhSXBCsW3ps92WfzLXd8mPGf28Uqb730saTxcOjexj0RWhwIjJVbMw8Zt+viwoRqkVx7EvafU43rdz1LGxWjCYzSTk+uefu6sAg5tUGOVRVg/oy290=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIoSFfe0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIoSFfe0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E353C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756044593;
	bh=gmH3DY1McPK1buPdDg1mCEq3y5rt9O53eqxGEJID/UI=;
	h=To:Subject:From:Date:From;
	b=uIoSFfe0T3sDHWb/Xu58BRWhQnDAmrM9O6Ao4y5MiiGRUBFPe8zlinZvcNbM8XM09
	 u3LoV4Ik+S0qe+A0SckRAuSBi0IY0jL2KLud4Gupi7O7exjHaPzIdFVxXaoil0goq4
	 JyNJAKBOaO5If1MrpCosK68gwKnl404blrPi1l/EFjFiCCinotQlsqWqoaiSEjFmB8
	 JugKY67WUnoUIcyj5f37jT4aJB9+AZcG984WyLjBh3Qg+Gtu4E25OvMh3uG2cDuUED
	 +5fco9ApAtj2Lwatm6+faEiE9N4xkoUVkESuef2C+XC1Ub10PqKhG16mwJatRzVYVj
	 T9XG0ekYZS67Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC78CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604459357.8745.13406051115483645788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f85c6e198ae10f1d1bbd7b32527b14d76a2dd80b34cb4f8a2b1f881acf850508
Date: Sun, 24 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756044593
