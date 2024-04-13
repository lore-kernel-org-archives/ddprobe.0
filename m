Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C0A10957
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 14:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713019763; cv=none; b=RFrj3e99EiY4YYXoyZhqZ4fz+rU7Cp4Uh/ixg2WY+Xkx8XkZj3s8dFfBEvs8wPFNXDUko1MFd0pbU+Z0GCwy7tAwTTK5uOj679er1VDmpPAxc7lqZO/oEBbYU9fUMFBdChz0JUn3yduTfDXt1twWcPhp165gRrRyAB8O4Ubfltk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713019763; c=relaxed/simple;
	bh=q8r+9dA4x8e32sv+ILWhe6JUWSQh2qHmcqRq81fFbms=;
	h=To:Subject:From:Message-Id:Date; b=usx3sr3RDyVZ8H4hbl1j9WUlmqENISHhrjsgYRtojxCHdRMFVw2X5P1THgEsJyqKinepbLdCJS96NEQgczSPtpexTYZyFolLjGaKPdzSGBDaOrcPVo0w+9nqiFrt1V6zg6E0vpw1Ci8z1FtOP9BsGXa5I7wXWUBmi081uLnJgZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdtf4yoU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdtf4yoU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C453EC113CE
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 14:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713019762;
	bh=q8r+9dA4x8e32sv+ILWhe6JUWSQh2qHmcqRq81fFbms=;
	h=To:Subject:From:Date:From;
	b=gdtf4yoU7ZRuQ9mfbEfiWrRTryKqipZbGhG5aVdL0PWaPKGSTORd1Np6ptKzYKWEs
	 OI4Q97PqPSOLnaQIs+tuZg2nf/nqV5BmFhy0vQ0yS6KEh4hZbJeaV5VxyGL/ldojh7
	 kxIA0yW0NJiZaRsqxr1G3LWYxKhJ+naTrOi9j72VOk0T+uTKMnltZQGjSZzhbl8A4F
	 +F4O+ErN1hQzs48G4F8aHWl4g3vK8guRFRa3+16bVeN/HnlR7LgHw0gfHopttO6EV4
	 Ox68gLP8QAcZwf2tP2rHely9cXMWePxpBKz+5f0aIr4QGV9eL2+LJ4NzCEGGdeSK8O
	 TfCb8cerN+TIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA69CC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 14:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171301976275.26038.6657523582553538097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c72ecf10efeee624c9d4b777c1f183877e7117c589838045f0183384e807deb
Date: Sat, 13 Apr 2024 14:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713019762
