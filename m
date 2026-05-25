Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4982A632
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779676354; cv=none; b=OJhHvqb02Vtdl31oLjkRR8fKNg9d/haIXmGkOgfsqzNcPHrWT90BJLdeOLr/cwjNoANCc69Zy8F9TncWJj4KZcgrhq3zECIq3Mb5XhDpWO3RsSYxyI6OpEDUO2x29gOrgI/L9KsAUwEFNBU2Fs0SAwrndbMZ+LZf5PTdd0trP/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779676354; c=relaxed/simple;
	bh=GYcM3m4h8Y3EykiqmtQSiVrgWELTWAQB8o7Xg7mPHok=;
	h=To:Subject:From:Message-Id:Date; b=C0CJPUg1ES5jyN+QE9gtBlYxryESEM8DvNLKHFeSBrWRXLIMLRLKiaKOdf4U8nunFI06Y2Ib8AWKWXdFCapqJkQC0+EigHLHk7+ToHwnW64OvTJmZkkUijLKvjvTN3VgMeEEfpWCC1Ovj6UgTsruhk/UY4oiKbtAbDjLDxNDxco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHB/3LVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHB/3LVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8AAC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779676353;
	bh=GYcM3m4h8Y3EykiqmtQSiVrgWELTWAQB8o7Xg7mPHok=;
	h=To:Subject:From:Date:From;
	b=UHB/3LVAiPvAQnObi5WhS3X057oXTDuBFzT1bcxPVL/h1QnhzezXIXLwxSTGKU+iQ
	 b4wXFODlGHjYLR1RMaIG6jDW8rN5FXjviEHtLk+qM5XRxtPosT+HwwTssNqTHEo52J
	 VAdbqpPw8pfUEM3Hjv6Ndvg2nUOo+wqUY4EjebdiAHL3oHcNmnyYeoLjilvw3Z/Zpg
	 EpWxHO4MLf7017gybV24uuvOnAOZYrSkJYIJsl7XkObyMLlPZp3mXSWjGHmudLGkO8
	 GhWABZZX4/xQbPiWUbHo4LzU6mC2mSaqu4c+/6hOvqtHbCkHm/0Zsm/T/gkG8JtxfZ
	 H4XTlc2s8S89g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F18CD4F54
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967635373.16509.6385839709191053065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a3ddb0afbf8a48f0b244ba659a23951b134086e4d54de9dd897ab9df6fe8b9
Date: Mon, 25 May 2026 02:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779676353
