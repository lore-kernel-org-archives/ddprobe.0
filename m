Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0751F2DF6E3
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769754834; cv=none; b=OVUVTt1DKeY9smKndGJuppiFZKsD0owW/vx7D3p551J97hK1aMlF6q3wFEfer/v7cp6qRtx8T8bf2B0VRGDzDq3tQeQSyqW3Z1VIPsyLF3YLY6lZGjJZLUPY3+0iWdo7ro88GTQqcwglfokY/NPlieIQPfSU9jPmu/4DFetNGwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769754834; c=relaxed/simple;
	bh=CFOllopBXG879WcBk83C14NGNfXOEUboH2XVYS/AHoU=;
	h=To:Subject:From:Message-Id:Date; b=Y5xXuxSBOrkxDDDt3Ugc+GqKCy1pCP8z/zImLCYUQRXT7xTO31b6GL3NpoSsDD+UmRtc3p698KkQ3tmV445bvrKu+Lf9cFGYdn0IIFvKtWUuAJR9uZr0nYZA0wafsgDSdhQ8j+ZS28klxmk+BKDBK3Rz+mqhwCYhxd8KQVQBSAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuJgClM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuJgClM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B1C116C6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769754833;
	bh=CFOllopBXG879WcBk83C14NGNfXOEUboH2XVYS/AHoU=;
	h=To:Subject:From:Date:From;
	b=CuJgClM1iBO3ep2Ub2HOLpCQRKYbrDJxMM4nbZ4WllDJt3PCIcussE+MmuDXJ1BN4
	 w5hKBpN5YyyZp2V+k+p4efw+mcoVMmIgai3gk68XCSUKvRmC93ccUsuTs70B+d86zI
	 DYryple2mMiHVaRyuLp22Zn5rKO/h8bepjS2iVj1ld7GhdpkpgeiE4ndtiBxUkGHdJ
	 zeIgusayPsnWlRzstGO2H0AgOBVyhC3H9IXzcv3YPO96JhieX4vM/x2bS5mi0M/JJi
	 sQeYx5cPzVsU/EdhLp/z3w4SFhS6jRK/H03WotjBy8i12tW8bbx6Fxhztc0ppATKl9
	 iM4bIOBJGsJhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9163BD46C1C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975483358.3970.13187511426399996729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 057e2fc150fdcf0cedd96f33825c3c45a679dfcff113c1119db9060c4aad5063
Date: Fri, 30 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769754833
