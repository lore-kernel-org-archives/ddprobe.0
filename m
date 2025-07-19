Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B4C2E36ED
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752896394; cv=none; b=Kr3+bG88y30c7hb+z20O5iweWX+Zys7ktrk2JA8ol7X/mBhsqXIJ4wfuQJfdCO+Fb7cZhjq2MzAR34VIWnhvbsCUF2fGFJRfnRVHOAtYGb9w/lG3kXOMjU3bOtOxppmdfTdlyNH5nM+63/03NGvyIRpAsy6J2HWfp2al05HjPn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752896394; c=relaxed/simple;
	bh=l52zceqp/64xFrauwF9mp1McUNVBIhviOoXNmVUPsFQ=;
	h=To:Subject:From:Message-Id:Date; b=OBc+w5DRQQUiEpJ0qJQA5YjuaF5CzIeyzkIknVF2hJu7tMP03/L8MA0suEQTWWhQXJjpmgi2oxoCznX0GLhxOBZ2IKTEVStvlEnlEZy++ovXIhGcpXboTDy7DWiMHF4rss/zM/3xXOp0uXgSz7Dv+aoCBU+1KyidGlpkaWXQnyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dqf2/Q45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dqf2/Q45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A767AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752896393;
	bh=l52zceqp/64xFrauwF9mp1McUNVBIhviOoXNmVUPsFQ=;
	h=To:Subject:From:Date:From;
	b=Dqf2/Q45+DDxlai78nw046XHhXrdW0pVE5/WEq2BqSjThNk6tHtn61/HRx3PhyelZ
	 n6tMRIoYBhwChM2aRA8LjypxdbNYN5Ah1Qf9vVS7jzRRWTXPzTmPeahD0EvJxTSOYj
	 1yvjJ3CzZHyHduRZjsPUUpL4YO091H99ORRnqw5VVf//bgQpwlMpf4YZkvcT1fRiXJ
	 RTCVMXSB2MXuujgql1h/Wv2jgneAkZfGUSfOieoqE0KaELNnBOzuBMGD81YkjL+Tp+
	 kzHwGsJWD+5cRtnk4Q/I8t1RChiDWgtYePaeMvNrEGupz6iEvU8D4FMsl9fDleW0nc
	 IpS0w4wwB6U1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C28C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289639357.27447.12332508985440426486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 327c369f71fe8816f695a51d46b9d89c0a12eeaf28861ea34a77bff31d68976c
Date: Sat, 19 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752896393
