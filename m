Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2A15339D
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744474193; cv=none; b=jXeo1ulNJZOVqOtAgJHQyP8SAZVTGuMvsNAhJExzdTG+5dGNp5+FzElNlx/XYmlmCXmRHSVGhikXbBFMXZ10v52K4sREHtVtJfHchxBfKcr4ip5XD42q/fNtNuQgf21AsI8juvFO5wWw3lMjqOpeap76tDTIRO2wK5wykqmDasA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744474193; c=relaxed/simple;
	bh=TYMoTw8PdgwvyBYntSDRVYXIrQbM1vX1yoks8rlNMcU=;
	h=To:Subject:From:Message-Id:Date; b=dGbJdK9NTxyWWvEP+wwgAB4PrcKXOowUdVOGt+kTL8gTUpJkaYDErVfMRX4mWIWGffTWDI4VVJGjSgPxdxS9E8XjOnYx1QF3nnBPi4YNWJb4hGfwiDIZSEEAzZEvHOJC/whRnELBoP04nab7+UauOp05ZqVi0855+EZPYK6KzCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQO9JIhM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQO9JIhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6609C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744474193;
	bh=TYMoTw8PdgwvyBYntSDRVYXIrQbM1vX1yoks8rlNMcU=;
	h=To:Subject:From:Date:From;
	b=VQO9JIhMd3rPtITLejqyrpEu7HYlJvsNItdJj3BeWRNiuK4Rz25ISzyi3V7mpITSd
	 gCz/PsQ7VNOv8aoXo1JUefvXU08046dCvUW+ErJH+HbbRhxXOpdZ9fWh6+aQ+JgNHr
	 oOpJ6BNoGZHHH+AFeMEk43bAyF83HPXMsziqaPSteCX1mWfFmpY0oMMg/t+m4ATQ4l
	 es90acSUS+5z7yMhZxNDC1nXYrZul94woQpJ3pm35o4FSe6lQ58bI5xQepQnU4UAxH
	 rhBfYaE9hPK/Rswnv9W/DjjosRw/sTxeXliILOBMZIPDAANblow4+Cys4iUQR4rSvl
	 54GkzvJAgf+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F54C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174447419358.17293.15420520758680086554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a58f9ad89d4ff5097bebb111b9538063fc792f703a92b4d0a669fe447dec820
Date: Sat, 12 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744474193
