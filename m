Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDEC15ECCC
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777102654; cv=none; b=YXh7e1iVbULyz5xrLU0ZndGQ/d6OJLFWngHYznE3PX5HQ8ZTAVdHXiSZdpLL8bFVcptQcIKdB82z58pqz06aZm+UXInAL7/a+ryfYFeE//DuXjTPr9TXMUqkj31XLhKOW6GZs+1aiZMt4KWRKK1ZkCIaFNquytc/mT0ZooCmebg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777102654; c=relaxed/simple;
	bh=LFRY+kcy0VJiPhMDt3A1rUNFY0YkoOJ1x5r79UN9Poc=;
	h=To:Subject:From:Message-Id:Date; b=LMvu72BdrQVAgmzOauCIkg5Hp9tJ7x2N1SbAR9t78vpWS4gN3SX3IycLr8IJc6Mt9+eV2BNClRNendqyMqZUkXzN1KRFp7keoSsjEzrwtosqBTcJY3uXGTD4VxZ/6ACTtwjD6n2Ns1hUuwic/1b+P/6epSGCCM0N8xqJ3zqBuAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNt2hiQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNt2hiQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB461C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777102653;
	bh=LFRY+kcy0VJiPhMDt3A1rUNFY0YkoOJ1x5r79UN9Poc=;
	h=To:Subject:From:Date:From;
	b=gNt2hiQW0haHO1ssM+pINAsOJJZbAjHEanBpT42Y5oPLtl6nLMN+ekcCzaC9xRAQD
	 +oVbcSjMKmPxMNrhTf6D8JNOVOAB0VM0xz8sGuqNSPf4K53qbzfCSch+i/C7fDkzMM
	 ZBJB3PbJ2AAll7mZE1Mi0lq09JDnT6ETvt65Zk4lOV7QN+A+pRj+2/oOiwZ7Awhznu
	 UEnOoHjehgnQ2EyCi1tDJE4O9U67DuKH7e0D+uLCwy6SjRdz76P0HDMkip5YDyXSM1
	 HLCdtAEh6eV1K3Z4mwLFicvgFV3L4CzCgymVwbulkFSu8FqaRZ7tkcFIDtH8KM4Ugj
	 sK6xfvwiIlMaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F51FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710265368.9393.16404358897273040262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9623e5def0c3d4f3893ac510e85c6f7f7e8d60da3641573e528099f318b9f97
Date: Sat, 25 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777102653
