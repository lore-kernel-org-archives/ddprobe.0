Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C1B32AAA5
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766486634; cv=none; b=BtBf18beYnwuECK8AgSSKj6hcoJSf5N4ACAjKkFbaBERBd+KGXhTnwoErdFO/y8CUODrGXFA3PsahV5RIyJ+aBto4zrDBk0pLCAbLMeH9GVg5FgL2UOwBzMUGYq1jhZwcQ0TJcCGDqtvE/0YzNJR3EAS+sRAYTa3750TAzrO164=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766486634; c=relaxed/simple;
	bh=JDDcz+5AGqro5Eoq4jV0ND+hK/dAmrpjhPDLoaUlyzQ=;
	h=To:Subject:From:Message-Id:Date; b=VeS3swTgDPruQElRuxsdVpmAoyRFnxOyzL/+oOddDLu+ovg/PPqalmhJdOQI/rRAOOlx7jdmsdewXnB+GFGI6B2IBDE/DF56R6vGCA4Cdeh3JwMQKTk7fuFFvYl1ruXlf859Oo2WlIynMpYpHpLNOUWiH6sTGQq7Ir5AnLyCBCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJ5EnxyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJ5EnxyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5855C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766486633;
	bh=JDDcz+5AGqro5Eoq4jV0ND+hK/dAmrpjhPDLoaUlyzQ=;
	h=To:Subject:From:Date:From;
	b=hJ5EnxyZzdlLjxAwPvmU9c5XVGlaXF9JtOkT/OhqnmEdkVVtm8/hx/5Zv+wObz7x5
	 ycFNB3ohyZ7PbwAtxrMcbed8g6/pRh2WE8suykwwJLpYxF98FXDh17a7KiCfGGhuaV
	 3RXU3MNY3r4pyRKMVz6ewW/Z0hjLBfOqh/F/7+WfkGOrCUh5LYZ1koByXMaHpc5DrL
	 rC3vAc9Xv7B6+wcCN/0sYAISd9DXwvXSDUzGTUzNDqmD6nIXAHWnZY0apmYuleGIxX
	 Hd44UxDUuDVgueJ4dGPZx/zB/e1FZLOXD9GHVVCL//95BcnRFgT0DxWQGf2XteVZ0E
	 Z8fqIiZvcZZjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FA4E6F079
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648663357.23428.14379598874457837957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9cd9c587703668c69b1ff6b136306cd034e3693bab5f93a2de3a6427618d4b2
Date: Tue, 23 Dec 2025 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766486633
