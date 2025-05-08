Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C183922422D
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746721193; cv=none; b=WAYJqt8a+z2HMJnQL5nDxQOq2AUadvbjKhbp0pVujRwrcYakxKMKDnF0ABX/KZcSyr2h3mKOgPPoxQe8I2QgV3RlY4LZLIFxP2sWCfgwE8CSWeFd2ldFG5/yBJ9Do0DW81pFuWF3SdjqXsshu3CEBM0zIWSxnpyD7rjezQjT6Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746721193; c=relaxed/simple;
	bh=meuPPVN0Q1YRGlYzUCuZtLy8aSdTLGtUQrY5tf2mLnU=;
	h=To:Subject:From:Message-Id:Date; b=EuO8YKKcuwW6CaJS/sHjyLrrBzYF7XnM4dl1R+xY98SuWweHf9SUJjKqVaSWf1UiHjocK4PuFNDnFOPir51nE0+Gq301E1uX3Wkl15oPuD0q3oxu3g/FEaZb8jFCwPTTiIW4sDLqSv5lP2dENPjQEW6TYT0ifGCdCnHiUhixtew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YC2X+ln6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YC2X+ln6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BC7C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746721193;
	bh=meuPPVN0Q1YRGlYzUCuZtLy8aSdTLGtUQrY5tf2mLnU=;
	h=To:Subject:From:Date:From;
	b=YC2X+ln6y+YMerbiLFWZ4ehMprdwRcjE84Am6S26pa2OnKdvRx8HufFZHO3lwFF4X
	 C/0+x/qK39sCjBhfDmCQjTqxGug2kK5BgqxlX0BG8R4w8x2+MBpBRL2UoeIEhF2V3h
	 FWg+OPJsuSa0y2gIBqPBMBltwGQPCtl7XImbEEQxD6rJBD9AWGrtOuF+AJpoRzSa39
	 17WKnfpd+yWzNBSkXy/85sIV70Uq4fY0dYvvhexhOI9K/RYu03q8N83m8+i6wr3Dvv
	 O95rb1cBCNzVxHjk0ZzGUEDSS5dmIsUfBxKMeYM8K+vz8weK75WiI5Z2JE6Ty2mgiw
	 MMm1NA3gT5KLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE3AC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174672119358.21184.11537018032662594546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3b0b7f821e2dde2b8acc09eaa0eec68505b3450723f1890f50d4f9b987cf88
Date: Thu, 08 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746721193
