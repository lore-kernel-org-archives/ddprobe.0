Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193233115A5
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764670974; cv=none; b=Sq8wo8gjkKg9OoaI/PQG72U2X/31RZsNPzmM3t2tYAa8btzRjHut9odUNxvMpWgjoFZwyIwpS3l+NU8eOZ6LB2etG76VY8wd4gkO1v6TKU/vtBkRyfkoslx4zuuOl1tVb57U9ZfEUYea9caL93Zm/hdgnbP9t3c2uxPXtvYsl6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764670974; c=relaxed/simple;
	bh=JZlp+EDvM8pReJ2icehD6HuOdPpyS6wr0AeTG/a4alc=;
	h=To:Subject:From:Message-Id:Date; b=sJ1CGeMhnfqkprBd5PVzOP8JN7WtYbmDlrSdY8N9mQwX+cK7XVNgIxC2dO84xohGGieuCB2eNv3S3Z56/1JzjWa1cC9p4Lkdaoy5BFHAMYKT/9+61F+FoC4vhQDQ0yFYMF2hooJOZKIjj6WJee+92KDf9kWSfU3qxF8S/BXQQb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+nJy6Xs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+nJy6Xs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE89C116D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764670973;
	bh=JZlp+EDvM8pReJ2icehD6HuOdPpyS6wr0AeTG/a4alc=;
	h=To:Subject:From:Date:From;
	b=a+nJy6Xs0zaxRVMRF2Fy11LQsoS62dyEaD27GcQe+tdhmYGB7zD4XpVq2Ignwh9b+
	 UzeftSgU665T99PlDneQlz/NfyLSliGdW7PqKkz4j72tr8gDfJJTne0VnW63dmzufy
	 ShkN1rPwR+F/bc6lmDVPdcIrQkSTTyB8BfG2hSI8EpRJnkOeRrxBQ2a8UD0U+AqDVr
	 nvj8quI+IY4hlxlbjyV6sml3+SWUD6NabH1jqgMG95PZBzgepr2SvFeMULrBx0IrR9
	 SE7NYSbn48Adyh6IL+pBM11Am/Ej+bjEefqzmeXBYCVy3oxiOYnMlcojqTnR6pUiiN
	 xdeyOfL5cMCSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECFDCFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467097363.15785.4077753112438601984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d430673b19edae95ec3bfaa9f65131e3ac00ba756e5a885cddee8be40f25f79
Date: Tue, 02 Dec 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764670973
