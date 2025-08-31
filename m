Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E40273FD
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756643394; cv=none; b=EmBHSbEBPV1B03NocQ+KhmBJnTDDnB7DHKRI7Pe6AhyWA5GX4rja2URk4j0b3yteDZKz3CUIIX9KFEabik1+BhHRzdkHX2/PfYU5LOCyDIaOqMhSb3kyI943PlyIq9z7SLy+7zPbAzKa1fb2rOioPJGgwUDVTGid2Pio0lFAjmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756643394; c=relaxed/simple;
	bh=AMCufwpTf3ebJqRy6Gp1exwquwLBHBRWqLyITtMCP8o=;
	h=To:Subject:From:Message-Id:Date; b=bXLN83b1UHuMEpvj/R8J3VZDZeIHQt3UGawEGFY1Z6y4Et06DiD4zVcEjZ5w46v508pt+wyqnRRh2NQERE+QVQ4jtQmcXcOpf4ItzM1Gaduop8KwXZTom4v1BI/GMFdk7jmdnpMGKP/wXWtzeJgbGiD+G/qSYgHJ3Zw6cWAyLVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpsLBMt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpsLBMt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA5BC4CEF6
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756643393;
	bh=AMCufwpTf3ebJqRy6Gp1exwquwLBHBRWqLyITtMCP8o=;
	h=To:Subject:From:Date:From;
	b=lpsLBMt/AqFH04GmBDmZy62hGpsDhVV0lN9qwy/3R8LxkJa0julcaYILSIXPC6ySN
	 6C0Ud48HLr3neJksmBInnb7ENXmiHilvuGGkiDCqHzopWwuizHHxHd588xWD4Go3qF
	 HnPCrKIBrjksEiy8HrvbojXQPTpiGdc3OWeFy0ZNJhVpbqCs28MydBAmnvx5tR6QGD
	 rXQag8y+meu45m16lHPHX/wMQe+Bz6XjL6Z5vKTLEQezaYvYzyMCYcxuGYXXMzNi2O
	 +nrXT5nktU6wAak9KrV/V7voehCYb/7Yw8/c3GU8v70qb6RUfztfu4SldvkP7dozZd
	 EdUlfiFFKXNDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF22CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664339357.22457.1765613570786981487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced3d6a18d61fd9433adc4007d68990ffa75d1d50cad2ccb2668a0320ff98b19
Date: Sun, 31 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756643393
