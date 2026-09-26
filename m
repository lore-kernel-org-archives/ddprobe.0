Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE79255F28
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790389834; cv=none; b=Vf3e3tUgpd8p4AVByYuLr/oPvjVrbZDmzUzP8ih8kCdeq3YrFMwHUtTzb1joZ3djUfS9LumsFpGlw/Xx1aUkT7Qq2UtIdNo/cyomySoXh1JEOOAJBW4l26gdhpEFocEZ0oGPHSxne8JNHA1E3kb5wsg8XWzRX8axfUmHsinT2Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790389834; c=relaxed/simple;
	bh=fmJTN53sCSDB0PzX+atK0eVvAh3G4k2okccEQLF+atc=;
	h=To:Subject:From:Message-Id:Date; b=eA13T/yI8+cO5mp3zBgnwnZED7+8yu7xKgRRlRr7k1N4zE4MKwxBNoWJTQNWYoWrxUiY/bnWaAvI928XojaFmuQLcBJrc1nnUcg7FWlA0VmkWjKkH0FxHG8U25bmFuVW1b5lblBMfzq7u9yKhTPlyMNnU1wjttxnDUTmFaKltVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3XplW16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3XplW16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEE3C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790389833;
	bh=fmJTN53sCSDB0PzX+atK0eVvAh3G4k2okccEQLF+atc=;
	h=To:Subject:From:Date:From;
	b=B3XplW16wOZKnMKzqRTE+5xxVBQi3nEkueUQdbTIM/h+NgNt4mwJ75KTROaRsOug3
	 aR4bacjXbOYmiutxD4ELKXPyuy6VcMKAWdQ5o+KQ+pQi/n+9xFTY3Zkj/CAL7C/084
	 dyj+0Sd4ipi3lKyJQKG4v6mBBC72lTVQDgFHPlPYxvFERtTuEyUuLGElOvk6AcBbjY
	 RSVhEBEUj94OtSoPGjr/zpdRMipZKolmzwAH2rLevp7ic73unmgF+C8glhn4Om/oQT
	 A3P39vyd7Y/kr6f228i6x1jQ31XdN8mkVqi7sEZpv9U+2eBhxEwYmwNrMrDhm6dBD9
	 5+jO6ad1FwymA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8B7C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038983369.5338.10119416882662894522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95f776ee5c9c9a869ec2cb1d96ba57a6ab0b3d9e533c45635d10d669d8ff5da
Date: Sat, 26 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790389833
