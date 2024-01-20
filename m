Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BEDDF69
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705763297; cv=none; b=DauRlkI2Y09VrgOMXZKyo8J4MOcirZ3QG65OClyxs4n9nyKgYSQiVptkBvoogxMJ/zUU4r7Opv5sSgNK5VZo8BbxitMCMyNLLOGoDLe8TsSDtduHI0ycW3Fs4CcOMk6zmq8yBhGD5hYPGNshM3OL2DPZCc+kOZgWGETfmpcjxbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705763297; c=relaxed/simple;
	bh=EpKn9jgxINYTRN/rAnl8EMYAX6uxtoCrlE2j2dORLPY=;
	h=To:Subject:From:Message-Id:Date; b=boWicDqiREJYZ15jBe8vhBRi9nO3We0t2UjdZku5JZw9vTfReUvXG34udj3I8vs/srvuu7bnNoRLfYFGszqZAzh0d/3j085Em2xcSYlxE30Kz0Q/2pAoquB3Hqdg2FRsknu6JlQPeZx1r+wrPNDBCOn6NKwACv4xhCbFnUbQfWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gl8OiHoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gl8OiHoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79189C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705763296;
	bh=EpKn9jgxINYTRN/rAnl8EMYAX6uxtoCrlE2j2dORLPY=;
	h=To:Subject:From:Date:From;
	b=Gl8OiHohKjXNhn2+RP9tqxEP/0OkM7F1gzLVCjdL8z1+xADu8g5rUa2JLAjR8gaSd
	 ECwsez1Nbw2Kbot+PkhkHYFEkxqei4zzigwJtRk42iHEfYdqxEYcAl4WSjmFu0E4kb
	 bPPILy0zLPL2oOMILvlo2P6PJ1+2U0A7WrYDwaixodVxQfQ1DSEVGCD6n1mKWtSyKR
	 /BB+kAeDa5+qczGl6KvgbuWQqnlgvBJQbw58Li4riGlwOm9kZZr2LaquVlwiBqX3TL
	 hwvrB1/hB6oGo8vQLI5AnDyAj7/GjkEE967YN1am4S4ef3i9NN+BHdzHaVlcjQKqLh
	 ww+1wyxzxw67A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FEDAC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170576329636.21674.13373108443105079669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96494c0237322198f097908aade4ccb4de7233a3c559d648c21a20bf4c35ee2
Date: Sat, 20 Jan 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705763296
