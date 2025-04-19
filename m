Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BBF647
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745087394; cv=none; b=Xf2jpTbjg0EaA3mdLQDmJjb1d0YKYMeuREtAawzfXDPwXuECi+kxWPsoIidFSWAWqHdir+Fx/xoSr3S47qQPeGmd0iDdR7jFj7Yfi8/xzxwNZJaMx+6ri6OoojgtRNFK/k9U3PJG6BXh9YnoUdDzlrSG35ZPY/SyN77Ot+c+PsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745087394; c=relaxed/simple;
	bh=jyg4DQeKaslFkCzf6ObLyP1FOh4Im5iOsbu5A+fyvzM=;
	h=To:Subject:From:Message-Id:Date; b=iC/IjfK3L5xH+f/KY8SOiizAawS/j1UdMZyz88XlIa+th7VYDSGv6SnyROKqyrfkI9fLocMPuz6XQUVp1BiwgmSa2c1LnnSlJbbHCWIGso/YspcmaFMWAdV/BjSG6m4eNyVOy+SmGRGmiGBhesnW1tJZsgkgwp7Bfk2AcaHQhcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIy267Q4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIy267Q4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33FBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745087393;
	bh=jyg4DQeKaslFkCzf6ObLyP1FOh4Im5iOsbu5A+fyvzM=;
	h=To:Subject:From:Date:From;
	b=UIy267Q4RLfvfM/C3LYaJ13H5AiLc9HMroCLPxN3Q7yJe/DNdbZi6BkxNlmrw4xRp
	 3BqgxMkt1NotQ62CnyUuMXDEhoV3UU6WHsGZGtIGcxCGsbj7fmgStx/q7rT9imXPX7
	 RpjJ31uE0X0AwFOA4MvpMhtg5oXLAVNMSI7wfiRPKp0WkAskvWZfkoVp9eT+9l7ZM/
	 9ZteZbVvrRd+2+2hWuSRi0mHHFEMg8EfItgOpmAzyYkZlB07vSE2v0NzNclbtuv+kd
	 rqyc2RGDsPvxhKa8Zy8vVSjyIuQy3mL3uBD/+79og1BFguRW/rpGKfjTgKQPbI8U92
	 pWLw0QmTjNu5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAECC369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174508739363.11096.11002591852642793520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f5e203a6f1168629de82564ae8384cd468748641e28764fac6e76d72b57623
Date: Sat, 19 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745087393
