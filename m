Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBD7259484
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734866154; cv=none; b=g5GSpPOvYXNVa/138Om1DxFXbaaNXoSvShD37u057VxOQ4ZmNy8ib4sdetHpSYWhokm2zfpMtxQlj4AxPm9lqJjCgX0o0xln1sSbrDUZY7Msw7i0l7YSb6bEMZttdWW4SB8omzhoVRBtBGhhMuY+A+xvLLvOMjEfY97mA42FBH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734866154; c=relaxed/simple;
	bh=l57U5VeMVzxwHo+Iqi86fiRrVBD+TNb9gJXwBCEwjeg=;
	h=To:Subject:From:Message-Id:Date; b=Mp9Hskto0klH78SO9pBLWqztj93G3lOIPzF45zIZArXEtuUybdjBAuxwqR1QHURuq5dQ/DRDO/WoBtpPtcG00H5XiqL5C0yGqL2XZSwg9e/Sx/MpcYOqCUUNUpQ7RCoicWffnOjTkxihXfBNC+mnZ8RtQy6VhwCgB52EM9fPKSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGsAv73Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGsAv73Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1055C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734866153;
	bh=l57U5VeMVzxwHo+Iqi86fiRrVBD+TNb9gJXwBCEwjeg=;
	h=To:Subject:From:Date:From;
	b=MGsAv73ZkSBOfkw9u1p7SqxYF3qis2p/8nHa4hwDMhSogPX4ITFAF/JvJFDvD3j+S
	 AUq9EzJ+VgxLJLA2wTCmEXQ86Y1hQPMyMrNJNzrDyqsqDPNwgOOOgsP34RrEuowfJv
	 McPZbSjNAwKBicLn40rF1Ekb32lLN5asFNZ5sG5QoweUzmco8zd4wJDuy9L9CheTar
	 4mWzN/3MBz1oSXwn74j4gGS11htfPm2nIa9L5Wx1eoBrZ8QZTJzgfForu10OHPXiVS
	 VIIrICtfUZENnrpcEr46ORo7nuViQ4brgC9dYzOetUQI62RKa/S6LdagC5G6iLLw6O
	 pUA/ANUCKoPZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988A1E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173486615358.8654.1088815223062785618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39eae9f0c8be70d4ebaee9f171dad2f841b81900090d4c2dbeed2b41906ab816
Date: Sun, 22 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734866153
