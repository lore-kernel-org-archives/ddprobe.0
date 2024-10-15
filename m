Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F00B231C88
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728953154; cv=none; b=LviMEGLYSGzxP+U1Ubnf3Mbuius0jM0P2zFfbRRNHsfhNn3v3PG60FT5mHTXwsHK5hs5NXlLoPHK7eXxiUk9UEHu872VCR/uViLxpb2P4lKN75/xpnCGQEV4xXmDfm5hcscVakWDLHRSQuAgM6/QIGG+gAwEMu55pIFhYf8pSUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728953154; c=relaxed/simple;
	bh=jBvndVSBHa3zr/iILJeaNND6+UyiV1bn83pnSZipUls=;
	h=To:Subject:From:Message-Id:Date; b=YkHjqsp4NintgEg+5htFI4aKSVsOkGNb3oDQ4u2H72UZt6czrqEtcmNHcbwIfZwP7AGcmACsBcS6J7EvG4im6X+2ych0n9aqUPC9F5i5hcwyADQl1kVYq4bI82hP0Tw67ZD4G1FUdroFxET4Gg0idbPjmj+/XPvw+btKIO7b8qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e825SvgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e825SvgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B73C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728953153;
	bh=jBvndVSBHa3zr/iILJeaNND6+UyiV1bn83pnSZipUls=;
	h=To:Subject:From:Date:From;
	b=e825SvgR84dhUj7XzyEYJKRPa/wdBqNTd8FP7veaYhGc/CSK8HhA11/aMNNc3jIRu
	 Wpg434WtUS5+fdmYi8bdokztKm5ersdfcRU0MWhZoUFGBlaEuILPrLmjlPYEk4MgfQ
	 8ZS009R7efK0+bP/cbBqKY9kfQ5/4S5E/wJS0DMP6TkTsW+RKAz1Zr0yIL57zc92X8
	 Ku5A8p9yFZhWIFhYIdSOlJeqrK+3U9WlV0mqHrvaHMrfZ/0eb40LjzwQOWHxDk1Q9u
	 6NrIOKT0JBt58DctwqhVHPi2/+ueUVK9spy0Dlg5dFYufRYURr5pQp4b77/D8DYvek
	 6+3akhLErmw+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956BFCFC501
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172895315360.29083.16269060503837648123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ebd95fec980059e1e02262de004dd687b284901dca6398eac65634be16a00f7
Date: Tue, 15 Oct 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728953153
