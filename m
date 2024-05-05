Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4182317CD
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 03:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714881143; cv=none; b=l8V05tBSVmPav/zK/KOmWHmkJK010/gVqvSuXMi3PaG7lpkl17ReVBjUQqy3LRfZrzIUgEEv4SEAOgOcwz5ibJZ6PPzUzesTRHdobj0bqsHOlUj7KCugzCG0+i5fEYHjBkk9Cj0Y9TsAKwVhyuypKHgoFOyRMgRpMGMlOzH7C7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714881143; c=relaxed/simple;
	bh=VLRhKIGBzY1XtHS53gUtgO5++HlnA4nVcCWRLfmk+6c=;
	h=To:Subject:From:Message-Id:Date; b=a7O0O4x9GPBtz51aJMqxlFX2xTKzHmpPsCnyfPnXU3DlDGmg29v925L5Suz4N/4lCEf8hDH+pCrSgcQZlyiZU0eJPlhl0vxBq8YoAJjC3hy1RtEoOyo3Lq7FEvxsMg4uMxJVS0HPkYwhfeYs+ILdGDpdLnJHsqrCjhojH29p3SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzPINnbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzPINnbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D854BC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714881142;
	bh=VLRhKIGBzY1XtHS53gUtgO5++HlnA4nVcCWRLfmk+6c=;
	h=To:Subject:From:Date:From;
	b=NzPINnbVlBnp0SDKn1nyljudh3sfLJ1fXB9TQpqJv4jxCOV8/HZWFE2lveTr+su7q
	 LcAXggaDWMt5cMQ+OEsaiWIkUqyvj7FPFG1Sj8CXXtHwpGzE/DP4HPz4Q0+cNPGgeU
	 L/y46ausT1TS670VZPRQCDl2L/vS1jLhGemGKUdCAcVxqeTwJWmCmHcq38w0a1nbkZ
	 ebKiw3J9w74v6+IuTFHij5t2y57rnU2+8CCKMf7hgy4mkta1Xa/v00rdshwULQBQuK
	 NGHzgRMtt5IbG+Ed0vmpHLd+hVYukWqnyZUMX29VSN/gwd54Eizct6/2hOQDBVq7gL
	 ZdwPTA9Ug3prg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3999C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171488114276.29702.8867265588468477104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0a0375d6996123b966f2807f03b022df59d366c6284a86c20dbf45e99c0d5c
Date: Sun, 05 May 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714881142
