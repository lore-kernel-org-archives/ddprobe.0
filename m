Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F83E55B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752107394; cv=none; b=gedgGMWCxDiaVNL9yhEPXhOof7rySy8rNjzkVu1653fJ47w4yGANVlheERkDSVN1LacoYp0I+9+52TyzKYCEyhopwQpAa+OdX1b/EMUOe3/tdVER7UNsH+hfGFywJBMFtzTiEA70JPcaH5GXbTSr+KLhHBbdY3CWf8ZMvZjuJuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752107394; c=relaxed/simple;
	bh=4CVG526IQwgu3VjjsxXvcn77Ah6/suwlmxH9HP2U6Nw=;
	h=To:Subject:From:Message-Id:Date; b=V97gpDzHgbV0bOtcNwPoCoH9HL99f7ecX6Ob6Ak/Tm3DRPIntmrCGrC1Y+ee3nT8cMl96fCRQOPnx6NysmZDXRMiE3kaWuozH0fTrUYG54ACnoqX4h5MbyzZt8c41bvvHDGlPdpLyrVmp9nbKXZsbJ68RT1v+0G4Nogeygk1oyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqDOmFEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqDOmFEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02BBC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752107393;
	bh=4CVG526IQwgu3VjjsxXvcn77Ah6/suwlmxH9HP2U6Nw=;
	h=To:Subject:From:Date:From;
	b=XqDOmFEk4qDwXKXIUNrgwbMEtIOtLcgEl0FE2R6LBCvWe9KsCkYwCuV0BYrXE/3MM
	 zQRA3yvWNCVoApifwSKIP88ukeIiaOqBk6Tb0gnvWrcQJjRjAKbTPMIMOHomF3HC7L
	 n0/MeJpClYncuvshOkHSpJVpaube065abzRGCPMIT6i+gBTjolta13ps1i8Yv5m/fb
	 Y7s/RWEK+KDONLlPBtsP1TNqKmi8Gfu5Z11/uB7AZ8JyCMBy4wftGIS5ga6Nls/YPl
	 Wr1nUGsqg1i6eri7IOJR05DZvwdj+ULl3pMctkk3H6deLCc9xw0ceqqBn55+c/Iqwp
	 CBnM5zxhzdWyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF11C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210739357.13488.12526360419498264542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dccd2e6223a34708557653faed71e52fe734ff42f198def9a688b4015ac791d
Date: Thu, 10 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752107393
