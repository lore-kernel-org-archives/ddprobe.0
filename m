Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F83B1C84CD
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749899394; cv=none; b=K9NZeaBP4bAgW0ZG083iPKZ25Mk6VXy0jeRrG64xRGs8blmCpYHGDkHYZF7aTrxcLZkDf6pKUyx7YHs2GqkHojv4v9IFNNe2qaN97teBjCJSFOl+PIXCWORTFYII6veSAJT1CPsKUY3zax6GCzkN5644BMdUOWcXE0CbatcJ/0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749899394; c=relaxed/simple;
	bh=uy9hoQPVKgyjNhj6Ywq4BNVyfXOHyjtUUDAZRzAJ95o=;
	h=To:Subject:From:Message-Id:Date; b=LkSFrVtP8uL8e8hbaOtIE+AJKZtlRzHx90OmQ1r0g19yYyK2TDqhuOnqMFuodZ+FBDNSdFKwaskejJehJgOPLLcfnwSnmD6mVSwAcSTZVKAxfF0OFURxsK4UOCJ2/1DaFGK8CSO+ScTLboXdS0rY+YK/ScTPTsbe74AjKJLRtDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJLWqCQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJLWqCQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76FCC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749899393;
	bh=uy9hoQPVKgyjNhj6Ywq4BNVyfXOHyjtUUDAZRzAJ95o=;
	h=To:Subject:From:Date:From;
	b=iJLWqCQ1XX+zpFM9vhgeX1Bdcde0ti7nn6ss141nk6n0Yvnyou/NroVtDffJHJ4Mt
	 ocix0DMUCEqjuOSVjN++cuzGHWgM1ypPYzhzYo6Pbk3NRq7QoQE7A9MludH/kTg3xI
	 TgoU5fLf27t4Ypt199QkThiXdWFudMtz+o+P+QORiD6KLsO5E5goC7MmNzDRvJLUm2
	 9oHWF/MDAk0ilE5/oLzG5mdcbCPLMZ1gAMAcidbTENiuwBJMuPU4uK3CtIoveFXESe
	 zWaJYB/DiXrFqXqdfoJTSP7MI0AM/W+g0Kw5JUzmNn/QIlcf6Aj5JUW6FNPpkx2Xp9
	 dGS+N9vtAvQ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E30C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989939358.20554.12279233037452001409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8749aeb75bdf460ecf11369cc37f860165fe751427dfc28f31b5cb6bade3411
Date: Sat, 14 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749899393
