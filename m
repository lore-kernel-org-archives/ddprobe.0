Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC2E6A8B2
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709288297; cv=none; b=p3M1r7N9Gl3fDtYuE6VNeLpFHszCcFywus6pOzUfm0uL/DNiqYnBQNa+ycg4ihfhX8n8BPLSQ7sjVpXEc9iITYUReKIIzcPaCzIhCaoDG3s4hvJxcBpbKOmVB2jq/RO1UPe7lCKCDgPMIpCgLL18f/PW23PuHsLhVafa//C3onE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709288297; c=relaxed/simple;
	bh=RLMdbMrH4eyNPgi4aHC5siWE8ARIib8e1JYwAFNJ4us=;
	h=To:Subject:From:Message-Id:Date; b=YObvOxDbDuKaRPBIahKq1QdhMSje1PzJkxyFLWNFG8SDuB50lOF0+3dxt1Xv6XckGsTM/CbyLxwOEvqVN6SqH1S/zLTYgPsINR4l5NfLxW3S+ZOU7ZvwbRn9jrndnqIdQ4l7qZhE+qriPh+BjVez/xMqDRheqnkWorkzQa8r6ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMRt34av; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMRt34av"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA26C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709288296;
	bh=RLMdbMrH4eyNPgi4aHC5siWE8ARIib8e1JYwAFNJ4us=;
	h=To:Subject:From:Date:From;
	b=AMRt34av28csXli3X7eujtwy36warnusAA1NWumTZytQL5/cA+u3Za8Iu/hrWRjsh
	 cOHNVMFAsRdQMGGs6rvSLlk9scinqR+SSk1AymAzavQWGkv1L11AWlrUt/ETMDOMGi
	 hIkZ9DkjcZNoZeDD8j6o8CYMGl+6SQrSF8kNUMLEkRkrU0Gjb+iHmE8vA/NKw8nQhM
	 kHOLHdSidXkdo94R1wTV/l7wODh9vDRVP7yL++XFu2Qcc+80tkU/+u37/B4/QqTvcU
	 RZKIngOiLzVrhiA77zJOiwgazuvCY3aEfqeC9WEL/xDloI1yIvlEt8Xr8gpoZ6MD5j
	 5IrfNsbqyo21Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C53C5478C
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170928829639.9055.11595809590830411651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eedaedd52583ae71e3d4d86608decd6544a36b599cd311e37ce00b71b9e24ef2
Date: Fri, 01 Mar 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709288296
