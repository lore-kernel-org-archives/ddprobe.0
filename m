Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F491A6800
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787424634; cv=none; b=rXk21PbzDz9MN0LwiM8pGInm2sxWy5hIWlUGulPW0Lgfv5aQRK50KCxbBo76uTYOgM3RhATqtErALqI5Shso570AowgDGjbk8SRM4xefg3FvjKv9VOkF498kgYNiKwcVYa5TxWEBK4rwTAT4tryDe9yToy1yFRv/3nRtdbmmLUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787424634; c=relaxed/simple;
	bh=YT3PkTp2g6bOYAOHu65UM3/EBVordgNBUxWMYuI19Qk=;
	h=To:Subject:From:Message-Id:Date; b=B+OpkqRYVguSXMXx5/6z2PHHemCHRn530xv0mORGrQVXRe4MpAc+HUQs8kX09lGj/kywkquK87TjqiSUGSgsR6cJlNfHGzNEzFzcYaZD8vuyDvQDy5K3LlLDXUlvIG+PK5bmnb4xFUwflxjGZz6Zpf1hfDyRZI6JRk98Bqn7VEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNDwca/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNDwca/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68BFC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787424633;
	bh=YT3PkTp2g6bOYAOHu65UM3/EBVordgNBUxWMYuI19Qk=;
	h=To:Subject:From:Date:From;
	b=vNDwca/rn4SoqHGFMa4iA/r9VTUDkVGbkk8jSdok5O1XmfKwW9/Fc+Xjo13yh2puC
	 KtV2gILaHivglp69+J2Q09LrMS4+cQTviQArnOtcKjx9btDdu65wqmYkUNuuMq0FR4
	 Hxa1sxoTJdHROkvz7wmjbEOi9rPg//kfZ7y5dam/kuEiL0yg8bwWpJPjJXO34BsewX
	 VSl7zzkHBlbkrsO71YQw5l1am172+USbKLoo5ypY3wN3rqEPCUKnZdvBIzo6tEknsu
	 WswpyHhgPBlaXHLZiGC4WQwwTb2H+YXsBqkfQSkRoRx8Ys+w2CVnT9ArYJfaHx44hR
	 kijeruiT8rCcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EF1C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178742463369.20719.17590507177674153494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea22cd2a5a930049e50b83857eb974e08babedaee36abe96dc64f018f1b7e4f
Date: Sat, 22 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787424633
