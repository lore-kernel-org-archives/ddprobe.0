Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4D1314D37
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780423474; cv=none; b=qjlupgPGixQKnokbYWa+Ax60BBG36TbCJLhYAGsaXd7O/N2FfBJWV6NVISdkYQvTbkLjUWDTZ5YLzbzm2ukUjouc+wjtNsJb8bNOhUP2iRR9qUtdgOId3UXLZKU1jkLaKWGc/1+lomFUDJD9PhrneAa2fCgh4mcQb+MiO8tsugo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780423474; c=relaxed/simple;
	bh=yXANqr7GkLqg7lpOCvQXhq4ppfML+5vxgJXYgGgpLtI=;
	h=To:Subject:From:Message-Id:Date; b=dg0qq2vC8TrJPcyYUspzMsTxmSFLn4TThCv5J4fv/eW5fMDbPeI6K5nmTktCTh8Jmc7yTMuBn7M/KjLlwdVQvn453C6HtuyQoCTFT/dAuIUMr2pJOHx9fm6M3CmP7SE4i2XwP0w8dyERDwAju2Ijbbqa/DqT+FRYIXAyWz/PqiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mllEp/iZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mllEp/iZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7EBC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780423473;
	bh=yXANqr7GkLqg7lpOCvQXhq4ppfML+5vxgJXYgGgpLtI=;
	h=To:Subject:From:Date:From;
	b=mllEp/iZXDXIaL/jQ4g1K0hOUkdXr8uBJMqTylSU2EcBhKL40R2pFMzpAwb09qYD3
	 USa+C/nTO0SNuCCWmLiu478e3MEtbOM8BQtiT/ugq3drjwyRunJAAtUbWwAaG4osHs
	 YWWtuVGo8U0+0xg4hfRcf/nicYh/hirk7HY2jls0qyIWnVSXq53EeSoT+gpow7thx5
	 ybqN27TcDUpW8fv233Bd+gB7HZP40kKyDrfjdOBohyKL40WnZToJr9E4cZ45DDBvYZ
	 qkwm10uoiaG5KIdZEthL2rDajmdTKetFaOyKH5xm3b25QqMInAdjA2kFj5U6Ih4Lkr
	 B/AskRWJAu6Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE571CD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178042347369.18301.4205130686556363824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10ea89128a17ae40b8846388bcf2b7c6ca6bf66db4d5ccc89070b46ab91c636
Date: Tue, 02 Jun 2026 18:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780423473
