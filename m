Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D43118E373
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734278154; cv=none; b=FHYsECM1JhDNjjvvTFmf8YaTuTFx9jjbrZSn42GO8oIgMBeU2Y6H/5HTVdi80S30mgCfPdugJ56MeyEmhaCJDkr/4x4nsc1OtB3S4jevzff5k6LHKSG5hmuC2ZfXBpfkrSpdnbzjU6jw1iDv0yfI0nsBrbTtvoilZEh0Deh5Uc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734278154; c=relaxed/simple;
	bh=6AE/r2S6bsBARZpbgDrdETeo36sSjU/5scnHqxxMoog=;
	h=To:Subject:From:Message-Id:Date; b=bhKFmqtazSabNWWTPY/T05cOxP3tHNtDBJ5pmjiDAZhCtdceMfTnU5nwO2Wz/PG5ZCsdM7hqHMEF24qUIbGHqYQUKqaZLtWdXywcaTRLcKkYhVg1lXd8yUakA0jlxKLhwvojd7QQJmb6Ep9anpUaTclCntdMJKzLyTKTu7wFPIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3XW+SOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3XW+SOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6335C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734278153;
	bh=6AE/r2S6bsBARZpbgDrdETeo36sSjU/5scnHqxxMoog=;
	h=To:Subject:From:Date:From;
	b=K3XW+SOKGEZ3kPImMefaA06tBK4rGS5203opihHSZROsdvRx0Xmkc9o9Z+BWAstGa
	 GsOVOAl+zoTKdBKBKk2jjoUanvUeM6Sb4Dso134LwrpjmrIdSEsQXkDOKlpETDMgpL
	 UwFDVtZ9o6a5FhWbkz6AV+BE2HqxD6+q6Prvtatw57TVu9dKfUiaD0URDxdlA7LZvF
	 6Grco60UA1bH59nWLq+5RUbHqHVy6TDFI0iHOlb63iqAIv+3EUpafP/PSICj4MWyuJ
	 JfJqsox0/6T28rQuse/zB5oc38AajuC+EygvCaQ8iAW6/1qFtyzWFMkXXJYVp9R9Lt
	 ZbYpIdhVX4+XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C0BE7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173427815358.15499.5456318163834080330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4723039bdc13c1190f89d999dc12807aee8f0691c7848ed06280e53a90b3e69c
Date: Sun, 15 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734278153
