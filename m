Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CEF27B347
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755518394; cv=none; b=OrSBUtfh6use1StTZvumKroHhU4IIX7P3CoV8sWS5qO9bZTkAYtJ2IpbLKmKOqobmCRW3L3OuQzCa7pEM5lgqEN6rO8MdwLXgu3sGk91FA0wREUn1k2fLVw69UN/7SlZtWLVL6Fo6Y6LhKB7TDWUbOG1CS0gL/MakbBGsW1JpKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755518394; c=relaxed/simple;
	bh=uzRSJ5TUJc/FfSYKnimWM61AfsXX9UvoGLF38OZHuYw=;
	h=To:Subject:From:Message-Id:Date; b=OPbaO2Bi8m/5fsyE49mbHRcD2JO37WY1zbAk8JMe+qhrJYTEb+91h4pegCPPSrfr1x94fOP5EM2y0V7iz19qQWvyj2Iji5+VJk75KsABDDQsBSHTq3p0OayrM13GcT24DnkNwHkdlkj+GWplGjqEERQZbbJxYqqfu6jzs+fdlD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsqvTOes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsqvTOes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A093AC113D0
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755518393;
	bh=uzRSJ5TUJc/FfSYKnimWM61AfsXX9UvoGLF38OZHuYw=;
	h=To:Subject:From:Date:From;
	b=qsqvTOes8DAhgGELTDiLgtXLbqXrBvNL1Cn1FtAlb0gh4cYrk4KChzfS9xhAzLGL2
	 phU4JT6MSck5hh/fVGC/PY93qLk7pjOLwyofRZ/cfrhQC83cQWc1a5cVWTxF8b6x5r
	 vAsgpTJvcTrYedyY8XMbfqLvie+gGNwfXPeeEDAkV22wd8NOEcc2heGHsubCu0N3ip
	 idqDrtZU7iucsiM67A1jhDR6q9Nbvj2gN+nxXjLEHJANLKUgsXbKC+BixsX7p5aPjf
	 Ag4qFAq7lJkTKM1cVT9mranQFvInzVibooMn1AcBSaEhpshslKYgtl0GOXjH8zSiVV
	 ve2+RnMpIBGJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB2CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175551839357.27284.18064969386305760003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6d556e17caf902ee0435eea65ec8080a96070d14c12cfcb9a4883e17359906
Date: Mon, 18 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755518393
