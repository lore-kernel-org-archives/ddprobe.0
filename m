Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0902C23EA91
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760631594; cv=none; b=tcDZnAcagUnkqeopKR5xOU7mODxJ00UNsC7Q4ZZB/v9QBSIkaDaRD3pE/PC1KGJM9WQ8FpTXtmKGreRoDOILSa4HGcdP86MuXxrrgrVJ5GkZxrGFQqmvb3R0wXHVU7kSnbtTCM9MVTFhSfPDQSSM0QNcsHQbRgRqZ+P7q/2589g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760631594; c=relaxed/simple;
	bh=+exkblvwqQj678z5YFpDtB+q9aPdef1l+B4onaItJM0=;
	h=To:Subject:From:Message-Id:Date; b=tA42ToDrx730I+Ce0v2dmT3yLQgDlvLCnDiSJMVtAVeE6AY89fDzT8bszZtwCkWDpooiGZ5Z9UB8LK/2/y82uQiKLcm5idepNp7bQprEb/XnfAlP8Vt657IzPO/UJra2Re1BL1N4gdjlj7cWWW/hMbm7uQpxcxRP2wpK2knYJqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/R6aD8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/R6aD8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F32C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760631593;
	bh=+exkblvwqQj678z5YFpDtB+q9aPdef1l+B4onaItJM0=;
	h=To:Subject:From:Date:From;
	b=J/R6aD8ZxlhFWZxAa8MVeua63gMS0BuHCI1G4K57mkQr7chCtXWFo9ZU/maYeCLqV
	 qJvT1tvd64hSb/0SGKy2TiQvsSQY+e8pB0Xqc0wIjviJ/YgILIeHNXrukFijsSdJ4j
	 Dgmc3JPthyiqrMkAxQB+AshxKh/iAaMIrvX8nvLHF+gz3bKUFQfxNGEpEGxPiatBmq
	 rS/fAWNTsaozNchxXu9l17xbxzSr4ya99/RvU93OVnl9gZvBtkchiz5R2TFZuQS0AT
	 96BL+fz+9dzHOH4TZwKsXtXrsM7o1YyUmCbg43IvxnsVR8jBLtsjxcjx8n4aR58Av5
	 ytUwbzPP0mrwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993EFCCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063159360.29509.16720528762826507475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4728dac6fb94f24c9e525eb6cfe83cbd087ebb68a1f22a624c67fbb9f8b9d630
Date: Thu, 16 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760631593
