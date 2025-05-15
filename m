Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486EF1F4163
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747336194; cv=none; b=nVU2HWKzvwIjH4UDrhC4o9TWb1mJu7xZ3dRz6dS2H/PwHD2Bx7PPAta9DRqg2dTqLiW+gvGgmg9A08IRHk8LxeK4LGuh06t5ahZguQrJBfcnbgAk/CVh5ciYDBRzFf1Cx3CfQQP/oimSKKiZje+a/aSTobkXf79ktMNxN2G01aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747336194; c=relaxed/simple;
	bh=b4tQ819NjY6gRxmCCOHscw9mXXqAzciSzOY7xhLzq1Q=;
	h=To:Subject:From:Message-Id:Date; b=QCxuptMv6mPn6DAGTAgaNzLmK9ykQgFtRAENxujufHIzAknbZAZ0U8gwHbAvLp4H0Zy2aFdwkwdYDQK0uQXjV3yvO1v5IImVKbTwJNUu5U2gB6mbgKkuYhGk9GYbl8O/nbZ37pbPBK8LztqC2Do1qVRIz1vgaBKzKUz1hkjvK1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBMCjlQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBMCjlQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21DFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747336193;
	bh=b4tQ819NjY6gRxmCCOHscw9mXXqAzciSzOY7xhLzq1Q=;
	h=To:Subject:From:Date:From;
	b=IBMCjlQMa4mafSau21SddVXl5Hn69l8FA6yG7RvXncYfsLh5vvKyrgMvXn9pF08A2
	 /ynTssvprRmSVyVKItelU0QnRrL4md1IrGyyyYpovNOgFGhaNMU3AETWevTfNY9uEq
	 8HcSF+7eWrP5Xgt7YDglbuoX/zShhj7HrpgRzy3Q1bLaTi2SPmTUWp16wOTHbC5kfy
	 5SPszw9hEphE5nfkS9y2DXM6eKlaaeYX61L6dy81wA+1VfhAs30kajJFNnGqVIPA+B
	 LNQgq4Kvpt4Ia/J7+Y+nuI5hMnA8bRqhgAYGm0I8VyEQhDNdw/tIyLD4fYTUePLYTP
	 uDNsKVu9ja2Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90713C3ABDD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733619358.30607.18200440823732629759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79582dc9fd6430012f9a3aefaf5f6353ac29ad0c2a99ad4f74efc2daf308d7f1
Date: Thu, 15 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747336193
