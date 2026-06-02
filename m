Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FE13C2BBA
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780388074; cv=none; b=XQUm6i2YwC1O+N8qEAR2WrV1wUg9YDN5cT8zxastt2DRw1i6S0lNeKYUm43gwFLCpm2LVYWNqB9In3jUN29BB5hm4/4j5ihoQ+xW816yxo2qNguF7yyW1RL5WUvxaTCfLZscOaRw51ZCJXmFQlyZHR+1fK3+i+2SVs8+9+8c0QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780388074; c=relaxed/simple;
	bh=IV5yi5n+RtPJ++nMgHtEg95QX1ZwVnJLCJd2gMRlBi8=;
	h=To:Subject:From:Message-Id:Date; b=nUqSGU+OrlWdJBavFP1gsaCfUiFLHCrvPHB8He2NobRDZpc3V2y2cjm2BCS0UR7dRo+JJ/HFVfjhPQXOthaZYMHvH5fG6nnF9w2m37Vb/iCnLwnI8F0NTteLqbco8GgbDqVB9ZJP3/CAv/fj9dd3RQsGp1QQSPYKp8TItAJE2OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+cj1aLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+cj1aLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EEDC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780388073;
	bh=IV5yi5n+RtPJ++nMgHtEg95QX1ZwVnJLCJd2gMRlBi8=;
	h=To:Subject:From:Date:From;
	b=a+cj1aLdfYOoXyFIpfkX1vkyMFnAJ3Qc6xh39KZZt/YbrOsEehA6SIEl9ngbkzur1
	 3mKGTx45VRZhB3yC9xVTpRX/nS/Ej2NamJV2ZiMrPtMnUkuezumjPRtYBEGGiRspYK
	 2EKxVhGscrUGxjNHkKHtSwGtbPc70mrfnNPKaqhNEYmq8Jnmc3bl2kEXsYL4183qVy
	 OOsxNxW+Fr/6Ks0zfiKVBzMxmpM8YihTYUbuW2N4fhuOktM4YjnrP3cR/QyCIRuJbk
	 0Riak/JqPBo96y4oUWnm1PPnuo4XIp/NO+uUdJlQK2KUYzteLpoupphmkOp0/hOUSe
	 oTI5MQtqeA5mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9773CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038807368.11277.16740135970952747886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5386806b2931e7086529015283e93c7c00820ea47a156e71870f1019d045c893
Date: Tue, 02 Jun 2026 08:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780388073
