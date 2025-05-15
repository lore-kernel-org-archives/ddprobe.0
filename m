Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345542AD16
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747302594; cv=none; b=dJdowqrM+wEaY1pi8bl4CfUAiO43ohX4oCIyyxPHV5Bpe+UC+/vc7Uew23aX/l28SvkQQi/B/5H8B4LXeAKEk6QDQHyL6UZFLvV+Uusdw/JF2FT0yXXxD4up2y2e5SrAnPLoR93HSoolHIuas/kUytImOUGV3d8SJg8v0R14nVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747302594; c=relaxed/simple;
	bh=M5vexfXDr+5wBsl++OQ7iphT3i+4J0ThZvXKL/cnehg=;
	h=To:Subject:From:Message-Id:Date; b=FskZi85YXvtEnyrFwSbWlz/IVjYlNJ6AB5iDe7Com9ngOKgCf4vFJRZqnUMY5ObqfK/mva7J0c661IfCyWcAYOlRnkAiN0D7Sb3mFudqISYuu5GxxLNWXqFZKFzKiXngGezDo/dQAO2/Sr6lCIFzw6PQR5kQngXXtINQ/zkohPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1sZ+7Yk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1sZ+7Yk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4116C4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747302593;
	bh=M5vexfXDr+5wBsl++OQ7iphT3i+4J0ThZvXKL/cnehg=;
	h=To:Subject:From:Date:From;
	b=U1sZ+7YkajMvcp2jEcTLSpUVD5IWif+S/W4hFWUZDewZ4qqVdaYbBhrc+N3QPz/O3
	 er4sxW0Oh7/cXeo0v7n90xrJX6oaELNiw6lox6trhfeSRRxiUc0DqU+han/J9OEoms
	 ORdcrGAYINrukp8pEQBkkNTgDq0wP3nTRksJttDjFr2fgdZ6nddKeHRiKp86rD2AMJ
	 Mm+jTgdgAlvGSQ4r8tTQcYfJLdhToHgGW3FgxgFrkqKDJCbUBc7az/8S4uaRiC8sJN
	 OtjbWkCeQtgzhtTXeBh9RGiW84/AKV1w1IMliI84+ZJF7ahaebqYSwI3Rrooa58YSH
	 8lYl4dU83gGoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF63C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730259358.19089.952277599703804866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da6f9e1fcfcd540b7bf80c29aae4d546f12ec4bbeb04e7f20343d3f88853831a
Date: Thu, 15 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747302593
