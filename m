Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3652267F5B
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 15:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741879133; cv=none; b=UKqgbr7aTjCzYxPn+fhnCC/tVfzix9e9VmfTszGm/R4/7BSJZyf3kL6wEsW+tKuBqhCkrxs3kE0kJYV1EVj+PYIT1JP3B3ODadjYJZMfJloDEwFRz9tvl1MUGit29WIljqybhMnzZURMLL8SdU7BrnfCt57ZSe4VBuNR1toBGzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741879133; c=relaxed/simple;
	bh=MP0pnohs3z8EnsqOVyqhp2ZAfQRrVBikcinOhca52v0=;
	h=To:Subject:From:Message-Id:Date; b=VYMWmMYiqpdKWqDyZPT22rd7yCnz5qWQ93E3DILPWS5VQHgYSeMmfJvwcOt+1iQyj1lsiSx0NzYEN18cJMmet8NmnZa8ituScWbqcPiF6TP6p/ngaFyH/E7eWoYe5GEt2fnKvYSjna+atNn3bVxMumun+BdAW74jsucbimLUuxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mygAoFNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mygAoFNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2575C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 15:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741879133;
	bh=MP0pnohs3z8EnsqOVyqhp2ZAfQRrVBikcinOhca52v0=;
	h=To:Subject:From:Date:From;
	b=mygAoFNKx26dFsBQMusYB58saO67onzRV1aCYnfccpLUUs1XspDZw1gPoCDO39yvg
	 fH9pCyXVTKj1dGQRvOy+RYCEOcxI0TnfLnFxgfY5LP7ECRmbdsuyStSFc+XIEf56Gc
	 AILz6HgHn38NGT0i21OhjQNeoUPfGtkjmwSQX2egySpJVRHx597nztgb8am+cA+bRR
	 eTHVrJG8nu0atKFeH4vVR0Rgwifi3Y5BkCOQr0zCZAkcwNRsdkjxYe0q5fcfeKJQ/A
	 2qCShhOABBqDt0jJ2i5MlDsDdAeZ91DeRQuBqFQx4Nel6E14WOPNhGMiljh0kD+3v0
	 bcX57M+uGFKKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC4C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 15:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174187913358.21741.12281357443710436896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da782d090492e2635fedf69ff1f0da270298f10947a7db740c22cf9d1610a60e
Date: Thu, 13 Mar 2025 15:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741879133
