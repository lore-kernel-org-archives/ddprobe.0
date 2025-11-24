Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233282AE99
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763953914; cv=none; b=AwYxEws9T4LkHicWs81wYIGtxCaDB6r2WhWekfVbghmtFCqzjjUFAp6F8XVj4EG9KD+/wvNlHd8dYQWPRdYLjeMjujLlLbwLDt39iK8Sr6eVLEqwInuFxpAUssJ5DsfMfA/9kjqo60+nTAk6oAAwj7JXWAsHCNZBjUnBdOGLKf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763953914; c=relaxed/simple;
	bh=cr3GmuV7b/CYTF2ZGzRBukEr06+Mwn3txvS8jc+HeJ4=;
	h=To:Subject:From:Message-Id:Date; b=YkjfqmcIUjmcpvYsO4wCuzfRHb1PN+77D/5Slhc4KevcKmalUuCNu5rsc/T3HncOtMOAWtl+B9sVKMtDRI8WdBnrSdTPGHQ5H/Q3jL0CMDCxaoq+S0E4dDRbkO0AVrQSJ379zj09S1AvnQtkrWMTjRNtDgHadVZcTVU05IdPdXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e60YCL3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e60YCL3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3988C113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763953913;
	bh=cr3GmuV7b/CYTF2ZGzRBukEr06+Mwn3txvS8jc+HeJ4=;
	h=To:Subject:From:Date:From;
	b=e60YCL3EE/UJ/lFA4q2PPPMg49nPlw/734PQO9+/UP3g6MEctgIYUFKFjLIpgOyzY
	 e1bj4FP7JbLUv1WphUcb1guY+SFySON+qB2QGchH32hEiiC+I9ZYlMGsvitWZE84F+
	 iYsSbBcawogsj75a+Y13kQ0yUOvi33fZfRw4Y1lmNQSpPataQcLkWs/l0ajGlJ1z9D
	 PBF2Q4S3L3fULNlECldKGzFthyfKFts+mtxqPBn+70qdSME3xxYnMCvLLxE2LglDed
	 6qpT9yIzk0YKvKTlugT1+4brQfE8ZAagzQWbnK1wSJJ69xwm+21aG9JuNsX2v/NyEf
	 Utiz2EmysLRjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9119BCFD316
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395391358.20703.11317241745497808174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387658245686e6054fa9c2e9820755194e7e19030da62276075f456761f28901
Date: Mon, 24 Nov 2025 03:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763953913
