Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267BC153BF6
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730446554; cv=none; b=E5Rg455ENgQOeTVsgwXt/5xzYJGMBblgXt7vHAmtAF7zd/OrQVKAzm/fkCTo8BaENivSVDr8phAuAv0BSL9MSjQ93z0U3sPzRMppWJ7I2Kjy4RIiVLSo4Fbz9fgBJJo8fHd13Uc4H9rhYV0/cfuZRPXIlmcvduylWyITL8cogV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730446554; c=relaxed/simple;
	bh=nfCXBRlTNaOW35dr9f767Q9ael7SOnJeNlbjdf1TNXU=;
	h=To:Subject:From:Message-Id:Date; b=DfVe82nc7n2rEVufSIY3plElXOmdpCdfKcwgJbfOp2jg3m8BiDFoZqKbwXm/2HFwqBPt3ASoxx5Vd1pbda6C40k9t36mgXvmbyQKCKChi+FmU8g8hid+2ZaDIRDWbGVqzw+VPd2vbaTf7SZRNOc1T/yvDRCkMO5HCHOkUCEs/HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlFCprC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlFCprC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36DDC4CECF
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730446553;
	bh=nfCXBRlTNaOW35dr9f767Q9ael7SOnJeNlbjdf1TNXU=;
	h=To:Subject:From:Date:From;
	b=WlFCprC0AsrvF3do7BC1aWqrN24pJgpn57ZtNHXbU+fNcDEyWxXdebANHDQ8WVbXe
	 gd/y2y2sfDPpSQTkd1O5otsjDEBDGKjjE4ih5DUHbPYssqmRBH4U5kVmBGU1tU1BOP
	 JNegdELEqZJDmZ8nFvc9wQXEa5QR5TNSrABxQDXUvD0kq3WWH8FwP/grn91GeovlnG
	 n24mkbnQPK313bZC7r9GZPQ9IrTvcbGTZW5T038nzN/rdDvkr4Fuw+7YAonk1oewJW
	 BYC1Zr5wV11Qs4gAKq3tsjzebIatorS1w3e0dPsbW2yFUYzRrHVuY+XvikRXhTva14
	 WA1heiYECGDYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FADE674AB
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173044655364.17827.10301633323104074443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b101bc02af3fbaea478b1427e2f47aa7fda320bbba4b5c97432319ed4fc4ab50
Date: Fri, 01 Nov 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730446553
