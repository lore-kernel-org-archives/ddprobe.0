Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DAC57CAE
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 12:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714826543; cv=none; b=kaR5p/ctctZ4r/k6OvMB65HB/QszkHiSeoZjbooRovP1+EMUPJ2uhOnfAqtj98OjxX5Tg6DIJorE2E2fowOV3O4/o02447346fmUiBHZPO7qvSstXuCGUruUxxwhYqL5QLIAbb+imNV+WuclTUbDeBYUlgqGyRlRUoXCDA71PuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714826543; c=relaxed/simple;
	bh=mRE9VvUywyt/2ogbLPrnwxHf4C+U/dFDLFChZ70TINU=;
	h=To:Subject:From:Message-Id:Date; b=AnXaD+nJwBHb9zYPypExEItqnZSpjbIxDttla7dHsbfxh1ebkUmXpn8aKERjufZXwWmYvB7YKCPLaGXUcVYchi/WzLn/mGlGMc65nJo4U//4S8QCUdwH+7YUdeF91JCb+gsToelKu+F0sPnJVWm09LN8/FZoaxxmMZn/FE+gv7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xle9Brx9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xle9Brx9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA915C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714826542;
	bh=mRE9VvUywyt/2ogbLPrnwxHf4C+U/dFDLFChZ70TINU=;
	h=To:Subject:From:Date:From;
	b=Xle9Brx9mT1QxKBcEvo9aoDOoHlhNCTa6jmHEM6uo3VECfQfu27kHnite2Z2RMLey
	 DhLubG27YUnqUXzwWCmcbYPsTxVEPXlkC32uIVORcWq5S7Shk+ncODO3DbxfmD8jNr
	 p15hvptkZE7SRYXqOu/D2+Gi0LlKbOfn8nVqgsx2oDf7giXvddxFPNkvOh3TVQ0V8J
	 i1jpngZOTxin7zd9Di6xwbKFrntBgpeIVnqoYmiurq8LG0tAMFsivnwDsvi/ndzS2A
	 KEtnubpZKeuFAnNwbDgAvxsV2kdLd2gJ/FwvHDpnG3jtN0Qk7egCXYsFVNjUT1jIDy
	 +QMHU952kkyJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4204C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 12:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171482654279.674.8963648673029677410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c4d92249e5cbd38339d97cad1ca4bedace9565f9c86e9cd1e1ca09475b19c3
Date: Sat, 04 May 2024 12:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714826542
