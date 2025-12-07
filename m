Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C089E229B36
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765077174; cv=none; b=ech2Tv905hm6fomMd5rSc4Bjx5ufLhtwSnCt4ULesto7MXdImLhdT4j+crujtEKK1ukRVEN/DgY5ojRKWakQ0PDV/+FYngo+siBP6P06JqyOTKtLXWRxmk95ZZUzTHmkuSwFzLRSMIfIDtxckgCTVKroK496xbg9myMgwIOe+hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765077174; c=relaxed/simple;
	bh=mM3+2Vr0vO0n5GITnBCl5v5bXW8HSmYsjVYze4mijA8=;
	h=To:Subject:From:Message-Id:Date; b=LR3crYRzzQ2srInjU5h36MoiuU6JUqMNszRMLEzlo9/gDp1GwKx/rzGjWRyiqZPcW/ZAtraQrzFOGruTjWxUnGxLwb7ZkK2SgxvCd9G0wNseLCOXdqgM89vPBr9xptMLT7Yo76IYumf/AzXzI2tMQXYvSVnL/rjMw6Dz7oLdR6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYE/2hr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYE/2hr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A9EC2BCB5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765077173;
	bh=mM3+2Vr0vO0n5GITnBCl5v5bXW8HSmYsjVYze4mijA8=;
	h=To:Subject:From:Date:From;
	b=iYE/2hr0uupLsJcD10Vow4lheIrHO50LhKpgwhLiF1TuxqxFh6h37l/ytt/dYorbS
	 D7RhIsiMFazUCG7e7ixKYxMKx4QDFX5Bkx4BPmr+K7eQj5rUwEQZ84KDE4mmbsfiU6
	 yzquwODobRV2g6+kRmuOtvnO5ouHjQLamT890qoxfAWOQCORW7vU6Z9laOxEZnuLzr
	 OLLPn8b9/xiZ8+WBwBciPWskK8og4jezfRIuBr6p23RJ8rz+Ewm06EhxwTO1CQYdFd
	 jt1PIMODabAL7qGtP34nba1f+Wj+YUvVrdCATcmdKisA5STWUaIcYsBnLSkooOhLCu
	 fcNglOcCCCRpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94368D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176507717358.17180.13596297555972633732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2847575d270a524e32af2adf68f90e85af91589a08d7635cff4618508faa222c
Date: Sun, 07 Dec 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765077173
