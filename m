Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1655A4A35
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755569994; cv=none; b=pB9+pBi1lLGhZtuppn0cCsG0T79KEeY/avhw1umimPiP+NcEeNUYbcDsOV8ap9zAI754XPfde9CrA/ikXyaeuglD0en/wmfkugjLGzwSlpXFpIJ3buuQmyAl6sC0v0z8s85KuurjT6nWt7NhaJMf/9FRsTh9kGQJ74lMvVJNR7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755569994; c=relaxed/simple;
	bh=DZSfVBaYXvdp1erAgsQnFmbHo3qxhMGa0PNDSfUoois=;
	h=To:Subject:From:Message-Id:Date; b=p7krG4IM7UvthAIX03JMGtL5FmZ1lFs6dkemENkMPSuoMH6L8OgK9ynlz8jvxCXey2cv8CjdRhw2s86JgADRxAlCrLfJe8jBjfbaXuq9dxbmzidnsgelxtBn5sXz5t53NEQd3+qcb7Ml3BSZuTL0QnvPSAn96yaDA/s1w2+EWbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mj2enqMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mj2enqMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E03DC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755569993;
	bh=DZSfVBaYXvdp1erAgsQnFmbHo3qxhMGa0PNDSfUoois=;
	h=To:Subject:From:Date:From;
	b=mj2enqMeoRhB7VQnujhAo5M1MsAXSpcbOjf6xe6uVdGlDlnd8Ln0rOAiVr4L1XJxk
	 0N7PVFLyDFe5OfY3IFBMX9unSTsi91qUv3RxvBauDhJnnkybXuVti5vIl8Rt0Yi3Ay
	 MByO/g2EQuyiJF2g2cTM8FDmz7XZsbYSGbg1ZDZzk9J624jBMhfeFLFr5PGNcoszZ9
	 bLzxd2GubfWpeaqA6r80+jZhuZg+wc9lzyADpQdFJnsHHZQKwG6ieH5RUQeXdAgBxj
	 8Qn+nqsRrhs25ls27jXOLVSMYfzvteFI1d6dBdaeiPJnYvqHln9i+TFXvhhN+JuzSt
	 yJOBrT7R6xK8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F00FCA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556999357.30836.3652933706944610346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd5cac7257bd45b3f593a252d7f0dca86d97b2a274fa5f75541da0682448d2b
Date: Tue, 19 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755569993
