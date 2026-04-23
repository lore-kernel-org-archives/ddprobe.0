Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBC72DE6FF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776973654; cv=none; b=hHW/2/kKl1xNeB8Z/gxTAcYWM1rDGgtDhqgc6FLTb3w32plBnpG9zDEjUSra5qQZC1Yt05ozguV76+EivJMm0//RqFmJRTW+5btZHdFz3/KceSvLh/cEX8mNjidoafSk6pCLASmvbda+7trZI0vDS2Hh1h2uRojwMqkCOF36B9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776973654; c=relaxed/simple;
	bh=dPfIFoG5WfY4VRN9cKjjFl8Jas0W861QhDYQduCs9lw=;
	h=To:Subject:From:Message-Id:Date; b=DE3dW7HJuWdqOv1KumVCkERw0ZSFExCHo2qdbUvgNtZmI3HSWDsZ9m49Qam/UInISk2MXeUPtolFzLQdjC9FvbyFTFTH3+TYmbuO9/E1UxOfddJk2qM875tNDBVFxNa/wvp3rFdoTj05apTJttE7lDEJdpk/JwNt/m8Q4wgDGR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wep1L5d6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wep1L5d6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0806C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776973653;
	bh=dPfIFoG5WfY4VRN9cKjjFl8Jas0W861QhDYQduCs9lw=;
	h=To:Subject:From:Date:From;
	b=Wep1L5d6J/gTAC/qK0KUdQ9uqN45rnONYQ4tZaNA7axN+f+ugd1/JzzzRptKp5dZF
	 bqsFC4l+cmg1wRfK5E6UOyVFH0yF1mGNWbCxXhahK7J44VM4UPo6r7skZW4iWRX2cl
	 5QSsTLMd9C3XxZ81temEzn16AJIu0jr0b0n7fdRGHy/7+B6dsbcIBBLrzt0XQyvOvJ
	 7xfmcK1PYjMcUwrTDeKCSIh2tk/0HSOS8COBAbSRzLmgldHr7D92KTt0c5HyPyFVwU
	 Na06gr2FMGicV+Y1YZJDTmTr2W6U/S1CSt8EOAhH3UuEirMZDv2L0seN1BqjZhynZs
	 Z1sflbZ6cjOXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE61FDEE45
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697365368.10532.8171967278503626717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25a8a48f9f2e52e81b5f1a4769273b27f500faf4523c7b51a524e18da80e16f
Date: Thu, 23 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776973653
