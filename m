Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314911D5CE8
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758208794; cv=none; b=KxG3Zga0qsZqUCpMum7Ta+lSApb/PtbCvHZmItyHrE9SweygcCze/6GLOclhsEiyISeaCqdFKwuvuhDecyryDv1DidyGO+VokX28opEuBmem1e51fr1svVgLtcObfZ/Gk539//7Wc60oyo39KfYmylt0elDOo8K/Fkm0lD+K7Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758208794; c=relaxed/simple;
	bh=PfZRLkCfp40oJdogSzpYCrqcL3YQpRQqf3RhDdcnDw4=;
	h=To:Subject:From:Message-Id:Date; b=pifo3Vk7EhsBSdyLYkbDhwVKRkHIaO/ygebElEvSx8d5VSJd29FwZQEZNbfD08/A9GCM/Oolbbay7uuHALhCCN0NrP3fO0gIEoKnsdEjrOQFP/LLGYSwPnz0aJyuksUGRzZTXSncX90Va8AtotkX3yNa7awAnPjUmMh6A0mAiYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ne7gAhEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ne7gAhEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB6FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758208793;
	bh=PfZRLkCfp40oJdogSzpYCrqcL3YQpRQqf3RhDdcnDw4=;
	h=To:Subject:From:Date:From;
	b=Ne7gAhEFDL87gVc95XNzhrbp2mokRL94t+2KgSmftyyLalKuVVft2lOeK9M2OuXBG
	 fEjfnj++Rvjou6niwPIFki9Kr2f5otgC4tsji/QPDZsdUR3x0tuHVywyncdrYLN2n7
	 Jeq5nSvbjUT45ajQCjh9yMWnd2CptTGUnB7YsnMvw316eNHxgakVU+GP2ZbD7MIMTV
	 g+E92OxoDKTIwXOtoxGdKIXLaOfiZ90eOivc4wNnM0DXei9gPWihKhbLvsnDqxmZm4
	 6O/QVIaJAYqy2DTI0FA56sXnJhmzj3Epn+8s2JD8qr1WYLUL6aT28lSlEOZSbx3lnw
	 1O86AfE9u/0dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3BBCA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820879363.20434.14066583756913582293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7abea6df9f1c600ae6eadfa78923bd6559d4ef7e01413bcf5a89f71391268b9d
Date: Thu, 18 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758208793
