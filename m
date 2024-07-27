Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E97241746
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722079554; cv=none; b=SOOA0qF/bVlN0VAto66dlLp7L2dxVcLkluHmDazbP8XhmNM0lUOOnQxxuJwsPZgOOmkSA2HPxfNfJmP5hHNSO2WstCfPXib6pBKcs7Y7xx2rkIhD5F3oZahsRTIVcqm70CKhoMAZylc1PjKNsUz37DtqpnxlSnNYEVJYlR5Jvx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722079554; c=relaxed/simple;
	bh=mfQzb+CYGIIscjvloXhi0w19JEoDErSXJTq3+LxuUEA=;
	h=To:Subject:From:Message-Id:Date; b=oFQyRjdt/2LdZFvlLJX65GPTPdzn+IhkzVZjOV4TEmZJaOKlOKli6opz1u9ssXfwfSXVNtVsQzz38N4vFRz50yUUR7WF0f8k9T2uZN1udIa/wn18wCfekUStjLS0cuMb0RBDmcXj1IPt2Tx3JVz4x82zP380PIs9cgRePuWxq8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1kt2DMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1kt2DMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEDFC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722079553;
	bh=mfQzb+CYGIIscjvloXhi0w19JEoDErSXJTq3+LxuUEA=;
	h=To:Subject:From:Date:From;
	b=s1kt2DMjW4olvN7rALyrXGffE8N6LfpaxQCLF3CDHuz2652xNv5Xnkfl4Z+YmdK2b
	 +dY8zUc9KdEgnlLMK0SFkP7yAJMGQnPCPHhsCjsdyIQQ/gPTd7hYoY5c0N/ZUqssqk
	 VMVlZ9MVxRPcS025/JPQTs0MoKmQ1WcjyXJeI7G1EHJiE+uvSQ0f0yHmxLWEW7toq+
	 jyatDFVIrEAR41bYKW4upafYZ3XTEbyZJmVsHo/nI4Hh2TyB/YiCAL++eCZHWzZ6+V
	 mmmzHhdWcrkZZaTTnfF0YUqvUn1HFBdC/e+onPBpZFibSVw/eaSOieVjdWNqpnblpr
	 zLJZZ/URrOeaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8991C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172207955366.31855.4919996405267200640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5c5a837b762031bef384b76f609f46abd353632d86ad86557eb8953819990c
Date: Sat, 27 Jul 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722079553
