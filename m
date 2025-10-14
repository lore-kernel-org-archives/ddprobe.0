Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B471C1F02
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760446194; cv=none; b=Ue9T3fwSzYiE6glIDSlpNDq5Hd+CuZbkSWL8J8ft5djyk/S4NTTeisgUW7JQSG/B/HDQ+IzqZLI/thPDFPtaiBgIAFnNDV46hegQIzRJDRhd0huYSMD3bmO5khO8Kc7imKe1Z+3zwzPgBcRvXI97EckvwcqP5h7Ry+SIBjQl5jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760446194; c=relaxed/simple;
	bh=QWDtZO2RZOpswxpSGEkmB302YVhRCk3Y8d8vH60E4KQ=;
	h=To:Subject:From:Message-Id:Date; b=LULfeIpBegyOpVbx0OmEHEFx3bFCi3aQUdk7letZqCK/fqIPhJXO/pEu4eWhfEgZEP4Lw2DyTBPSySAPEDvXsI+CAsMUCsG82QTqS4YiWLpKSHhQh6Rdv+MkBDnmeAoH6LMeJt5GZK5SdXnggzEvAHtGS1wByTE3dAIqfcZM7Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1kD0WTF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1kD0WTF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF2CC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760446193;
	bh=QWDtZO2RZOpswxpSGEkmB302YVhRCk3Y8d8vH60E4KQ=;
	h=To:Subject:From:Date:From;
	b=m1kD0WTFGK1P7AGw6uYnFX2HN/MeRKOmNJ2Uj8wiAiyO6TbJOMKqlyewA+3+irj1N
	 YAh6/4ICyapeVVzpfawH2OEGL1Dk9e6JwPE3xi1NBnQc8d74VqB4Z25qydgq1bF3pj
	 qHRNckNr31CQG1X3BLJnnaKpfxP4Vct4BvKnyYqgTkZyfh4ahNtiAI5w5i5UFTLciz
	 t8rpdbUz72dcgcPAO2O0yB9tVkNXwcJRIQZZqLnXv5PCA2LNMB2vb3W6Niy5Pyku+z
	 bqLrn1fuOHJ0CzkUglXLH0CZHmWcv/TI+O4MUnZNbO3s+bdHFVCAkRfSnlMlPrIi4r
	 5FwEbgfHTheCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9207ECCD18D
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044619358.17717.8118943490814551446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41081ec98e677452e6895e25d67dc89ca9d884c56ebdd217313ca5a7c293440c
Date: Tue, 14 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760446193
