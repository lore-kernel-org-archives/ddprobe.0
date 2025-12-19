Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBAC2DC793
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766127834; cv=none; b=roxWTILsgCH+lZRH2GLWottn3FMBkFOGrqcP7K+0aZxYjR9h5UUX59TZbsBtS0P1P74M7nBSaKueOJMBKzaV1imN458/o+O8NLNnE9HsSUFjlhd4hi/QegK/4lA3cz8Jm0gxTelDR2Wo4Q3gfbJPahmMTIRbXKWHGM01EOnKEZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766127834; c=relaxed/simple;
	bh=dyWZdbkNk7De1KtX2hsSFJzVLrJa0R7R3RSFI+ubIgQ=;
	h=To:Subject:From:Message-Id:Date; b=uzQQUCT+02X462hQnrnPz2gFxDLHBGl5n11mEVFlI67KrSZxRQyoFiW0LVj2+qaGKHPKKEjCL1Vw+JL1VOwhE6akmzDdvB95aA4RWLLrVpbiYCjE0i0g1/gk2y88ugLgJVAwtO9JerL1d1eSqhcuTu6hjx8oMLn8ZF2aSHZMYyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDylVmKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDylVmKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A179FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766127833;
	bh=dyWZdbkNk7De1KtX2hsSFJzVLrJa0R7R3RSFI+ubIgQ=;
	h=To:Subject:From:Date:From;
	b=tDylVmKp3tqnpO+oCIjM6v9DtgT/Ptf23/ES3LX1iSyl2kOpVuL6yOx9o0ssqeVV6
	 DkvRBQoyZxFa+vXTP2HakvtAVTyVm+omgMS7CDvO3DWNjArdVb072ZhwVO/ltS6kdr
	 7xmhmw5+p0+Hv4iBKsHCmQLzM9qDjHBlKFhj4Gr6BDYvknkjfIO2ydzmO1Y4bbFN3L
	 qF+WMJv/E9Q1G3RbyTejHJB4HNGP8NhvmcNwfmlwpH8Om+Eg+TvrRh9NP4TRk2Eac9
	 Ua5SMwhco4DGazzZRZnolVY3ee7ov3M2JhfJifxRasp0NY9H3bxqg/4+bdVsafiypA
	 G3j0CM7osXXLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8B6D74961
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176612783357.7967.11153014213664134493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303e2f1d0d955f424140b9c84f287b62c072144db2d632fbabbcd310bd8b0193
Date: Fri, 19 Dec 2025 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766127833
