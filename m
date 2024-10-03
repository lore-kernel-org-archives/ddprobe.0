Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E11817BA3
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727924154; cv=none; b=qa/Mdosh8S3Foga992NyDA+to+hhgZfqpcQvMN82EcmLsgM1ksZQYEKYa39JWBBO6m2kibYJhiOYWkLM7ysJIcoKve2+ZbB2Yowo5VdeaSa02rxiGU260ismz72SVTOTg4phQ7hXYV55sYWngyB3XIDKzJG0s3TUuU4hytl4HWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727924154; c=relaxed/simple;
	bh=INSG27/ktpWxmnT5l+wOg4suGF0Mhkl8B7FFC1sgEf4=;
	h=To:Subject:From:Message-Id:Date; b=YhrkJYPHcZm5oF7a6KXLVac4OUfoTe9pqSDPlj71M0Ts4wBXzqsfptIfI4XAjdP/2mCcl6wiNNsL5WoSkx1+loy5qUyDFWyqgjbxqNruMsu02JJXUQ7kqSyQrGLQhs8r3SMymdY7w4tJWAT+KpFxp80SYUXi2vMBAwQz9iaDg/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrArfPU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrArfPU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9A3C4CEC2
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727924153;
	bh=INSG27/ktpWxmnT5l+wOg4suGF0Mhkl8B7FFC1sgEf4=;
	h=To:Subject:From:Date:From;
	b=IrArfPU+Rv6b9RlOLSU4isMhfQqHCzpXUdwsul905ZD9CVBOEx0D4pudyra6clG5T
	 ijgzAODn/VqA3rujPLXcnZwIWVLa/s2LPi1JrkI6kvTJ3jBGw5E2KSSKjpJi9KKw+q
	 /SDK47/r/YjTpdXeoGQ0peCClBt1Ua0SLx/qeqx2Q0gFhG4RzaM8ikJeaG5V8vLT3+
	 jkgtdZoaD4Mb9JV38jBwQROfX9G8481b6FKnBzx668vzPILfW8UjA6+QettxRIti/0
	 DhysXdKDOUIBLbI0h+Zp/tL+4d7JmzsJx4aKN/UJbzt1NdApBYKSz5MQ0PXaGCj9RS
	 zDf2QgeYerroQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC117CF8555
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172792415365.27047.13977989825782628536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f967fc58f9c8dd5e356e8b96ed62bda29480f27d5b5893b9fff98a9f82efbb
Date: Thu, 03 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727924153
