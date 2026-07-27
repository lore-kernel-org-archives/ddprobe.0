Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4752A2248A0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785112834; cv=none; b=UeIw9QSpQLuQW6gYkesOSTT7CnJT4UIrX/tk6iMmsNIkJCcGZEIQ6vUvLBvWNIRKNRyGXADTqPDFVKKtW1Ok509fCiTEArBK/CzBF1r7XNTMYBqVC5KGrZmGkHoy0rXsynOHFq5VInCK7oM4caTbODCBtUrLBZ5JlnhsFxKa/Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785112834; c=relaxed/simple;
	bh=n2OLanJWiTrlc5pZk1a0AWwQfkdqNEQY1/hJa/4ejZw=;
	h=To:Subject:From:Message-Id:Date; b=kG8s6jFbcPS4KiRPPVH9rUTs2nWu4zdqaANwYOhNwNZdex29affvFeCTGGk+qs9PiA6owV9izYIq3DeCIw9stgqr7TVpLe8jgPgkIhHbS0/g4n2R2E93Ytlm7k15hKgPI+RfhEP9InAfvkj+K2XRR2pXDMv8rrn/+BIPYMWUHK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nv9RQeC+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nv9RQeC+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFD9C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785112833;
	bh=n2OLanJWiTrlc5pZk1a0AWwQfkdqNEQY1/hJa/4ejZw=;
	h=To:Subject:From:Date:From;
	b=nv9RQeC+jitQrQ7Avyqc8EcBkNVAQEDmo/o2xYlym6O6aiWx5ZaQi8rYg8kLmzsr6
	 4Tb6Uru9TXCpcRpqlbcG30k6TB3rDSSIP85JbIQ+hmDtnnt87BEr1kdSv+ys3V8s32
	 RDmya6rMIv7BoUzRcBfm8C+O7j5/jnRzfUj+j22ISqDZ/T1uHlD7A4Q0ole8FbRzBV
	 Z1V10DUUjESKdNVsXtH48EBFAApBVggd5ntlB91JUZKHYxY4ajYGD813TAgH7mlm8I
	 vWp0ASiqnoDzyfiryLSxzlQtkBrdq4bBLMGjrrSxxF5KFlJznUTCr2BNlh8SjeyPCP
	 t60CieQRxRg3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8FDC53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178511283368.20379.7401247135784575643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f8ed3e10f9e41ad32c4d698823134c228728ebd3d67ac590ee57566c150217
Date: Mon, 27 Jul 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785112833
