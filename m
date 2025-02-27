Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA64270022
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740631734; cv=none; b=tyJoafQalMlRZ4YEnObS1I+BxWFjm4Izw6D+yo/1sbhMT9X9INCrkiTGAQOcFIwumx0hxUFK15H1RcJPLu9pvdHiOGh4IUt4CZPaDU6yRrh0IrcLvxHBGCWVyVPznIQA4d6Z8W6OFlwWm0zKzvD2KIHFItvmKzTyksUow9Y+/Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740631734; c=relaxed/simple;
	bh=w4Un0k3VybSpYqMuEtN7UMkcicNscTwiHVdUy01LWYs=;
	h=To:Subject:From:Message-Id:Date; b=FgTMLdh1wE+nhevqMnvRtHq/x3SOm8K0ctF9hEbcvlV8CKd+Q9m7QIJmYuhe3ncYlcj+9MXdOocEpy6mv7inycDKOSysSL6tpYSHOkQz1cCjO//r1N4XzHOfUjU9+dZqzlV6rxhiJt7O9oaBOqENEqDDuo+5RHM1pJu2pPmKf5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpkcMgIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpkcMgIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E97C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740631733;
	bh=w4Un0k3VybSpYqMuEtN7UMkcicNscTwiHVdUy01LWYs=;
	h=To:Subject:From:Date:From;
	b=VpkcMgINbsUtVYGpHDjX+a+79VpT/NQWDWcS6LL8taR17unvVDPF6/vVMcv7I49jx
	 9rpmIf6MCP01ppEJdm/DXChWU5mun6mkUgsWF2pru8i1B3UCXiAtJeQ4kXdQyrDKwJ
	 MPbX4hpw7Q8jGtNspZdF1nrrVnc9MTEWy8MP0+2Oj0nxk4+yj6IfTtN6wbR0KWh5cK
	 ovgD4832pPL5kNuFq49lrddO1kUdMuQqre4lTTBfCIQtGdbk/t820uykGQ6bxCkz5O
	 e+p27Uv4LD0XPbbAbi7LUBJpatFmYjufU7tAcu1nvJu/P0X0+wSYhzPVMpvkyyWJGz
	 mmPd0hzfv5WfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB23C197BF
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174063173362.4567.10971254304660574716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51dbef55e685d275fb3b020797e584d3c927ad644b831426bcf60b099b0ca98
Date: Thu, 27 Feb 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740631733
