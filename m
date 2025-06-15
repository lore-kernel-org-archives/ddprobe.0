Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B3626156B
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749989394; cv=none; b=bv4F8rO8CtbAzXyM8xXSj9i/hWnWC+a9Nf8T0grZWDcDEK9eS7EXolQrWzhu3yZfOkyMQVBtxFbYbaMC967H0CG+A2zR5L5m5AIuy71RvcyuFweqCZtxE6qEgUOqzD6yz4ZxCQT7UzTYUTXgzQOtBn1oxFbSdqBofzh8qmos7og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749989394; c=relaxed/simple;
	bh=jKlIKCn+Qp8YulIRps62xBNwZqXMQK/vIya2Rs1CtGQ=;
	h=To:Subject:From:Message-Id:Date; b=fPSN0nEadWAPqop1vM/v4HJuMgjvLFQXgHKYO/A+Z5EppXMceTdWmCl1GXvgLoh5EDFsBPj6LKlKc4NdJhORUCLc47/DeS1ZG1kqxn9brgB9gqdrhF+ZoqyklHNDpiZjQpXToGuIfC5/xqDe/AZxvZsaTPaOkJIX7XtYT/Gw/sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hH3B8OGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hH3B8OGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B800FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749989393;
	bh=jKlIKCn+Qp8YulIRps62xBNwZqXMQK/vIya2Rs1CtGQ=;
	h=To:Subject:From:Date:From;
	b=hH3B8OGdfGFnetXO5A4ZWOSYaldTVNnmbISzt4cfMzkP5xdzzeX7kko1U0epwJYLg
	 e6K0TdLCvOc7UxXmRdQmd1kvYmc6R43uwOXSB/tRbK+6kA87fstwiIdb9tsljEwF/B
	 UWxYX0afBmF2AVGBjfK6gILlBXM04GffLPPscFZ5zvQ/s5+yQKB8ojvu36FpKOc5aa
	 WFLy0DOzX0lMMxE1VCLwIoAgprU84z/9XI0IN7jcAPcfipL9Ra5Ds1hsA6LOyzFmcj
	 RGOBBX4vpK9HWnyZdEXscTxscEclI4Fa8RacvtyvrOru5utTj0So5NbnScfyxM3z6o
	 4DkNBasFJW0AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A194BC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998939363.2537.10954039880762447869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb8ecbbeb09f143bfb523e26658e4589dcff491e5728fd93f6ad6ad306ce747
Date: Sun, 15 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749989393
