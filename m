Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB4B439F90
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787229634; cv=none; b=QZ+fTHoeNGkkUTMGd+XZQN1AbcLkS6khusB5wBf1U/uryMhGhMaEjaxeMRsRnFH2J2ANw77GpR7SV2Yzq/3pdCDY70PykMqEQ1WgEQi0AXmC1wMA2koNLLhv5DB0wXXn+OKgzpuq/h2rVxX1Y2B7x0p1TjeL/w7V1A7gAobdA0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787229634; c=relaxed/simple;
	bh=oAxvMaP6LfRVW4d6DzHWV1gzu/K+zCdrEjR/+72Ch9w=;
	h=To:Subject:From:Message-Id:Date; b=e5UJp6nzAJd5Z93pQdwp/lgj5iXfz5WL50JE7QA27asLItWBTh+SWZyJwthdbG4MSKJK7qzPCYZqk+u57XirRK47BMZGWNYwwrAxrP7KrqebkYVkYertsDlY916Z2qYaT05RV8PojISUR+cY4OuPlJ/HIgN0b0s8bGGfxYr2tdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4a4uIrJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4a4uIrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE684C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787229633;
	bh=oAxvMaP6LfRVW4d6DzHWV1gzu/K+zCdrEjR/+72Ch9w=;
	h=To:Subject:From:Date:From;
	b=G4a4uIrJFbJg+Av6zG3LpqcdGX06xCKP0fi9fU+KFXevS7y9D3X4h7Si+YWwSshdW
	 xr+5EEvAMjzjB0mT83+c3mzQk71lvlgMggJ37fR5coY+Wr7O272KePpxzC0hjuJWkP
	 OttDdFb16wf3DA8mbwJSiJPGKUjcgJZqbMo1xRja8U2FBC9hb7nRgfOrvbRtcad3ge
	 lN55VWbNMcnqhFPwVqh0ouZDBgwltf95hbpoD29UvG+xNwG4ZvABKDV6ch5k1S3dir
	 bCRQTcxYPAg4VWT9DG3x/FL8a0yJ0DR1qrQrDkjJV3NHJGWfpDoMIHskuoC6CHX3Ms
	 66Inc+9WbLedQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF4EC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722963368.2631.16882287633269885200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea8de4b874d726a95f57d537683518f2426b4e14bdb155b4cf1d6e9c50ba929c
Date: Thu, 20 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787229633
