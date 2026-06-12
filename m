Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CAD3A75B8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781283394; cv=none; b=SUqPjNGD13jHZ1wUAcQ8ULzxmJPePmkm2S0o/e2xNidkEsMPVdiQ6I3iYyk42AUT4qX09W32OMFQQWijHp/GJHSg7VkOx8NSF5JGU7Frw03ictCsG2c5GzYg4SJMhrVexIiJsgRsHSArSLJ5B+QccAeZknfpTmpcC0MwT7ewfTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781283394; c=relaxed/simple;
	bh=LUlcaPUzYB3BiUoocJAUAwnZuBsRV9BygpIYwqgnHzw=;
	h=To:Subject:From:Message-Id:Date; b=liproTpOcYz5iWSD+x9wkBE881SHQbOEK0w3+o86iPTkUTjNC9c5T4tu/PDYjXQehU58erJ24VOrerWDK6PHHxzXp351nidagmKRvcFPcgpJuj76OAg9+MrMvdET21lp4j2TH1bcRNaZxna/1nJZ7E06eaNO7k5XYGKVLDZ4r0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYo7GyGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYo7GyGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C84C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781283393;
	bh=LUlcaPUzYB3BiUoocJAUAwnZuBsRV9BygpIYwqgnHzw=;
	h=To:Subject:From:Date:From;
	b=fYo7GyGffI2bdsYEUBWsU1AsHh1774as3FvmgfA1W1wI1jvCzDyBNo5hIloeRdwcC
	 2gTj/IK2YOAfr+CN7N6WoEcxDWWuqFTTX1WHMKA3kZviJcOYxp9seZ6VN/b5irD4xs
	 TqKczo/JdLlmKf6IS2zxxZh5Y79rK4iAeYejbYrkoWpH44/znBU6TJaCQwDAkpEgUj
	 JQi23zWiTHe1Z/07x/mVgWg72WOewGbvReinzffbC8UNsYH2EfsLzIPB/x7XVY2IDS
	 qy+r949pUrrEDSZbo59lpquMaYYUFT0JjPopVLWs8CG69o92GmTBLBBBJR2uaUMzM9
	 ZxWt7TqsB9v1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A918ACD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128339368.24444.9327655499361485783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9d2e688a9ba4e59bfd3b4edfbcca496853b7e7500b2fe58eb92599b4c63a188
Date: Fri, 12 Jun 2026 16:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781283393
