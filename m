Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BBC537F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738339554; cv=none; b=BInSm1pG4MjEsU4URWSKGegJ91T2VM0ypEQI1lqsElQY2FTuVtKQ8T/esizQCrvH1WJc6Oa16W8PofOo9opFKEQczdBzCKo99KpSkPUc0FfB1ewht3NIUFnbxOlSxxo9ZMKyYaKZMct7uhvQ4HRQ5r/WFRMMQF0UCLg3lRKjvIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738339554; c=relaxed/simple;
	bh=S4P+CtOCnkedzkGBrRtwhhKN0gNfXHUw4ofrCRQblL0=;
	h=To:Subject:From:Message-Id:Date; b=rYXFivOmLheFewQmdKEGSbzwhflL1hh6Cj428AfAuhy5a8iyOTEh+SDY79zDpVf/EXQf2d2wf08APQPjmodFY8YLva8VC1xxBNjoi8ScBMIwnKs2XOz0u7Su8E19GuQde1M3MSzQg/xOWycJP7D7ucyevXYZ/TxCbOtw4KtFefM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuFJUSCS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuFJUSCS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50AAC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738339553;
	bh=S4P+CtOCnkedzkGBrRtwhhKN0gNfXHUw4ofrCRQblL0=;
	h=To:Subject:From:Date:From;
	b=GuFJUSCS7OvRWVYBK09YJeRIlc6Vcu3cts95B33SgqvDF8kjN4nEokUP7FlnAVbIF
	 iLLv3XRQutGPCroMPGr0wxE20vVWA/HgkDJ4xLSHcEj0SO2OHV1dzcYDCpPas3sKNO
	 SCAGHUwDYtxtxettqys1J5P/K1Q/Rk7sDA7dvasvCXRKGC94QlhGT4IegskBU3RuB7
	 J4Hv4gJc/bfIbYYcy/kL3G2qBk/o1Py0IHSMOP1HNNlfKdBWORk+COYmvqamrG257X
	 8PHE7v9IrgVy2XzS0MfRe0bpQIniZptwj5uZ7wWA1mTuFFfZek16Z6BhJJz9pfCMz6
	 2OV0R8pqJn2/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980B3C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173833955360.1533.10186211988931124123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7460ca211e9197017b31695c70ed86d4157bc4715571325b71df99b8980a981
Date: Fri, 31 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738339553
