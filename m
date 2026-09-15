Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A42B445DF77
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789456834; cv=none; b=lQWfDcQa63HiY1vQfrWKSFVI5nUwwL1dh8wNYnz6H2588bIxY+aUl6tL1eLGVd53fMU5ogrgB1DaadgjzeiBBytsj5CykzV7MChZp1idbGsnx4xFKHVaR1Y6eVDkkCzmAXAOgA4k+jnOk7hK4b8uu+KkbSv9Jc+F8L+rQlHO3/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789456834; c=relaxed/simple;
	bh=ItxFuWNm3cDDLe9/hEyCjaEZiaV/fyg4M6iIJ2Fmp7w=;
	h=To:Subject:From:Message-Id:Date; b=W6R2Odvcnk5wiESId84+oHk21P98gr5P8wuuBfbCQnG5n0QyRheXA7CtvDxhCuVew7XVDTKwF1shOufGj/Aub8XDJQIG+ik8nIinZa9poFt9/pbq8fGz55b9V3K4BZ3Ue0//u1WUfwcrYMtl6type9G0EbS3CSVerTik9IHYTxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4/pqXPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4/pqXPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD7BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789456833;
	bh=ItxFuWNm3cDDLe9/hEyCjaEZiaV/fyg4M6iIJ2Fmp7w=;
	h=To:Subject:From:Date:From;
	b=A4/pqXPkZcOD2x24W42K/eM145IclyzDo+v5HGZyaGM4EhK0GSBd3jMt+J5Zf3dPZ
	 No1xqM2n0m6t8YpzNy16XZ8L/kNgSSfe1gTQLWoqvBQr1xFzx1+pEhGNmZgfNnab+D
	 TywdFRZkTIl1YrrKkq2urjF17SIo2ZDUolbJqUjoYIAedlg6GIltG35oQifeMUNQzL
	 DUX5bkTuQGlkR/8oTqOlX31G8bvw+acMBdtCBNjqo5ErafN0oXbFRgjhRmNR4aKMX5
	 RX1T8rYXig7Kb5tLnXlsNB4YkpQtaDGZQVx80PA4pPNCCxUDhrNXJBKdvHSsrsBpyF
	 Ip8QS2klOp4nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA32C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945683369.14377.14642106026470878042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c323f47b6f066252d63cd708dee5047ed70c0c9a6a6975c3f0b0f27b4609cbf0
Date: Tue, 15 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789456833
