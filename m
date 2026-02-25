Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1011B7261C
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772001894; cv=none; b=mwC6Dqc9uFzBkcipplKaz5P5I+ByvTr7IZ8HrwReUkHBZKMIWiSlZTL8dgp2PGrwToKD6PWA2wlCSBrmtGKPPYJVPQhKFeYAT4XWMiE2EXWiGzoDiNqN3hN+xq8Gx/gCKO8jjK4KcjholEmJ1jRxKyP0JBFAyzhdCB+1bINZAcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772001894; c=relaxed/simple;
	bh=og2fNRxrRrlcUiuOrnWch2MtavnOZqj/9THtBm9Scq4=;
	h=To:Subject:From:Message-Id:Date; b=Agx603QVIZWbjJ963FGZS133QHrPXOimR/16ylCqg9iHO9eN0GXnFXRQhLReMH0vgFsFwLGg9JI+RQ0VYlNFHhBtNlGQr9yFvn7krQXaeJFzWylel+AV+J3eIXGLGFIMjvQP0lBVMbg4O2IfMN7HzdsWoWqHrgbEfBWdHrYAG84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJfrbRNy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJfrbRNy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72F5C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772001893;
	bh=og2fNRxrRrlcUiuOrnWch2MtavnOZqj/9THtBm9Scq4=;
	h=To:Subject:From:Date:From;
	b=dJfrbRNyhZ3g3D75WWiGjZunGXdd6lub9MyOYkABX4M/1bNPScq+lcYmetnYpcrtn
	 Kr3h6//lNGThE74kUrUxNKR4cOrQRmdasbxOvYt8I8HGJdCfMjZv7Kf2zFGW5fTdfZ
	 jFLw2cmwJ0PWBpQxH7C8+wZcUB8b5ag/ylOr6Tq/WSxx1sgaFh4QSBPh2KYdgR14ta
	 /J1S0tom7dEgKlCF1NBigQriOG3wltjxEOpj3ypfcJYa4sJsMYDs5Fj/4FGfhrQ+oi
	 z1//K97XfAaF8qUzNiA8SfhJ4RLAsVeHedM3OG41N08r6F9WDOTpBNmY9s/gJHlhQZ
	 VvhHlkJB7HUbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923A3EFB7F0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200189359.31621.10017420711760245786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73fec6ef510c30a39b85bc888dcd3f86165488855a6a109e7ff1ee31ff383f82
Date: Wed, 25 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772001893
