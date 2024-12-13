Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214921DFD87
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734095154; cv=none; b=uUq5TiCVJG0q0O9OsgUOMQLhSXydO6VbpY4XMbscmo57iNsyDn2aX3BtbXS26LGOotTfotQNVGueTcmZy70YVolwpbSqWLEGpOjTj3P4mMH8uoZATGqdppbkBgBoKVn9LZYHTNqAxoDk49qvdTLKizEzq0Ebk1R//kBEWh4B3Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734095154; c=relaxed/simple;
	bh=7no+QYj1HbhUgT11YB+GZG5CSwW5ATt1dPq/o2Y/z0I=;
	h=To:Subject:From:Message-Id:Date; b=TZvBmM48lf6D5kKOZpUW3CetVHJkN6XAfhQzj0Ub2Pw8k0KbzKvugA/AOG9QaUasXzFzXUJxNy+OXVWD72EB57BfNBJgwoem/2ZcgbVK3rb2XAkEALM0Rul5XpPHXHjcMBqImQyzl+oIo4PyOi/+Os2naOTZhuLOEZvblMWyM1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Spwc4lI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Spwc4lI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A30C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734095153;
	bh=7no+QYj1HbhUgT11YB+GZG5CSwW5ATt1dPq/o2Y/z0I=;
	h=To:Subject:From:Date:From;
	b=Spwc4lI4rE7Icd1xRKyV2GJMooZIu7YTmHKNNmPWGUNPhMIyXwJPDHZXwK5JgOvsy
	 y2iwlmhCog66tyCB37K7hulyCMl0bTtEB6OwMrCCDbPLe0Oi2lmfEXlkJu5bVLrvXB
	 /Woc3ZmA83P5ZI7NN42QI8oU87EkOjCFNXOVgKy0eimhw3Aeh778BfAWNvr5Rh96OB
	 oFPx4EX1NNGRBNqMNSrxXSdzy2NWJC3FDbBlObEhZkv1TgN7RY/JqMr7geYFP5eNyS
	 8NCMpJrl71baHL0F8Icsk4+ot7p0nW0LA8MVW9nPpcqCja6LdPlhf2CL/cAVnFPndm
	 Cf46nbX8ihzew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE33E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173409515362.21960.12010432557344233893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60449ed5b1c90ae2a4935a94416e3ca38bbe3606a23c6409fbce2a6ed63ce3c9
Date: Fri, 13 Dec 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734095153
