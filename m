Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1793AF665
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775562934; cv=none; b=MBcXq7Bm7xE7U9r3W981HPcI4GsOYv9njCpJd2osQzxaLgbr7OD3OnM/85NSrv5nchD2c6tBqmuOV8BE5LvRmxLyyGzlCd6kaO/Lvyxzz3ZL3Q3dqJbIdcpPw1rnyvJLl8uUqZTo092TfayEh2Mg/9RTaAfTgItwAbG9JZYjKzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775562934; c=relaxed/simple;
	bh=G+oLT1YYeDMYPecgrXLrm8eQpe4CKupoWeGVzNVNoc0=;
	h=To:Subject:From:Message-Id:Date; b=Aq7rUh2M1kCNG6UxEnsaBy6QPiEEpO7q2P+SFwkrl1j/6YKaCTlwlKC4+HP7KQ1RhZn35AdIdCQlVeqXnaqZGhWsREpXXRsdGq5jl69J5+1oX+PVXdExvkUtRCWJR2Wct2Pi/jtm5QHYlZFvRrSmCIt0f8GYoyOP2T7gMrtxxCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=am2M709Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="am2M709Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0ADC19421
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775562933;
	bh=G+oLT1YYeDMYPecgrXLrm8eQpe4CKupoWeGVzNVNoc0=;
	h=To:Subject:From:Date:From;
	b=am2M709Y7AvKU1HlvEtgFB5RfklBCZAMdow/yV0eGF3w8EhGmlXbhdADPYOPPn4t2
	 jHisi2zMCT19QeiBn2EswEIyuSDSqaaNZ4KFWEU9Wt3RGcVULGMv9Hhgb/Lok62QD3
	 VGdzmjfqhjBRP0Ykz180wEckGx2xsOyQCVXwfZvLRGBIzm5Rf63pHAh0yBcpjBWrUe
	 2D7BialTCDZSm4kx8y6DdmRC7wcwze75f//QSGHKqyvPLUwEOqirP6rIKnegx4JXnP
	 U0uCSECp4Qyn7UO1oMkfI4i/UF0pfIsgDXKHFxMzZNy8nmkPdfI+GvRbwDT7kyjse7
	 d9tyiHKmgHYzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8CCFEEF2A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177556293370.9268.7586051943558001634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c12464f6cb136b698d57fba96a8ca3007c4a857ab369676e15b4d02db1e9ea
Date: Tue, 07 Apr 2026 11:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775562933
