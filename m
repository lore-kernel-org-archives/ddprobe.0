Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5EA3594A
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792284034; cv=none; b=MEZ6QaWAAvWRnRR3hxSG7J3jqjcrO/rMAaVA8/lQvY/xsjLAOquQSInssWHmX4fa03u2011kR1hl8G/3oa4xUfFSRjkU6Fny5KGlIgqBXH3RHygwXbdV89R3DSTYQ65+4Ngkomiu00Tca0lI8LScd0DgkKuSb9ml05cIyBleQfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792284034; c=relaxed/simple;
	bh=cXAG/K3GJPvnhZyGfH36eK+K6nYBQ7ZaabIsOqZQf+M=;
	h=To:Subject:From:Message-Id:Date; b=tBJhpgnjcY9nedFWgrzcKqPZy+qvsqUAU0oYYT2s/Cj9KkoPefkiuvqj6vbbrOtqWIg610xh9VhwzcotMfH7hFKw97LAF9807w+XRj+eoBrbhFYlihPNN2/bnrrG05AsvlLLzU2K4sSdmJd8Qagv0rVdOt/qbvWRseFiihghAFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg0haWqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg0haWqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0BC4C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792284033;
	bh=cXAG/K3GJPvnhZyGfH36eK+K6nYBQ7ZaabIsOqZQf+M=;
	h=To:Subject:From:Date:From;
	b=fg0haWqhzJcLIU17qKmtDrjc5b2/1ZFVnI7tZm4/K6MswQsnwmZCb9jHBHa9nFqOZ
	 QFHOaWH18eD8EaQNxtgQk1eGCVKP3jc5ySzlOLRFTfMkQSGmJUuDkQWpEhSVi6inJX
	 gU7LpemS8wbvoiCJCJS8nemL+gAzgkTlGZCvbkSk3el5fx2NlU3cIWCPAcOBJu/KlL
	 Fz6wTox2i24ahs5K8RqLXCUJwZvHGFHIUDqKDLWkChBmk9sL0Li0yII6K2ErrmOQGx
	 HyBgBF6b/hd/3+5vmiXWsu5geM8ep1E8v0Ph2JHjtETpbK7sWa8S/KwhQbIw+TsHQv
	 tDrf29DtxXTnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E31CCF2C7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179228403372.30538.16966958948050524726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e53e29f79a0494e20f55af8cfcfd88f42083591af5d91ebd7c5b2cf7d013f6
Date: Sun, 18 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792284033
