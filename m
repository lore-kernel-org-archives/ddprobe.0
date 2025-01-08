Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2708C19EEBF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736376354; cv=none; b=WhjUwM+6AgVSanTqzkkAly9TQcgOPzzL4ZAFe0aO2v7q2atPBFwRS9u0Pt61E4nHv/tbKsTs8NP95Q+AsXXOkPdvTDdIPW7VYblgzPXT5wdLeh9qUkeJpE8ZiyWCZz5qXvnKNspOMA77D5DWC9Al6A+88k8wPkP2kbGAeG1egy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736376354; c=relaxed/simple;
	bh=xJkYPBCDULs8KN/iiS+5nV1Y+/XCXE0js68ZzQKsb/I=;
	h=To:Subject:From:Message-Id:Date; b=eYNlyMy159afADjR2zDLIRKMgRc5JSf8I5cbsp8V0mzwmh3IjsPyvwWEr/ir71qMMqD6SVXcPhpwWcLzXNtWx164ZauTdfsXRfJyKRbL2oUpy73xybGAYlU3vnsiFK8yENrOHv8MVWk8S34IQwWQC7QGP5dXMAi9ILtS+afAspc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beq68vJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beq68vJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A24C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736376353;
	bh=xJkYPBCDULs8KN/iiS+5nV1Y+/XCXE0js68ZzQKsb/I=;
	h=To:Subject:From:Date:From;
	b=beq68vJUdAzz6bJBX5OfH0JirofSag3omMD4six/bn+HlDd0F+XEZFWizHmb7e66Z
	 5eP6eY2BwqGuthJhh0jdjzXN7RXg/Df/avYzvtz2T015Qgrs1ZnR34gMJeZB3gwtzd
	 rY51XOuQKf6nlUEe3r+Qz9APdLPk4xPjtEJLT37Xw5gCu4EctiPahyrFQPpGCKu3/S
	 8hliEh+YRXX80X0sVYw2v9ChkTA68PCEMr+xP3WyZzwF/6I42fgflbcgP3988WkFmn
	 M1xNRC8+dTAL1oh5jrUJoJ11RnTgiEF//2YN46jjfc3clov8CHt0ibKadfpMPK8YO0
	 20n+YAIT+fM3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D72E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173637635358.4320.13443236116528798437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff3eeca1adcbcb42cea7fd820e8dfb4c6d159ada3b3327694809a4b2cee8fb5
Date: Wed, 08 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736376353
