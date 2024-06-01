Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4860F1E481
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 12:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717246463; cv=none; b=GwrgWwXtbcIWIPTmv9K5yxeTm3/BuGhIUS/I64ATMlLNdNcHO0nHe6RkqGcGniNRLZdn/zHcLotGlK9c/6giju0cHynjdtU2glgJuHm2BXrVABPEQeVCmgRg94hwiXrEtx7mVGSTaoX1fxSt4dqM9ckxA72G6N8P+MzaLOG990I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717246463; c=relaxed/simple;
	bh=eXg2V0Rb67/PbVXgWpV7FR6sa7rm1H3R6h9BNl7Ls+A=;
	h=To:Subject:From:Message-Id:Date; b=ARqucbwiQ/+RaFxCrxj18h9H9zQE3eZAVjcrb254sKl3+fyIIBDNQIoJsAIe+4Is6z8BgMVQoO6G+UwRuUsdswcYMtDu/BBHfV4Cm8QYhkESpD/c0fEHnUb7Byv4/IwWhalvVoOZYw43XbtvooUhKoTtowvy4jxq1zncyApiofE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Az3Ea6ez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Az3Ea6ez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5783C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 12:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717246462;
	bh=eXg2V0Rb67/PbVXgWpV7FR6sa7rm1H3R6h9BNl7Ls+A=;
	h=To:Subject:From:Date:From;
	b=Az3Ea6ezgM/1qikia+Rp52icaOkoWi9crEtRdC5lLUQvci+5/YdXVC0yeK3TQEVbj
	 CRstgLh4DXlNsxA/+fRCng5tYP07EQfYrRREC+t2Mo8F0W5CKbBWQVtFt5D0f9ePdx
	 R3rYUe9kmcZm+62dtQjtIGKCSfvisznZoOKgV1KF1SGU6ZS3OiO4t8yRHZ3cDzO32T
	 iuZl8HSBEbqW4FHyhhTmnwuwE9h2UTzE/yvIdUf5KWU+BwN3CIeTCXRGFkt5nI25Sm
	 EVdTdP1OVhJ0bN2uFVvBwS3c26H0GSb5By9Bm5mzkDFUqeCUVGq3iLgmH0DTtaQ7IB
	 9O7Lo00lmgucw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C27C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 12:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171724646276.7157.4752635634200624986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a458e9e0fcbbc105cf672ca7c2d051b17cdb2c40e3d0593dd88afaa36950310f
Date: Sat, 01 Jun 2024 12:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717246462
