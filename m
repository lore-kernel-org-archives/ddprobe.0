Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4128D18A6DB
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776634054; cv=none; b=NsNmNUMukrbwOLMVi/PiMxUJRKU49f4sDcTpU3TGwdf2qeESE87Jpbg10KTXLU0EH1kEQdmqJN9iW487j9xy2g7E0kpdp+2n9ojOcR0YjW+/Hz7hPNaZIdpxJposktYq1HgwwCsTzv+RkciYzocs05Nk8Zb3SSveNvoZe0VnVHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776634054; c=relaxed/simple;
	bh=ECmBB1eVP+Di3v+0xmn0OyAD0vuHII2NRpaEzNg4u2Y=;
	h=To:Subject:From:Message-Id:Date; b=ozqFp/p6Flk3o8cUNxapPelVCZGdP4p5mnXMghZXfZzEA8sGUmlhDPYNfrJc3+YIMQAtSSzIYVDzLp3KFZrMoxLI3f8gJfm9VtG4zZDFLdoc2Kc4w0fmioXRJpYdTiVmll0NdUmZAvB8qf5loRHqDvRlELafvYa+Y6a0ALMMDuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEnxyTlH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEnxyTlH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C818BC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776634053;
	bh=ECmBB1eVP+Di3v+0xmn0OyAD0vuHII2NRpaEzNg4u2Y=;
	h=To:Subject:From:Date:From;
	b=gEnxyTlHkO8cIO9cl3I2o8tZN/d2+ncLNmLLCfzgdPauqCgDEgiRWB1GSL4mtVTHk
	 75yWQ7X1KBTEOkR0TYAfWV6fND+geRxR73QRJdr0i+mNwGvMvwiTHQmI4tLk3x+oxM
	 WKCKNcimHQfwYjUPpTDWjVkCxzwqhane8g/pM3neZdH+jut9cyHcxw4XlD6Tbu7nQb
	 +rn0oIkrYu7lXjJVSht/xCANXrGqrfScAgYBT48QiKcy/jBnvfrO4alRl+Y3ufD49z
	 pSaJBPBQYBA1nu2GuhZ8FC33XDjvMU/NzUR8R1l5irAMX2llmFPS45R6TChoTx69nz
	 OEFW62i2OjEoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF361EA71A1
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177663405369.1098.9897484697405877246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f3840e4425bfe108e94f25cc33c5984ccb24d8df80d8bc35ef619bae691caec
Date: Sun, 19 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776634053
