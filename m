Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B32161DE4FB
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747648794; cv=none; b=Sw/tv7H6zDiuFQYAGaKezKLLlOS+4Jw4Mt2vgvkJ5lVwXLxueCmzgmze1bM3cwbiQDNbCVsRp2bpXfvV7LoLIppEx0uHoLGzB2wO6CGVBL5CnFKS1txOR2PeoLYkw7O/2kl0nS0kCHsPqAUOyoRtlmHb361ZSdI+aXTrAZBSnFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747648794; c=relaxed/simple;
	bh=rkk1fTOCjEb6H7AQjL68prpAG+pWmOCKZnpZNHGF6lA=;
	h=To:Subject:From:Message-Id:Date; b=VCac0fAEaHrsJUBpjBSDTkUensJ8xNa7z7LT/UXDLlfTwx5j8RWhMkcZPexDu37yQQTIWnaM/GzXK6ZLkmamE0FurKlAUcCfI6c/BRfylNGJXx1/waTStXCzJQ8KiKLjWLenYD5m4riQUn47C4auWKxr184KnjIBKrT0U12ir2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAfGa88x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAfGa88x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F19CC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747648793;
	bh=rkk1fTOCjEb6H7AQjL68prpAG+pWmOCKZnpZNHGF6lA=;
	h=To:Subject:From:Date:From;
	b=gAfGa88x5oaLcesiMnktbs8GtCMsKDeNFusM0J0cFKDUYbgABovQKTXAl8qttqIUu
	 n1X2HdYIJplCED83WKw0Q1ebrlAC6H58DjH0RUpDd6XmKMupIs7De4ZzfYYNSHUCUs
	 XGQJJzxYOBEO6nGLOoxrsbK2sfI5AdgVXQ79Tzugt01aikH83DvJBjfj2POuniFl4k
	 gYKm6xCCDOu7OyW+M6PiFFffEkH9/onuqeWw4CeihHP5leHObOrHbasXUGKaffEj+j
	 sm9c3cBxL94bemG/iTmyqzY9pgP9bgsiWBsQAb6nMB8kHBlo+LNEVXferCSP+tkITQ
	 5xcZMJHyE14yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE1FC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174764879357.30837.14310589422384717511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de5da54590f751b1321e912371979b22b1540c1d5bf12a36d0565696d574c04
Date: Mon, 19 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747648793
