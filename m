Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610C4423A9A
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781605594; cv=none; b=h4bARxNaEu6/rZLWPxGWgqIS6K8CVxksrV0UiXOWgoVoy9Eg39SUQLZmdeL6SvKr8Nb5lbgvaMJeGaogklbu5xPsGmDPMSe+38SqlvgiTKiS6zAhW8Zm6bZfrUXHrxsNNb3/p6jKIRDdSyJ2OH4INlk1Y6cLjU/V1bJe091oF7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781605594; c=relaxed/simple;
	bh=7ItWzzDgJwlmm3JV7MkMtJ6u2QLCtnNPDflgofJwRPg=;
	h=To:Subject:From:Message-Id:Date; b=lidy4i2CcHcZ2soXwjXQy4nWPl6ZbviCb3RAa6llJ8pZnOwS4Hv7+zDiYqAY7f4xSytv35LTAgOe0wE0DHxnIczPosQXfMmM3mfoUEHWeGR1YqMCLubYgv0YUWzFlZ/Fv032YzpFoBF23QDBa3mYIbUtTZXZ0IyVrO217HDwtrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nh2xQSfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nh2xQSfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0621C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781605593;
	bh=7ItWzzDgJwlmm3JV7MkMtJ6u2QLCtnNPDflgofJwRPg=;
	h=To:Subject:From:Date:From;
	b=nh2xQSfAr5KsrIlLjzLhOMgidc+qdEuGylFy+p3bLYrorwXmVOvXzsRx0jEu9wbOB
	 MduzFYQo9Y8FN+esO37RSSO3NczaqRGWV5Z6qqRwH7xGWL/9je96Pm9XGwRhA9nsVr
	 lYOpdFOEu4dY4Mmdmsvnb6NTJltLyVBrq/d95QskeiV5vSKbL0NK/UboKQZSFwEhN4
	 nRylVq6LVtQHHVHfxmNkJjijFJQLaCMdQQr4pu6ju2aNPziZ9DP+mzkqF8+EH4zEdS
	 n240jTHSxLc+x2KZCHzev7nTMGjdTzrfQBH6uGNrgip3yX08uy3piOjFiNOrrIBWtF
	 S7uYwqcKJEO+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E18CD98CF
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160559371.6538.12039456494887499483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a65ee7081aa7ba9bd840e0862fe87644049b467d823f08458db359d38b7d39
Date: Tue, 16 Jun 2026 10:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781605593
