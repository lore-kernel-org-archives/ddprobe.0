Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 711B73C9886
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783078714; cv=none; b=ZbJBxErRBg3hvxMYALWURqrzGK2Cm6s2RZOnhzzv5bX9cghwHWttF8S0K8HNPgQP4HTesPIgv9VQ/2o27BySHSQ1Ok00znV9kNM757IDQ38W85zkonGGVOu4uqv4KEP5OL9siHYWjYepjVxFYXNfXOrjBTDik9cxkSWL9DgQuBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783078714; c=relaxed/simple;
	bh=dCiQMAqlAN4wG543716y0Zf+I5MuOUZKyxICM3NHCw8=;
	h=To:Subject:From:Message-Id:Date; b=uIv/fYpWbHAewEizIqhecW5wEGss5TfN1rNIr87l1r5t3dr4OVBKP0TNF+p2KKWflLvUatLdGyt5E34owKfJBDTXjR+LGKuU2NZYXYrlgD7uve9SoxneW20AK9+UsrFmEcRNZX/FOuj8FF0q8L2SB6JyU94+z61zUwVikCZcbMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGCc0MBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGCc0MBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03C6C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783078713;
	bh=dCiQMAqlAN4wG543716y0Zf+I5MuOUZKyxICM3NHCw8=;
	h=To:Subject:From:Date:From;
	b=vGCc0MBpwZw33dLraOO10VzePYh5eaRtXTONzaMZuGQ+4JzFNp5a9isHZtoJoSzgj
	 eEhD0oiVAvcYLU5QzQrATIxC+TM3SPteolRMAMeYIXxLNMbUtJWQ7ZkeRuK9O3gMal
	 RFue1JCE17gNbCw09jOe9noP4YZ2bNNpHiwuInh0qHaA4ZQFyoo32HdaVQa+b03+dl
	 Eq2fB6DYoiKMhms/GfVVjentPzZ3fWpRp+nXRtWLtoHVNOGAJZ+/MPI7zIPpAiNsf1
	 lFrYuDZ6hxLpVzAiNkMndeHivBLG0Pz40Hb49rHdR+X9KeCx26JM/sbJSBFDltxToZ
	 XV4ZXfgjZ/YaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD15FC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307871369.14000.7747168384304008539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a8d08bc18cc946c9b15a8d68050614a85ef327741a76544e97d8536f4bbe0b
Date: Fri, 03 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783078713
