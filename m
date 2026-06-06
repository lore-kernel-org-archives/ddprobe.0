Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311D430F7FF
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780740274; cv=none; b=qtxnAMlfophp/dMv1cDtHrz1LMePtwYp75ydiYkiSu/tEnk82kkGx77mQjP7RiyQgECuZ1F4aOpl3ufedMgGV8jmrgt/01BfHGQm4srYoKZjbUo9Mkvdk4RTuP1pc6P/WWXAJh2BSgNA22mPL1pVCXeI1E3EsdKAibLIkSJv1N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780740274; c=relaxed/simple;
	bh=4ZFvkELsJ3Vw1XG0CroQRVEAv8UeOGNTENqAVcqESvM=;
	h=To:Subject:From:Message-Id:Date; b=FhK3NgqR0Ye7r0W4obc1AsxKyE/zfirdYpY8hMMN58AwBFf9QYnH9VvfzRkA7dOuVZ7a8/hXi2x7cVtmiGF9KK/RuJ0xlLbglMJhC5IFAXuj0udNojCY29ovojzTdly84xr72gRz6BH1erP06/CoYUOUdCKXB/X9J5heStyC500=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNy4dyzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNy4dyzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C931DC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780740273;
	bh=4ZFvkELsJ3Vw1XG0CroQRVEAv8UeOGNTENqAVcqESvM=;
	h=To:Subject:From:Date:From;
	b=dNy4dyzH4cvYrXNdoA/m7caLCQDEvFjsNHC2WFBgzj29OarqTw8+mhoHI/yxboLj6
	 TZwdLyErQqMBqnqYYpDGpZXy2ITYGhNH7HYm68rYmnCUtY6hg5ayBJPocBC+qjkgGg
	 yuY0+lRQA0QEBr2S8xhjg72+uPpr0tKI68+uv0Etdspijs/u/HoBlFgvDm1BKrsYuT
	 PUgEJLZW5eG4xmNmaL5hXPpjkmHNlIVIyu6lFGO5inGm7ZsVxr0IljDo8TPImrESZW
	 qC9w6fvCRKMVmMEiWWvzpeIkJd7zexTqSFfbxjRAFCsDXC+rnaIixb4DnmsVSaxF0j
	 /DHkCz047xVRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6C6CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074027369.6581.9828697972674064237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcbc2b9d275632e1be6c075c6cb2090f19803e2b0dd4838380ee0d9d6c40e2f
Date: Sat, 06 Jun 2026 10:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780740273
