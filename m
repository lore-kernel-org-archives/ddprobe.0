Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68184A954
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 22:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718404703; cv=none; b=QiCU1pgHYOUYhiC06EtLLMZVTTsvAFaGY6ZvFyxTSqfstCRJLmel+X6Z+sFwHx0bTI931CG3Q0nExqOEKQAAyWGP4Dzg9E1g6GquCuY4/QP50wqjR+RJTBujMj1H+OX2Nnl36e2RufzmgiDXTjK/rZqVRS9qnA2VCLjdzmzS02s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718404703; c=relaxed/simple;
	bh=yLb3UKH77QaFB5LpGRwpjoVR0cc6fwJZKpvlEbf6IU4=;
	h=To:Subject:From:Message-Id:Date; b=rjBrVCe/dcM/auiV3mrzSTYKaUADnRdJZd0rO8LhrlD5bHgpQf6Md0DuSZZ8w5absMK46/A0CKwgxW+mLOYiezbYVDAMXW4baRAvNYKyoWS0dfhNm0h9JRpvDhkPa+19dsE0VJwcs8zxrYaw2jCZ2F+JjRiXsZV0Cem+NW7HKdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8nqHw8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8nqHw8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED19FC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 22:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718404703;
	bh=yLb3UKH77QaFB5LpGRwpjoVR0cc6fwJZKpvlEbf6IU4=;
	h=To:Subject:From:Date:From;
	b=p8nqHw8fN7JQB+okcz5nPl4GoBAlZ35wQQpl0CkCFrawegMoNHSGo6hU/wvAc2Z2G
	 a5p3rOXGMyS7MmIYy8/nzNDbneiK+9fpyyPTbSNYMoCntq3RBIxW/G/mfsCuF/1oXg
	 4A04uX1hmhsAcr3UNdMBkQImRVkpy85t3YbzsaeJwYujDhCQ9y2h1u3jNfg9wFr5/M
	 edwqcKvoAeoSqZfAF6GwtcRD4hJPxEOhKK8r8plZvEaW+v3ue5Mlx9EcpcZwGAtW3J
	 oisVZd/OvfCgwJgAwRXQJwm4wZg9jmvVuREdgpp7TTLbX9ZVikpgYncvUYpaJRe2YL
	 V3dCyL1tIC1yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5149C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 22:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171840470285.6663.10594037687551871284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0447390dd2e76c4c20b53ba99599333909568ef77957b3715edd7f1fa8a693
Date: Fri, 14 Jun 2024 22:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718404702
