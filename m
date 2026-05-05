Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271013AE18F
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778003854; cv=none; b=qkFlVpG2H24RKCSlFXbUqh9KdDna6FLftU+1XYwYA3UMhCDW3srvlIkiQ9xLSZY0uobQRL4N87v1KCxGRfE3HdC3gGTuGMVjVlVX2w1zfg8/1zc/40IGWnRZq9VJATnAesOh7wZS5W7WqcpOC0L3gd5ZjjscQpvDh0lrbkfHSV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778003854; c=relaxed/simple;
	bh=kDSudy4+fqGcOy6bHnJhfaB7v15153KvvLize+bi3wI=;
	h=To:Subject:From:Message-Id:Date; b=txvTurwG2u13baPX5rtBjOHHFBFeomOqCW104iWz6DEeimUkNn37ffmufQhEOcxI4XFcP26ZF3jB3dqSOe1qvWXvn25JIFHSj1PJCkJq5+pJlveFbtgutlOxIMUdtmHoY9xZdl2AG7UPAoR488Uvvq3c8urEwDA5UIARD+fTYXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQUyyqwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQUyyqwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C789EC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778003853;
	bh=kDSudy4+fqGcOy6bHnJhfaB7v15153KvvLize+bi3wI=;
	h=To:Subject:From:Date:From;
	b=qQUyyqwuKNh+aYdzTUHQ5A9WoDCkqvqxhuIzotjeN/0c13KNlUPVEEajASOnpDBYp
	 CgQP6FNPWSpcLaXjS7eDhhwlmyFnf3MWSxcRhBpf5Cssj3BdfKr91FrVONSvEgKtzW
	 TORpiRd7uLh/RJbRYomX/VX6XldKnDlr4+YRtizzpm0OiCOQnm8s1d1OOb3LSf8xpa
	 Ckb4CHThhmLKmfS249YKdP6pCbY2wpYgvF4RbW0zOkrsrgp6BGVBQrIsdVJIio9Hxy
	 tkvdr7F2ua96vpXloZpxCc4YWLYnYj1pQ6ycyTJTqYV0DQ2fShIDLuDsLYSZN+Rnao
	 4RDWOmYJ6vAZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1755CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800385370.29957.10821477519852760749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa522c1b574503b9818d050f945939c03378820b03bc75c94440d736225f804
Date: Tue, 05 May 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778003853
