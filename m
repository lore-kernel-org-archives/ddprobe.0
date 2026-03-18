Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402083B7B7C
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773825894; cv=none; b=k8q7fUE6FLkW4xXUzkDCVeyhvPfx7FRHeh2AEnQLlqUysb4UlzfNzYwW8ERcfcmqlerQjC0ijUTeXt8gCr/Nxqua7beeVN6kqHtpLTIykrOWmxCNlm0BxkdP8FiLtlqBhAf+C8GpP4/rFTsbrSN5ERSrmLSib0t4eHk9WfwvV+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773825894; c=relaxed/simple;
	bh=EV8DsZuRdCaG+YiF1TBRdAhQH4iu3NXLEzjCIbpp7DE=;
	h=To:Subject:From:Message-Id:Date; b=ZCb2PKQQpsVhwLGtx3UOzYSLyy3y7QJ1sf4v5IfPJ008QaBKFkIxiEaAKebaTg6ep2HzSZIp9gR1JJp/q2nTMDuqNLL8rC0BLoo5WjH/lH7qNZaC6itFRiZgDhXGmUUYKDX6xy6P0Nj17Sbe16y/+cx2DGnvgcmDpEyvxyKjsRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLHL1XNZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLHL1XNZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C72C19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773825893;
	bh=EV8DsZuRdCaG+YiF1TBRdAhQH4iu3NXLEzjCIbpp7DE=;
	h=To:Subject:From:Date:From;
	b=KLHL1XNZ5/ceZ0iRrPeBl8Ra4Mm9lo0QWlq3mWkEbK4vYb5Axs44b7fc78ulG+Q04
	 lF+biEpJFN4hak8bsPzslB8ap9wz1JPxwXpLEccOMwuUmwhinAVvj2AlskOs64Ez3k
	 k1CcdsG9SpvNeQPydnTyuoeAQW6aUe+1Cy4vFfyMw/YGbLqbpfUWdA0xPsOdS+APO4
	 MIXUzAqGwt/nUyoAAf/IX3BYaVG8QFsRsX4eUuYSGQzPof2ctRHrIpDDMUV+WUFl6U
	 HkzfhIRrYAbN0hqA3Ouq+eV9Kl83DRpuKyx8xcbgRFMzC4kZCVoqG8d+eee7lRCjEP
	 Mw8K6mKs3RO8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F04410854D9
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177382589357.20734.2625366063119104573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7236a88b01a865a43e6e3147b0e8254af77012beb7d34af41f283e6f1abf3c8a
Date: Wed, 18 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773825893
