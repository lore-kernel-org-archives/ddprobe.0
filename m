Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5789717BAF
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717834043; cv=none; b=ioeJYWLt76T+NnK6wJUBgvr4QBcoZ0OacYjm44Cvnz7HFxjsnuS5K0XzaEjI6mpj1JFOb6GqsFth6XK5oyNVv+QhAFKVxWF69Ni7fWp8C5oc2AmiuWE5fbFbSAijf89C8MHqWSOlONJVFSpC3bqkxSCRmjWd4hZo1gU29I+Pgaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717834043; c=relaxed/simple;
	bh=BW030bFo/0VdbiktruPFdV0U1mwgqwHZib4hlkTCFQw=;
	h=To:Subject:From:Message-Id:Date; b=qHSvba3cbO2ZBp6c4eb/G9xdwtvPDl9fz3EH5g9J191ezm7rtu3k1SCOhS8IsZRtFPhKBRKFpUWsOIPZQDFEbohTwXe0vShQaPYARkJLIY4vrRPig8SUZhtE5gFKGQEA37k/WleSzn32m3YZBBPRdzeObYbWYE7zq7TjxSVZMVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghtWqJIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghtWqJIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC432C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717834042;
	bh=BW030bFo/0VdbiktruPFdV0U1mwgqwHZib4hlkTCFQw=;
	h=To:Subject:From:Date:From;
	b=ghtWqJIrQie3tvJTpy0b6YxYlrknhlvjNfQA+WGLfNehuxIf2iDoma3fAmpKPjV8o
	 T6SfjMWijWKMqx2BrN3ul5K9dHh/73hJEFolVukpvLED7y2+XTTeS8dwHKbGv46ZhU
	 QqeFoFyccVaccSBOglexvPvmgJEw3NZhNqD4px0G4J9PK2RK7TSDnMFQdqlIDyGTUR
	 pCSwpuCb5YCtRq2VswTNWBP4VUZMg3jtUoJRderAIDpG7AqrKwGQRXoKHNPtPN+Jm7
	 dk2f2ui2wQKMxCV/ATZYDhhafx3/XpUCFNuyZHluw1YsG++7RHYL4onJ/e+NEaNM+r
	 j5rlx+j1PcVmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C747FC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171783404279.29591.5364646388841918960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d22a127d0acaa97c1d82b394155181b835491e10058ed06e4f3932445cd3187
Date: Sat, 08 Jun 2024 08:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717834042
