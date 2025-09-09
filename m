Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5C8220687
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757402395; cv=none; b=P5dszfxWOwjPLIQ1qWkQ6H1Q9e9NdNhrNqaf4eqYTRc4iIJx5EVWIX5sZ0OnecVFbutaxricHQUA6Zs1CXsUJz6decGyKCk2opAQHitaSr8h4gy1kCMDD95ykzsT+rKt/hLiIxLsHvOaTZT9D5f8rWnCi/hDz377qqvkApMQn2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757402395; c=relaxed/simple;
	bh=Y6PV+ABlTNaJVczWvLBP2JoMLJY6iIT1tKUwRFhudYI=;
	h=To:Subject:From:Message-Id:Date; b=aPSZ6/2qf7LgKJcuVkHYoYoVJFXPpD7FX/cMYh3YnnGH2Td/rog8SsYLZKJfucrLE2VyS1s5x0Gn2KvUlQ0cmgbPdDD/IeKmJ1//YzwbLRAkC1kF5O+d64xIR6EEYi4zs6EODfSJBrLS4DRotu0GLQVsXzeHuqK2ANWyLzXfPvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IlPza+eE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IlPza+eE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3C7C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757402393;
	bh=Y6PV+ABlTNaJVczWvLBP2JoMLJY6iIT1tKUwRFhudYI=;
	h=To:Subject:From:Date:From;
	b=IlPza+eEw6UXkBiSnEPlx/5bqUkZTXJ8Q4BnHIokdJhEIvDyq9Y3OVWhQxs7+2UUL
	 irDPxaHhXf2gZQKsjcaGK0ixanifiynueyEIOQMvvAGSxGhO0Furun1obxdVVKR21b
	 hlKPr5LfgKNO126L/qW1u72vio0irS2U9CkBr47qU3oFcOSEWQK+VDIn/Wq2eOxvos
	 rfi8p93M8A0SEumkFADKZlpgfbNP6qNYI+cLU+CRfkn2nvznro1yMm10zokFHMRxLd
	 4dUYY54gIOn2eQqo3MFVIyenIHuBJtCPfBn2e1mgCthX71dE4s4qIF54cD5h92bTzv
	 DXViiXRIvXHAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFFBCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175740239362.4570.5305116133975977727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8d2cf13b26ba4f69e514145df780f13d3e4c182e21333bc3297e7813a0923c
Date: Tue, 09 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757402393
