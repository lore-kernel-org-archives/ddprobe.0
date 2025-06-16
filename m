Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9722BEFF8
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750089595; cv=none; b=Jn8seG2re7yqLHSDtTXjHYTEWS43/k6XWIc++7i2KMWisApKgM/9AiwK6Ydl+m0vPpLXmH1qu9zeLGuAHxDPVdUjOba5J6KYb3nSHDgjBpLBdtUNgfZhgFf9H6TUIdl3LPc8Fdq4Ehn8vdpOuzTF3INghjAzVu/LykfQ8pACEJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750089595; c=relaxed/simple;
	bh=bEUEjjVpqZd9WUhWmQYTAJJlpgDENrLeLn92U5UdQHg=;
	h=To:Subject:From:Message-Id:Date; b=RcxAnWbUVhbyTmZxtGSw48WTuuLNcsk9Gcjn/TRTKRQypakRfnFmH96TnezLlsmiolGkLroJUrkz0uQu5tIoIHcjRdJdJMFJxHQmfRvSK2WNc0D12+VVMpNyP5m9UWGIjmwHa5w/uY5kvKrMiP5yqdOFXm/zqe9E9Em4F7iqNGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=toI2Znn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="toI2Znn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A77C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750089593;
	bh=bEUEjjVpqZd9WUhWmQYTAJJlpgDENrLeLn92U5UdQHg=;
	h=To:Subject:From:Date:From;
	b=toI2Znn2pyINudsC/1KbZGBHZa8TsWsRNMYNFV0KGORvlZzdM+I6bRIf5ZNhr3Z2m
	 dFPPwEd4mdv77DT+IxL5WhU6HWMOh1awRPDKuHJU7WG6ZF7gBa4LkjZNT5itqHprKM
	 UEbZ5HuubS4MS2Q1g+gP32ljhA49OAYqjhzYnRuVI8hMmIBpMrbzh0A9JW4x6Zah2c
	 jRHXE4zqJ6ulH41AAXkdQuvbNYZuSx502uMoTaMyIWMfSQRy8tnJjeYKslOa20YTzv
	 MYwWVBBLqZgVcwxI7yVbmCINQeCSQQf+LmzjDBI3YRjSTmPKtO3dzaIP2HW8K/NsUU
	 9awH0YJJb9/Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96119C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175008959357.3699.17332428339593406987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a287fad577e346aa6c22fa5e4e2863a9cf0efc4e76be829907b2347750185ee
Date: Mon, 16 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750089593
