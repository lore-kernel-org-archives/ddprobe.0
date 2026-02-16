Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF9838FA3
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771283694; cv=none; b=D39aJqdafsbt+tYlUjsH88+ZFkeagWkRgc6OnfRW6wiPceiFkoZrvn93h49cnKtNvl2AeLD3wdTGZ/zrUgxhyGUnLP4aRd1PWK3b0wCc5wpGiKlXcuGKGMFDVZRFzg27oMPdzPcO/X7JjQA6p3n60qt9GPmzfP2sYw2LjpD8wjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771283694; c=relaxed/simple;
	bh=DugQ3ONZwHXaBUj6tRKjEKuLyI8vw689ALfMCSI6EDo=;
	h=To:Subject:From:Message-Id:Date; b=H0eTfLZut6yaSy7T+iThNZDulWrE86oJOBk+Br6vVQK6VFLKQkGDmfjVYpI7nSf0ZHgDJqp975hcY0adWucEm736hnarFVD5V6yL5ywSMykHyaOZjaXp7BhrwGAPEiWJ8Vh19P/vJe/tYP+1+4TuQdFiVj7RKpRHCjq/VcaWwQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZG07l/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZG07l/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE69C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771283693;
	bh=DugQ3ONZwHXaBUj6tRKjEKuLyI8vw689ALfMCSI6EDo=;
	h=To:Subject:From:Date:From;
	b=OZG07l/3fQ1LDLTimpMcvlZuZwyObmviTyZ4If/Ba9SA0z6dpbIDBhC0zru2AsWR5
	 qbgSS126/xVGduAu6Pl0La5QyIqr17aFLGFU2xhsLa7e/cTcDaZ27em+SZQImohuFf
	 PpUZ1VdwL1xukIsBpj11+l8h8jSvU1TVFPfnP1pw2m2SHCgK/dToIA+bumDSZWUpPk
	 ebZaTNn1cqWRBc2Wwjkmf38eo5Inn7qmiWY/P8fJsiYW4KvAISkH5/5VRqF8cof1uy
	 JMZG0bYvjsJIQCUGR3c3x0a7xDLTfCuFPumc7osmkpESQyuQAoT2jeUhy6vEvkh6gr
	 5Li4zgZhcGYTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987C7E83840
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128369358.5194.1069262086033107246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4421d2372ab3337ba5023a909c214afa29b4232e712a85824c7cb958a2c1db5
Date: Mon, 16 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771283693
