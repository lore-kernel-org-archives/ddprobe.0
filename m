Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5270133BBBD
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785469234; cv=none; b=pUcbmNcotQvm2+xRjOIyrCZ661QvztvJi/hVeV70qzpZW5G/AkP0QX++dt3xReFnSbt7NUHzXTTc1+isd/+L0Wf1I0FX60w7cKbjO/SvwiLc8vwWHvsBHerS6Do30XxoKBLAz+UnFUnqWPMSp7Tiyq7bXOFeScgn4nbYGW/M12U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785469234; c=relaxed/simple;
	bh=dkvUUaCApMCbmRdqO/4OMw86E0ojl8O84FQ3uy6O854=;
	h=To:Subject:From:Message-Id:Date; b=T+zhlo712oF+bq7u4ZSweDShDbl4wDBetFKI15VcYo/U5t4MPo/DThBWeOhuh3mHXf9v81+t/LlmBsEC437RpW9cIDq3bQm1Z5bTnLLlXoIGoSIQpM4gBraNEUYt0eJZt7cQ8NP4shB2khkVcoAIVcLEnz/vkDwIIchuDnzwnzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atCltm2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atCltm2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33D5C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785469233;
	bh=dkvUUaCApMCbmRdqO/4OMw86E0ojl8O84FQ3uy6O854=;
	h=To:Subject:From:Date:From;
	b=atCltm2AImsnOysaaVbjDV+35Blb4yepSL9tuBohRgSWdnvmSdpQDzSb5+lnVNy4d
	 n+mfduyNFuMBf3H0AYcjl7xy5ByxSiZEUZH4kvF+W39nXN/ursX0BvmD4i2WmfPpQE
	 /z5wbBWza+gS8vvqNJHg5p0id4vlSpVtoS4uiJUb8V8FKZrlPkQDhpDjY+qoiYCaCZ
	 PADcsA+QUBaYnhiMtxleNeLjmcfNt1M7VWYjJ/byBWpY/AZtrZwLTrsKJ1JXA8Lrr9
	 djucZS0G8IIWWnuJ7w2w+yBZP//voDbLnEhtrvNtLVrlsfcrs6DbLADx/J50LwVrDc
	 URsqMs2nvFDlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB31C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546923368.18695.14122761852291959727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc99e76b3df80031048ef126cc8b7eac424ba41ad32548610e79a7457dab1e88
Date: Fri, 31 Jul 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785469233
