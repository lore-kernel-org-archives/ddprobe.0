Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379C226AA91
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767333834; cv=none; b=XoX0hz8KC3TFjImsIfDyuToi7bgavlh/Ubf758TNMjwAehTvpH1DF8661qGAL7rftlPhjUztDFSxLtCDgt6xNqqEzmAWQh5jny7FjSHLt4y/cXOkA8ibCpDXUkeMm2bEHf11X7bq/xESiSGhlN+68bl7aG1CFiz/cHE49EEo3GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767333834; c=relaxed/simple;
	bh=SSxZMZ2+jV1HdE/U6xvUZ+uhfkS6hkLmAyDAiGFt9gA=;
	h=To:Subject:From:Message-Id:Date; b=jgzYLEqmqGazsAZhk4shMmUMQc2f9biZewkCfjiKFk5M7rzHd9kHtxCNG3x7p4yzKexN/L6PKM+sOrS/HUil/KBPbI+84fnQaVOkBIG5YawyXVHIlwxNZ/qlDU3AkrTx8xG+Ju/999J9E0wl8dLlZexCYTVIuAIXqHPpTKkjbOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNNl52No; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNNl52No"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0824C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767333833;
	bh=SSxZMZ2+jV1HdE/U6xvUZ+uhfkS6hkLmAyDAiGFt9gA=;
	h=To:Subject:From:Date:From;
	b=tNNl52NoD3429h+w9eKa/aKp4PFPk256gPp2Juyaz/q0W5tqqIHkfcV2BZGL1pX4e
	 ZxI8niL18wyHs4YsV5DDX+FX2zhYdHkamuU2UdEvddmuswYui9l4oTUt4oBUVNBbCA
	 SOX3zC9FzqmonEDc3lggv+BhVFxYkevSJsv0QR8p/3H/+5OKKs/hraOMltpd2+UtUa
	 iEgeflPTDUa9/dbAgXsaXQGGO/BKF4L+06/MHmjAwoMgEwhTn3ERC2f4zBqbjX09kE
	 iG3dg3CIwhjdgdTuYwIY7zCKGUO90zWjqxFk48oeJ8Q0WVtt+aq/KI1Nscm/K9yC0O
	 /hzdChvq5ZP9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C370EEE265
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733383362.11873.13440534519705292123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd5a8352977d65b98660e2c6277ad7b0249762c03f4452f043deaabd75d55e2
Date: Fri, 02 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767333833
