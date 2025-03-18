Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472F035280
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742268595; cv=none; b=Lt8qmJBSdA6CyVVJPm/3nSFNGAd31hVTA6G3hsX/PTX/1+YifSugMB5Ce+Z3t4xh758UbM2mXwPr0tsJDKzT8zKGrHrUs2zvpaKVjrVARQHbNbSZ0Is352nIQ7WkudBJzr5glhkgoJDCkYk/83kcc2cm4U7LD54Gqj6GetAgL4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742268595; c=relaxed/simple;
	bh=Iv6nQje0o27+c/NM0zoDiCID/IOGmDRFW4nIAIAS/5Y=;
	h=To:Subject:From:Message-Id:Date; b=ns/LR0pW6bX6QAe9DRjzwAWPBF/pBvYsiCSlb0fhZwrL3QAD4AO2bwdSplOZ11zAnV1NXNaDote2opJej1AOlt5QIeisnQaVX5nlsXR/4edixhWcIAx0Ep3B+y8CMVb8j5mIs2ofc15T/1pui680jJeLbt79m7QQZu2kdlCFr04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMjCMym8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMjCMym8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77D8C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742268593;
	bh=Iv6nQje0o27+c/NM0zoDiCID/IOGmDRFW4nIAIAS/5Y=;
	h=To:Subject:From:Date:From;
	b=hMjCMym8SUgakQIb/iayusO3AaTyxDd2qPHhbUCzIbOqWELhEo1TMgnFl2sfciZjk
	 v+K6O0N2rqx5GWnemujWTGXf/7R5ryqSt27hovbTOrqEbO9sGf4pdv1w59f5hckzKA
	 j0VbSH9YuxnV+a3rgFnG8K5OX9AzVzNFHS58vRMsccuMxJawNVaLwIRWofBomWpIIv
	 fr5HB0NhS7N8CqY0AwYUcwhGOB+qyfJo3cS1NosmZzKF2G9eJZ1W9F0rECkHbx9TGf
	 JnNF7caX/lI/iZl92T1tROjwjio8hogaMU8KM9G5Zb71d0JkH3o+g+H2PmEREt3GBB
	 lxt9DDTwnedOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2FA7C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174226859365.18815.7118402705150112559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5db160232346bcd9f191cfc4ec9a7bbc16d0df8d81a35def6e959d6af3dd72
Date: Tue, 18 Mar 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742268593
