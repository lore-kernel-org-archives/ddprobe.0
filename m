Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EE922DFA4
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762682394; cv=none; b=DfCZzVF+TW/cMElVW5whcG54hT0ef98BCQXYVvqHJ6s87LMhksWohu6SG8FRX28hm3zV9vOJcYXw0cf0B28bolspnT5+AGb4MvfmSr6KQPZh9/kCG6UkN1r5Fh9giiTtz+/5ZhkOkmKt01Zabqpdp7Bn1dtRqb1IQwsRJ8UzubA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762682394; c=relaxed/simple;
	bh=CRauG1xpQ6fnWqQ8k49QGnw3dpwTAbyS/ww+o3z3vs0=;
	h=To:Subject:From:Message-Id:Date; b=OcfzKdjUYxaPs515S9oQDmkYXWyvi/LlHpGsIGrGodMn19Syp+Zq81LaMuOOL7PKPFsHWZfn0ka0GrWqKj7+vAVH32JAlFNRyR8Y7ogAjf5S9FBaOfi/lS9dtsO4oM6PEY9JbB7d+fMMuKePZUz6J86zO5v52fj8iGmfMcJ6A+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtpqJoTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtpqJoTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0654C19421
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762682393;
	bh=CRauG1xpQ6fnWqQ8k49QGnw3dpwTAbyS/ww+o3z3vs0=;
	h=To:Subject:From:Date:From;
	b=WtpqJoTs1GkOqbVZECyCAJdcU1/HF3QoZ1E+Rq80suWjzsi6uSix3wztm9Rcl8ZTJ
	 FQcAp2xOIiojCcHWQ48M5dOULIlKryxEuPVa8i/thzohwK8qwMCLIMeeNUU8ObixjY
	 jqdUVUfqGabAleegUlxJLNaFi/mAmLzD2pBT3wv79hrCDWzRy9F6Q+1QQZf9Z1eNdD
	 iF7YezfciietcChpbymlrnwMWbgcA5P0ujQKqgiERAEy+IFdMpbAeLMwjN+707JwOB
	 1YgJQvzMZtMNBvO8OvUI0cnjYY2t9pArIkinJhCIFwyQxEqLDjfNBl7gscH7R9etwr
	 MFoiSJ49aYWdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959D6CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176268239358.10764.1614997323712509563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f102f58c40d5777f4c876c1d1c2cd67e3f2bb8c2a273d7526ee286ce2300ae1
Date: Sun, 09 Nov 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762682393
