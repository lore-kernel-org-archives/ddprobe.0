Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896D71CFB6
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 06:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719297203; cv=none; b=s0dwYzjsfotJ0FjzG1W5Zwrqm0uSDZbFIx202Smgfl1bt+LGG/jS438FRt+SGTRrEJ3puRtnzr7KaExlitGKtsdgF2V5V92zN6aLDN5xWQuRsH4u/EQ+bYqOS1qYFcgm4BjbE8wlIpeuUnadSxFZfAfW6DKeDw+1/qvcW6vdBXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719297203; c=relaxed/simple;
	bh=d+ghFWUUdkcio9+0exPsuzB9LBMkrkXwDfFtrLxKgSA=;
	h=To:Subject:From:Message-Id:Date; b=E2M2HDJXq6wwfw8MROZNaS6Hw0x3QqnHLZ3MI1wJENLQqh3i9I1sTNoI7StnpzT//BMnVS+j/iRJ/+e5ucTpRXb7BmSD0T+k4tBrFG1qzbPIc0zLvmXxnBBsH3wwR8UEH5VLjpd5v4hB0pCa5kz+ya0zU7b/wtCq8N+4B80spNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7sC5RQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7sC5RQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 25049C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 06:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719297203;
	bh=d+ghFWUUdkcio9+0exPsuzB9LBMkrkXwDfFtrLxKgSA=;
	h=To:Subject:From:Date:From;
	b=f7sC5RQkKdbKbDsz51bIDS74X3Wfgap2IoaZ/3dtTxvIENVjXQylFcjD5yfGEbEJv
	 G+NfgekYMYFNl8JqYcxzzzeYs/eHW/acbnu15jp34uRUcDi2oz2AiHmwXtt/MsRyN3
	 EVDkb7seupSyY5Us6YzyOwFID4iIoH7i/BXm5sjxkEGDhv5nuCJI/0tDKzhkuSIjFy
	 RBrFfr+Lo2iroggayp3cbP9gPGHA9EFig8+zZkmu6++9B5a//eUh/lIZDJwDFIHalw
	 C55HfNmXaY2YlK62qJzdFzu9PQkj5PSro4mubWBeBWQ2qbItgx7yP3G1n1j841jdsa
	 I3FH1g7W6ysFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E775DC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 06:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171929720286.15681.4536164834845373822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d900bc328e7b47d3ebff7847ca5ab591f1cb4e11ef5095b474d9c320a0b0b62f
Date: Tue, 25 Jun 2024 06:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719297202
