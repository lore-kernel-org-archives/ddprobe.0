Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D49AEACE
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743473394; cv=none; b=Ziw8L8yYRUotvmh6PxJ2FjNjuBkEHhRfow+FcXj8bPE99YFpwKKGem4ZYg9/i8/c6X+gIRGfzMo9kbd+TEnJbpRbA4uTKg9mvRj0JeWFqRzqRIS2uCjQehG7EyMEgfe7aDRaq/WlsziHHuru5AfBdD3B7mgR9FBJnOCHOXP95IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743473394; c=relaxed/simple;
	bh=nFbaVGDmqElW9QiNC603avjyQCfLV4f+98QGNmn1TBQ=;
	h=To:Subject:From:Message-Id:Date; b=uUlVXKXfb4iiApyCZseTJWTZ3ErGa4x14beyJnU9mA1B+1o4TGR4Ehsi55hCQtPPDvzwRxOv4c1gh7R1eNdWMb29pFyyWPRp9POc42Tqkh+Kec3pDpMfBS612do3GvhRr34a83ISPhEMzzEcg9+IbnUtx719/1NyjnNE1hrKKPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3MIoJsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3MIoJsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25F3C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743473393;
	bh=nFbaVGDmqElW9QiNC603avjyQCfLV4f+98QGNmn1TBQ=;
	h=To:Subject:From:Date:From;
	b=D3MIoJsFGYkXcy85XLkuqYArZwD6zc4EeAUwdskl8F6VHtKsbPkFtHzi1dzAZByaS
	 7ScgNsmOiOH1uP7E3KPOjWN6IfQCNWAu6Xkibu0nsfbib3z/q4hWenp3lly7ZFbsdY
	 9T9iBTjabNzCyK1kvfNWemYLcEO8tC+uLpWt6OizO4LT9MphSmmZ6JH0OI3DsxyrhU
	 W/HQ6dSUd/jpeN/sAiNN0+ZkK7id2q9jiFgDHidXDuPC4+A5AGN/f69FjsZOHF6Zvg
	 KthXYsKWAnfeUyyJp9cJxnXKdvLAgwvAoZnvCdoHlf9WrgMvcITGQRZDBqZhXwwFCZ
	 lxa3IaJHV0wyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FC7C3600C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174347339358.8536.7852950665613595899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f045c9d2e81220f1fc2abd6824c3b8d76cdf6ddfdaf05ed7ab20ee46e1c545
Date: Tue, 01 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743473393
