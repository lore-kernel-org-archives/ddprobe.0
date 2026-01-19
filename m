Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB29A7260A
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768862634; cv=none; b=KrGmQ2BoFEzmzXL5dC2kGJC9PKCAnoQ/Bz80+uG3f/dyg4kEPwmtwHC3rv0Kok8AiMT2ukPhXKeRTngzkQdS8zpYUBw2mA5I9O1L8s/yx6VmBeDDZ5nQFwiDa6QJAKN2mMU3nwsKpqPV3CI0hOJjepYAJboIWh3DrEYPN/jwVt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768862634; c=relaxed/simple;
	bh=XnmC1ByloNrwDYXMtK6t/RKsx75u6qL9xNb2bPmfLAs=;
	h=To:Subject:From:Message-Id:Date; b=r3nAcnQ0gxXSCb5Mjqm1lfxVVnxpTPP+zKFXrG0FHUdHR+rcIk0JJGiwEcAvTAhYiyIDfN9+2KN5pE2VfB7QTq+huuqW8s4B5zJNXRYDC6hJDd7uqahBdPgR8kh695PUXnrwfYOKbM3f84H2hCvYO+WCRISD/AGME9LUC3uYRw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSPq8I/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSPq8I/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED7AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768862633;
	bh=XnmC1ByloNrwDYXMtK6t/RKsx75u6qL9xNb2bPmfLAs=;
	h=To:Subject:From:Date:From;
	b=lSPq8I/zgvWQcMug1DxtIHdcRAl8XYuS3s+q68OrOLD+7OL4iqFzYehgaxzFxV7lH
	 KlL70czu97SXI19+/SU/+dVjZ0MrrBb+6/527Uw7+Lf/24hXDUaeEQVnOUSNPTn+Ia
	 5hsIiCamZuH9Kp72Z3wv1Nk+UTjePDQmhsfW7FiijsjqLlzaDk8fgsBzfAaLatE3vq
	 G+QfGO6JmCKAJTQi21pHAriDW1xRM88c7q9Do11HOCUMzhkB2gF5UFb6iS8OuxLos2
	 ekSpenUHV1Yd5FBAvb8QRX9A/XwPlAs2nnB4dvDBxnJ1/TEACgPuEMp8LqDx8XAdw+
	 mAaItDuPeyvXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9075BD2ECEF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886263358.24427.7177202726576141623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be19fb8d287de5a663272f39f2c8678be9a3dd902e416042ef2ebfdbb9a7711
Date: Mon, 19 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768862633
