Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF2A421F13
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768911234; cv=none; b=NcGcFXz1KXjEFKr2F8m3l1nbLhTfpj1djgeYJn1S2Fxgyge6Z7vJTctaWb/2NMBXf+XlTaYJbleQNyvNtzDiMhRUym48laWHTM4qL8/svyY0O+lz15cMWplomjOPgc9UKjwCUE9kK2zpdFXHPxH/ea0/sTKjcTxmQ9Tp76/54m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768911234; c=relaxed/simple;
	bh=8FTov2e4UltIkEyWGi3PQKwymzXYTzl10/+5IAblQow=;
	h=To:Subject:From:Message-Id:Date; b=AUJkO7mSMujxtnCrA+IbnoNnrUT5hb5RBtyS5SStNFYegDcdXFmL+TeEiOt7NagahWKUEcQyvs7a6mHrG27NxRraki9uQhMxyyFCjmaoTFiDB8v5bOhIE8C9FVc1RxfFIK/luFNgNNX5sREDINCshmG79pBOS4St8ldKSf6rxQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfHYt6nh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfHYt6nh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FA2C19422
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768911233;
	bh=8FTov2e4UltIkEyWGi3PQKwymzXYTzl10/+5IAblQow=;
	h=To:Subject:From:Date:From;
	b=sfHYt6nhM610rAK6day3Wnihbgg58pv8QVGh7rfnRrm6Jk99woMR7wACY85bPH7wa
	 R2bwNZa+egnZR5ZjI1x1qdUFpO7IadJgpy9eF20E+wpNsfSD4v6o9Wp6CmwbcqMGL6
	 /3J9bUunkquyTz5On/nUlpgBjeVRUAuB76cFJlvhIg5nr7gwpE9rCL7326MtYeL44h
	 uibLj1eA8l2hvWL+Q9Pfu8Gen+QjIV3xbMxFLceI+IkyqCV5RwFtyaJcx6m6cZdo1x
	 +p0JaoceP0MiFQNlgQ7gku57MGG734dIrP5X7wCV8Fpp736l/OMIjfSAtUjIJaTTd5
	 TKO5DE5R0IB2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A5AD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891123359.22370.17321821954250104146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13de3e2f7e96fb09f8b5cb5c636357220ebb82ad2474123a9b2694a1f1a11e51
Date: Tue, 20 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768911233
