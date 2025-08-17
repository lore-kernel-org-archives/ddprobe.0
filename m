Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4732C1A23A0
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755446394; cv=none; b=c0dZU5WGy8q+1kyTk6HPcwzAcMO/BW5bWRbG3ziwAqGEOaBL2ujqjodwav6+ym0Qq3i3+BuROvXIKzVWbOJomCte8vNdd0C8aXHaoSdT5PGVcicHszWVW62TT60xFTzMqiP8JSyzUasrFUvczwoyZ7YpTC7ZL5j8YAQBmID1tcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755446394; c=relaxed/simple;
	bh=SDQq/WstuK/O3f4vZ+m8JGYiSXSHIz+JUDIQgitveUQ=;
	h=To:Subject:From:Message-Id:Date; b=tmW6vwGBsKq7RNW7CxmebrJ6TubqkgsV6dtvTf3GpsoLU4ZS3OB6fALje3700uUWxa/il93t3JwTGILPTjy1lt0cHpGM4RWwxqKncWW9MQXZQIpoZjBHGU5MuTqcQN9exdSlQ3OoV3F7MH6Aw883NlkDZ9e10Pv765uBYpOuAGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCSePfXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCSePfXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A243BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755446393;
	bh=SDQq/WstuK/O3f4vZ+m8JGYiSXSHIz+JUDIQgitveUQ=;
	h=To:Subject:From:Date:From;
	b=UCSePfXFacPMhqJwodpnG2EBLnopnkvU0YmCnp7Et/mqNNBkUzUysywRTpITuUyEl
	 ABA29RW6y+o8elqDQnRynG+1DdZQ6eqCMyJNODen2bGU/78jAcqUXQCI69ekvXPpdb
	 Om4Ehptwq/9NqSW1vN8SHLQQq+Hu9k1XNExuRePDOL3MO8DoYksf9wufkEStUlZG7o
	 bwHfp+4EuuJmin45jGNGs5xw2wj/BDmSff7ybSPwqWtCt9EicMhio+hhs1pUIajrLM
	 SX+QNJWGi4b++YSMfnOD2AUF7x2n6ugA7CIcYYhiaL07M08LuyYCo2sz8BZNQ40eQx
	 +sXQppdmGy2lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F415CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544639357.12057.3055807575705580538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 394270e299045e2a9d44aa5a309744867bf80df8b8522193183b2c545e040bb7
Date: Sun, 17 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755446393
