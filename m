Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BB81B0412
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744613395; cv=none; b=kYGlZSZ389WiE8oPU15y1wH6AAjqjL0w6GmEWXWOVg5Erh7JvjNC7mSw+Fbhp5TJXplCdcvJKefUj2qafn/wugaDkByZy/q12RfYwEg8mSyrXcL5ed3+EFRKPq1REdbGwAl75E1pJ6j6kgzAEf7KAIgftmludBa+RTfTqGrH2C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744613395; c=relaxed/simple;
	bh=eVuWGMn/midQ0Co193bpd5aoCRsyhAOsbMpESkOZEXs=;
	h=To:Subject:From:Message-Id:Date; b=mKolzTLiKzX4412XwLXRrv0HAV4gdYhGCrkUbVLAvAJhwJUE0laRc3H3EJgISASMpx0sa2N2jaZIpJXqfkj+pIYWSGLMqV8Qz2E5kQqgfUGD+2mO6d7Tk0Go6mNUjZ6ft5TeNxk6tl3li7bjWHsQBMi5hqZ3EPJBjjmB9VKrIwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ez5NJIGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ez5NJIGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C50C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744613393;
	bh=eVuWGMn/midQ0Co193bpd5aoCRsyhAOsbMpESkOZEXs=;
	h=To:Subject:From:Date:From;
	b=Ez5NJIGIGgUN/LM0dYzrY1bSQ591m96EoMZnb5HNF9kbTvdCCAFBJY+FDSKNHM/jH
	 9SNCwACY2Gem+RrAK6go/+vkrAGDG8fW1VNgSX9FNmPC5CFFRlUSn7w87Ep3xh0mXI
	 AXdKkVdREap8M0ddvCaZ4fEIMHzfeWkIo8DIzpwk3xk5YREjLBTR1f/bXSiJ/RtVry
	 VUrfLVyx/OJ7FJC2C0Ru/E3qts/Ha3ExP+vxnPuvFcu6cRCLyk7t4DrVG7qsLR9EsK
	 rNtcHzNqhU0vfQFfIlUBTtaZBXUCua2kRWb5c3WlDDNBu6OYTV6IVlVM+EuofGG99Z
	 a4vb96uuh7vfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA8EC3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174461339364.8467.9829808372399813821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4af9eae33533cb12d7623f36848f9a9e363e69bb6a320e4adf0bf035efd90fc
Date: Mon, 14 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744613393
