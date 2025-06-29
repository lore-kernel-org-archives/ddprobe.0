Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B5E35950
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751203194; cv=none; b=C5rL4UAJTiwVy2oIOzufXsol2shwU2djPpTh6Mq+sN9clyunO6YTxjKvGuI5Rz4YicO9dzaIkbZs4gRGD1zudQILpcT+14Cn40h80rVl6kpcqnhoFh2vw3bq1ySFkKopYrDCd5Nujysd3mVj0BVKdhDt1yHI1ZgniQbTDpPWO00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751203194; c=relaxed/simple;
	bh=A4cBGtYp2vVlzDljmFQLnh30TTwBxvGyjaUAIiazsIE=;
	h=To:Subject:From:Message-Id:Date; b=Phh1+bGw0+gEbygVfW0sG7eFSsqiR9GudaBMUVvgTHd16YoFDfowxi2iqdpg4bF3DuszT2qMXpMP+8CsxwgZvAG57wxMGhTY3aMspnWv8OXw1R8Ofyl0GxiCu83ChGaMo8pLtdntjMJzLKAinqGs5B8/J1tKBBtmn//yntfxvi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHRmsC4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHRmsC4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A330FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751203193;
	bh=A4cBGtYp2vVlzDljmFQLnh30TTwBxvGyjaUAIiazsIE=;
	h=To:Subject:From:Date:From;
	b=vHRmsC4uRzzSxe1DYP5+cM0ar2Rmbzb8CMsBORyPbiV7eM/Xksp2/MOhdaSb146G3
	 sIKiOxbneQSPc/E0EQazgNN6HUvwUVz+asx5lFWWEfFRiiF6FkxdCY03IdR54QP3Oq
	 L80++A+26KqgKYNbtHYaTnNsyDAcet3SKYbi+Et9T5fw954tK98NV3g1rEv3SfTBgr
	 Kg/jtZHq/ht24DxQDPyoEyKOUR9LXIBpYVm/4D2CGQp3iidSY1ktWU3/p+Zdi7SXx9
	 sOgU9d/8tMT5TKPjkNLEidM7SqoCqgOPpVHiEkwzhmmeL/qy7L8x7C74FiGEGdCvF2
	 eXtja5EsDO8EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E00C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120319357.6042.13174212452012522358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4df5e0e8f2d5cf042856040c3182f8928960a3fde55994a2aa735d92903ae13
Date: Sun, 29 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751203193
