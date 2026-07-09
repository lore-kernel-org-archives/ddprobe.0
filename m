Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF1C13A3ED
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783581514; cv=none; b=PdXLqm3h3CoxKlgNK0nyYZJWKgH+pOhHfgjiQaCKG+iFfFSQ6l6anV85jichB/pApvL7LB5OP8fu2qwSld/yq7Q/VpFV+PZrT6mpxL4MVi8AwaV6tm6ouAl662QX627Q7Br5QDFpuxgN8z5LpPsK2dZMPO8Ad3ZYJym8mCKJ5us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783581514; c=relaxed/simple;
	bh=gWoODHQtP4pmsiYRa/9sct3vB6vndcnCIKWdfoT7pZI=;
	h=To:Subject:From:Message-Id:Date; b=T77NS/o8GI8pXZ7VFc3L/V6Gi6TKN4zbXDu86fMkFQ+9F8yI111mZoLD26hsFddZjjAlfGcVuV29UoI4hz4IIMQNEuMCIGQK7MBCmcPpCnc5uo5GSo6ho58G9ThFcdjxonsU3JGk4aePLuqBTg9IrhaYGfvbEVwa2h6H2kbyNAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yp5eA5YI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yp5eA5YI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D7FC2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783581513;
	bh=gWoODHQtP4pmsiYRa/9sct3vB6vndcnCIKWdfoT7pZI=;
	h=To:Subject:From:Date:From;
	b=Yp5eA5YIN84TXUsY/J7sU96Q8YZ9BocVxymVEN91nLFe4G/p8165UBW2dHG+2mOtP
	 pbLf/GeHk2p6r3ytH/1Rws9OZ44Vttw1ykmHdczMf/eFLCAhNF+/w2nUJhPje994dH
	 vfDpoWWsVBv0jW/ouK1NDOAK9tJVQ8GK/rpSxSW9tIq89K+AAlQX5k80gkXNqyaRE+
	 O8Y4LZjx2uU1vSLuzJ27w5gIYfBuKnFsFJgGcmdg2PLSQVIenG687GrZSBiCJreld6
	 HsopzMg7RYOdk0BLt7hDWYKbF+L6JdWNyX+phdsJA0V5nr3RwXCjtOhO5hMak42Alr
	 vrB/Jj05jjiOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5DAC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358151370.10720.1854831024908264493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b354f7cf748db7d873bc81ea8f88b3919ccbe554a44f006368993c47f6bd8d
Date: Thu, 09 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783581513
