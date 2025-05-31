Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C7F2AF1E
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748690994; cv=none; b=GsL16PvYkbxa3Ni8oKYQbNpr717sYNolii5lEhPR6AYOt3tYV/5joKLG+bbQALCsnHFXnCyAt6Bc197zfVr4opjjGgCVnNhE3hJgBWk7kMC5GD7i0AchzXPqsXKIzY5CsJDOy7lXloyKQj/S4ZL+DoTmrX15JtX7/5+RZT/Sx1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748690994; c=relaxed/simple;
	bh=61aOqVkEiblnr/AG//sDuX+0nMeXZYnf5Aj9rQA/tcA=;
	h=To:Subject:From:Message-Id:Date; b=rgXTi/VzaJXXtV9ZqC66NhU6p9WhWDmUxs/r5nujEZ96GtsFrD2i+14GREzX+EFMqZHHDufGBC4kNGD4p0yvKWD7pobxA+Es8ejJF3D8lbaOsr+nTDFLjiVcRuxxMgyfcxjUoDC1CBL/uZVcdyyXITP6Ux2zx+ilG4kKfGygVVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXkNJFEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXkNJFEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A569EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748690993;
	bh=61aOqVkEiblnr/AG//sDuX+0nMeXZYnf5Aj9rQA/tcA=;
	h=To:Subject:From:Date:From;
	b=fXkNJFEogtZXGSv6VDu063L1/nBljbygd864VGj+oSmuvy3I9oCBP0WaC8DrTZ6rL
	 AgG1VnacjIrtI5KeU36g4Wuj9IBiu9HJjP6rYUMVP6Z7DUM5YVwFrcQWYiBv6ebVVA
	 KVv1mJIcXUvtrL4aN/RNy7AqT1Ykme0LJMCGBuZoH50DTLwSi+UPl+QZA6L+ZAAH+B
	 sr95Hf6KLlNxsZrS7ns6cyiHtEeaQ1mAhmHlMLzlU37tXKO0Y/tjmv929t+EcZwLW3
	 0jKXRBcmSOshx0xR/xI6MZgvoZQjRXaW385aG7T3/Tss8tbSsTC963l8j8PYBjfvGH
	 czh0F7Q/hzYTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91586C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869099357.11112.18114747913128233778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 719a4511ff1c886bfce784fac6469bb8ae38eae7a548049488d2ab71b22b5476
Date: Sat, 31 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748690993
