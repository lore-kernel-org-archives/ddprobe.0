Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD86818C937
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745831993; cv=none; b=TgVZHkP+HYK4SKeA2l9zWGU2sM1HF48U52nTvN4ZLSCbpe9/rnOOVuJZLiTS0WNUXcx8t/jAHPGQcG1aqoFGXxrbSwEpTJAzLd8TTRH6wQ0no25Cn5pyhboOWP7DMCQgzBAKi3y2QHC8/5i2dxrey457dultLBgmdBl4Vggva/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745831993; c=relaxed/simple;
	bh=hDbuhmlQjt+BIb6EOZTun57KfvfTjpmcLmERO8kQon0=;
	h=To:Subject:From:Message-Id:Date; b=DEXHOYPLnxX9jVeBlRF4Ka9k+XJcgVXYMK6fGjtR4Ea/Xb/8wY98mqOzJAc7JGi1J4/KBjpIrJQN1xxgy5u0H5lcoWFwoPVG6hugH01JhR5AFez4Q7dP/FAgYluULVSpy2gmm9rkBPXL68AQoTQ93jxfCFaJ577B46FqHS23Xko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvMynOZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvMynOZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D023C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745831993;
	bh=hDbuhmlQjt+BIb6EOZTun57KfvfTjpmcLmERO8kQon0=;
	h=To:Subject:From:Date:From;
	b=cvMynOZ591YJWy7D7mmaXCk+EtdbwyujmxPSSXQpj7pnHVNOVjC5788+ZlGHJ334/
	 R3yJW5V56156eCGUN+g4pV0Aq5PLM6wsQt/VZM9stjTJNl5yFnvqxSs+eIxFzcs0sR
	 BK/i8/flITCsRoajNFFrvYezNuZP7fT4+N8k5w/XtzxyHIbl7/vSSbmI/Gy26wg3/j
	 oc6O0WiU0gt+ItJtXgYjniosa6L2cLFwl/dh3Tn7+rwRhXxcnVrYWDq1JA9/Q3a/5f
	 ZnN/eiamm9/s1rY6N0IVaMG8LfSZpnf3MUKJtFxI+iIrQrmgOj7eZEsIcAwrQYykJS
	 omoZafGPJa0bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F7AC36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583199358.4466.18419702334244823635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f7d0ebc9828630846e91774d67c74e66ade72ab689cf9e9c77080e5ec65142
Date: Mon, 28 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745831993
