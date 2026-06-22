Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B632BEC4E
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782156994; cv=none; b=MovjRZ/vJWgbrmPP/DW+Ir4/WV7SDptwhy7R9Uq6sqfw7cJC31KZB28pFHNzKTCK7Dwin9BiZmD9lVdgSWH6SstDn5VDuYUjtpU3McHzD3+LO10p28wzbwI/Dg/SgnzZebCSbvZxssc0Lz4mv3s0tXKqmYKCddR24Ysqs3+lIPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782156994; c=relaxed/simple;
	bh=70oRvnb8NXeptUqw1YdQ4eTi7NfNIHgYxxgJjIFwz4o=;
	h=To:Subject:From:Message-Id:Date; b=hBcG2qlXV0LFRNXJnxCCv3J7pKJwsg1jPBj+E+VSccz6w6zHt3R0293Ztq2pInDuvQHn25U8XBXGXmSB+KFCL0ZZeRXqmY+a9ZKcroECOCJS1WBfaJ4QMH5vtclVWLNy4p7ktWyWu46bwYoo0HZWZq5m8AMI2asHx0FjNF6CoZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPwA3ueI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPwA3ueI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C842DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782156993;
	bh=70oRvnb8NXeptUqw1YdQ4eTi7NfNIHgYxxgJjIFwz4o=;
	h=To:Subject:From:Date:From;
	b=dPwA3ueIIlYJt8AIu/J+hSsrF4FtJA1HZ6AdXmkMgjnRufacIE43wETLAe+rBNZ3x
	 sFfzNeLgG1uz72es6A52UJZURkQT0YmvuoKAVfPAyEjDiQHuE1l3x3ZGNgG5YYsrtC
	 iFwhhOKL/xygt+QzG75GAS2VjqtxM3j09Bwwua1zmRysS4tDriQe/zIt12MQX/fOKG
	 X+oU3s/PcxMWCpgNpA5WIPCKLTiw7PuRixIgiU/RDVRMS7fQ+EjAteSdOd5ad2ql4J
	 j5tQmaA0bp0I2oiK38/k31U9/za03yJvW7WAZkcxhjIpmxLZe8QBaYThFn0Lu4Qwv1
	 WOFm5RpuqkANg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7BBCDB476
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215699369.14832.12214732606055358409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed4a29720dd2d5cc900980d07ecc246b0ceda93aab761fbb22a7d10cf66dc56
Date: Mon, 22 Jun 2026 19:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782156993
