Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D41A18FDBD
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780170874; cv=none; b=Qz0pCPIzeiRBDJ1SsKSGO7PlNyamiq3Y4G3TtrcTfYK1zKZw8qHO6qM+9VfQR2BjrAgPKh8ufDUFC3ry8QTSMFMg90rLT7B0IEMXdZF05qkL0I7p1y3CiYDrG2IDEfnenFJ8zBxISFfGTgtTB8H6y2j014nUOX6fU/cGOG98B2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780170874; c=relaxed/simple;
	bh=f1G2pFWAbL5ievl1pALAac0RdiLUIm1IfjsWz4Mv7oE=;
	h=To:Subject:From:Message-Id:Date; b=lYZgxQ1w/qWd/43R4hLqC7cVGCmk19sbv31GGs52NbB3UKIwDncgjsksWA20u9m0doHzUaOtU6Soz/QLn++ooWob4q0hxTBtXCmjVsGdytlBO1ZE6wW3wbHsSBney6wIRnjdWLoPsX47QX/cEqE8n9eaEBZZkOuq9BpjgRb3e6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kykzRFX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kykzRFX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AD9C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780170873;
	bh=f1G2pFWAbL5ievl1pALAac0RdiLUIm1IfjsWz4Mv7oE=;
	h=To:Subject:From:Date:From;
	b=kykzRFX4rcv5PeFXfh+xPqKL1TU1VkCqT/Q5Fi0/eeCL6GKu9e8LSy9aIa5PWGk8S
	 qGzGwsG1G9gCsSbe1OvwSkEm6xK8DDYZlo2hZNAuRoDj8d0YO6lGtXK9Ab7HuRM8Ge
	 XoSuF7UBYAKTuSIQJ4Vg6G/fCZtT7G2f8KWa4E+V6nvlUgICwzb23xStwMKyWmAZxB
	 eoQYEVc/L68BsaneVKwMB/jm5i2jfpRGsZRPszvHcYu+ypohf2WLeFiMv4SnTXsnXq
	 Vbx2tR6WoysY9qynJ0bZv5NUAZc3jSmWOR+qdZtT2NnWolT8/VAL9kCa7LIu9ESYEd
	 rMf4BuVezpYOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2CECD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017087368.674.16427295159251409199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879f8a550fdc2f2bf5b4dc7c0549852affc25641a5cbbff9be70483aa88ee2f9
Date: Sat, 30 May 2026 19:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780170873
