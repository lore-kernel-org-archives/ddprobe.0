Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ABE158DAC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763216394; cv=none; b=NxNZX7xDauDO1NuRItkWfW1TJgFElDsdvJSZtP5dE2M4+dIJmr2lAH64L8egM5qBY8RsTX5zo5meR7pQBuC32rMnt+Eq9amIqTpGK3xA8jDWpJfRTVnCyFoEoeHLnjCXMHRZBk+Fxg8HZgskXo1+i9T6aRs6hbprQMcwnOqQk5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763216394; c=relaxed/simple;
	bh=iALNqDjY8fsy8Pjjsu4DNETOgGtSK2sDpfGo7sZuFWg=;
	h=To:Subject:From:Message-Id:Date; b=XXuZXC6Z9x8P3ImmUMWZ/hW0Fi26UIpsudueqrPzO/riSltfpVOHk60Ok/jzGBmLMWiyGEMvNu7Fi2ghSttWVLE0LUMAXwQ21pD5ZMi17Nfekju2VLgPTA2/ph+R43Fz/fZK1vEJLwl3DMDHZE0jPK3oRRlU12S29e6TnalZgW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdiQGlJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdiQGlJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8410C116D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763216393;
	bh=iALNqDjY8fsy8Pjjsu4DNETOgGtSK2sDpfGo7sZuFWg=;
	h=To:Subject:From:Date:From;
	b=kdiQGlJjmYC39/kTyHcEzrtCbU/dMe6iM8QudIUCaHhmsh8e5SHUv7FkqKpnqaQj+
	 QpiPgKri90e0ElW8BnXOZs2NRa4Cm8tbb2Wkz5xo74BxkNH3iPVmxF2U7IiSA+oTtT
	 1qtEyvM2R+1WRqUDbqWH/iEuGwBP07p8vHBudytvoZv5YLcnaj6e478P3w4dPMuB0m
	 tdZS3Jl+jsmPnxH1sVaLOoId1y4Pl/1k9J9S/p/x3QaTkumS7tOJMrY5YCpDxu+biZ
	 XfUuECHZv1TntZsiegssKMwd71Bk2HgkCL0mUPr/t3DzoaRTQrN2PPU7ub9tekUNa8
	 N4PE5hy9tO/ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BE6CEB2CC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321639358.29918.11036626923909058062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1aa8f1595fc0c7d2b97b3b79550ef2758cbc25c57c59ffc6fc0ddb06b9f5a39
Date: Sat, 15 Nov 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763216393
