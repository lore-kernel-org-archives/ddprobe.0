Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81B1327BFC
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778195253; cv=none; b=FTSB5j1MzogT+MTKl1nwHJU/ZoVQd++ixgHTJ1BUtSaL+K1PK5LcPiUx8aLKZ/D0LA2m7kD4sT5ns1FPRUvy+CgvmB0/pUK3Sa5XNbvYKYyyIz5ap+3R5DvCshQR+C5zGO0ND2FiRZ0tS/XVhgBd/mK7DMVUdSkIAyTrJoKplVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778195253; c=relaxed/simple;
	bh=4cLrSfTQH88OsktkW2GSsFL79m8oJLP50gg4ikMUdeA=;
	h=To:Subject:From:Message-Id:Date; b=Wl86VrhpUMxD5a7QpvMpKSuY27dlDn7CpkS/MNKXoNHy4nAqb9bNyARxU47W+kPYE+aqy8hs2wnkt1388UmRExSLKjMUgmQl/ndtKuZbrPT9xUP2AYcRt/ZlZXxwzoZX9uwjyyCmxqHt2sCk9e4juyrk06BAoVDFlLY0ad14hPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qv8X4VDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qv8X4VDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98B1C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778195253;
	bh=4cLrSfTQH88OsktkW2GSsFL79m8oJLP50gg4ikMUdeA=;
	h=To:Subject:From:Date:From;
	b=qv8X4VDJQ2StBofk5aSmaEpqcoc7LRpTgIzU8stUMXTk/7SDBN7zyxmW/5/CFeDju
	 QA5CH1o5AJPx+5akT7uqYZNHrptHTLLEYGEA5regct7I4jkJf2ihqGtYZ+PD3max5p
	 26oyArwjA/CiyIUsFrEtcDaXPNpIVuzMlT3LM8qm40PFKdD6jY4l+B0YDfJJIYizGM
	 H5TTdT3sDHIHXRHuYFe4DmSUdYWkeMHV/NVyrGgGCS0q347UWU/g87Gr77KNPEksC2
	 vJcPZKhaBLFbTSOYdXbcZMZ4/2DpVQCLOWVF5v1ZR9NvvX1RrnlefL9B/bTUeVnhBS
	 WMY/ZMTU1VfjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA089CD3445
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177819525368.30145.11966147313861126464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c01971cec37a7f0580d1a59b48af7871417c178f8964fcdde5f6032135735c
Date: Thu, 07 May 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778195253
