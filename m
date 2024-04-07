Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0253217C9
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712462297; cv=none; b=Gh0qxx8TSGSjcJdggCrMTQiIxT4bSbIKSLh8ro9z2ZzUfPpNUYsCszUfuyC+zUZ3/rQGFE5Y7UHjbbyBIlaic/vXzEVKepCg8CMjMaF6e15VsMnfzF9I8wKnTX9Ab+Du/YDJx8ltjhIx3xUoyMQ9qCW7x/kQaV4pYMhNYzsQ6PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712462297; c=relaxed/simple;
	bh=ZcgiaHHxuuQfW0EcCfePEgvnPwNCF177YXVZ72SMSzA=;
	h=To:Subject:From:Message-Id:Date; b=KRaD1n3uN+uvGdNeDW89JSTZqlJKn+6qmPoqlIem0Lt0KR1fG7xBRaGGPcuVuEIo3EWn8F0U+aeCkf7Phd/RsK0kIbWitfTf71s3smsz+0q6KIj9IYX3MUp0jinf6npmhrt+avur98mb3YXR1HT4rI/bAJ1BKxCjSKbm+hTV2tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9ZuXmA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9ZuXmA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B014C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712462296;
	bh=ZcgiaHHxuuQfW0EcCfePEgvnPwNCF177YXVZ72SMSzA=;
	h=To:Subject:From:Date:From;
	b=V9ZuXmA2JFzm+ARESfW8Pdqy+rMA95u4BKr3UYbj7M5ZEEAbTYolGb/bm4/pVVqj7
	 xwXlusaT0b0rWkiyl+OKAhDwW3lm/7FRCOexKw6znA7k5OalCg67ZuBfs3hXnbZqV1
	 TN2AAtfRHRntldibAiqFqHe41dawTOndxWb8FLn1zfE10BlGmi9euODc6knNw6fz6n
	 evYL/8G7y0F8r006PSBLlDi9etloqhzIC/jOO9ij22i8uvAR8Obgoe77KC7/YRnN3J
	 7K2Gm1GSXRs71dq+UdludxYlp+jLyHEfO9t3AsYEuOOIb2KmK+f1zPCJeym9RZ5F8L
	 FSoaTtPLQ1l4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648CAC3A59D
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171246229637.17933.12409804792566665501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92fc3c1d3bf8f63fcba729dc131514945ed6915a76dc1f3789128605e41dae68
Date: Sun, 07 Apr 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712462296
