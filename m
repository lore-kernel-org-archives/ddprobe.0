Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E7BB641
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722648354; cv=none; b=tEsYrDweLSTP2SIek7OtnQ4VIfZ/aVCQCuHvE0pr0sxQ7nmYE3RQs0ZERGZrQheKdhnEzlRraQrgc3E0PIAGRtIoM2kP0iTb4xGMNAgVJ5Sl8uiCCoEpPUxgNIGVbh0lK9L1LjFwgWOfMgmjP2AJ0fjOtZAfkfWn//Z11yO9Yco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722648354; c=relaxed/simple;
	bh=LDwIUxjAa3WOOny/HtrofDhOG0vp9QQKor29b+dQENE=;
	h=To:Subject:From:Message-Id:Date; b=hnFizRMv3wGt8G92aMOazFhti4pSonyuC7+R0kn0XtbQWddIQNmguU6244JtSqEI+Ol+Eusngmn6B7BacHXsT6Mp6C0Igr1z5EkIvnOLaPHe00VR2zWADeWx51s30pnSl8jsmKtzKzxugH5Fvmi1u+R0f7XBZBTvAiEhbjkiR/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZI3wxuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZI3wxuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA219C32782
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722648353;
	bh=LDwIUxjAa3WOOny/HtrofDhOG0vp9QQKor29b+dQENE=;
	h=To:Subject:From:Date:From;
	b=lZI3wxuRj7zJEp7Xigvfd03qJ6eRNvqHppQ6cmadNbOZMgrAYNnN5LFmb+OzAMToB
	 jdy8uSl1O33mNRON3I4hev0zLYwGnljTuCZXXsXBe+z943ZNyhEAeFVYCyrmb6s6Nw
	 mNbEtNHUMCqP6abDCL96a2ND4BPtFdySHTJoBjP0eSwcuh3jfXtRf4DrLbhP6qLwFe
	 u110PJqE1gb7Tuk6q5F6KSEKhTv6wlMscmjQniGzyWLpVSRuCQRi9SnczymS+9Icxo
	 ESqJWdWkMH1bXmEy8DCH6pzZ84V/wYQSWVbcyHrtymmvG1Xm7ETRhOG6UcTjT2JQTX
	 sbECf1oozarug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948E7C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172264835358.9694.16935553528263160659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d829614651ae950f4ad5d41ab2a8a86823ad7e1849beeaed389dad7a0c4d7978
Date: Sat, 03 Aug 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722648353
