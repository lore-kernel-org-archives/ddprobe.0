Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3648B2B2D7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775789254; cv=none; b=cA5YbhAElul5R0uzGKS39RaofQgThUm1kIu4VmYBoZtH2mELhA8hn4C4EtIESVWYajeXQoqWtuGZ6YRuty5nGWr9C9EgH+jc81EjykRJc8jWVSpf9Wx2tQk5pc7h9lkTU5vDJ4GhGamjT6n5V9s6MTv4NkdsIqc8YxgU8Lfg84Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775789254; c=relaxed/simple;
	bh=Zq/z1hhWlj4//SFXYNQD46mheZRkSwgg9mphq2MSIpM=;
	h=To:Subject:From:Message-Id:Date; b=KaWIvHq1BefP7ljkkWahLRUE3kTbtgiil720UPHtiQEcuYdfPRm4CBOW6tUKTAmSPSpOg5cOrkwOdoE7tptCu+3cPzmH56e9s4bWg4Rc9AOxvd5CyBko8F38F9xBdg0zSeF3SXAw8pxh6L/mXqz+vS2OADcq9JH4oGPl9IK9QE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1viB82d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1viB82d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2154C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775789253;
	bh=Zq/z1hhWlj4//SFXYNQD46mheZRkSwgg9mphq2MSIpM=;
	h=To:Subject:From:Date:From;
	b=q1viB82dBjsNYS2eQMMLs3kq8L1QfAYnfC6xeR5EHBlgi7Ez3mclYsiY0KnVeZ/SH
	 vngr2WzoOxxPdrqHq4J0fz5j17IL25xYU4VE4SeUXC+82y8lbJTq4zR3SCZAKLcExK
	 SWQvOW0Nn58cwp6bbXArZTuCfqYcHSJpXT/mhM/f+/JV9guxyQuRk3bwC4tKzWuOM+
	 YYbxPkZ7HO7vCtKLtk3nV9v81KKv2fWUKzAAuwMH6KRNgRASN5Zv58w3Xyo7R8HvKK
	 L8eXup5HtMottBAAZeL+TV0lK/5nhj2dSMY7nwiqFzcmYTzGKmekce+tKEvG5v44sJ
	 NHiiXUmAVMsug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8A9F36B97
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177578925368.26031.715680184110234194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849dcd574bc66a7eecc69a7c8dc84451a5d311554150d8f93cae6de5a81319a4
Date: Fri, 10 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775789253
