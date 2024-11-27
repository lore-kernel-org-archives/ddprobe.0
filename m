Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4F2225D6
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732727754; cv=none; b=MKbZqAMUN1o/rXGiNcHgy5on3wBiwL85wHX0V3flQ6ADFDr+0Mv2tMCKrpkVrc4M1hpP9Ji8+//McBZvJL8hexWNxwLZo5kIdBhNi3fikNOgPik5rmuiMGdszwkhMu9DiH4+M8gUSBSNdgEAtpih5kO0bvF9wZwUUgGQ6zTMSY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732727754; c=relaxed/simple;
	bh=MBPhoR5V6CtK2BOhua0/fTAKzD4I7yQZ97Sh/UvS45k=;
	h=To:Subject:From:Message-Id:Date; b=m0/tTNAIxe0mVmL4j7N9G40ExoxUHJbTExfkYtdKwd+IfUwinIEM496s8ofMz1CWMDg0xNJz2jfVomfa+ksROLHUFRR+/05b1dEtORKiG+lFCtAFYnaEZpRr4abkW5WxBSxdzq50g5icjmLPG7XRq93BLThsN4Qn4eVdQptVx7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwOB+OH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwOB+OH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD338C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732727753;
	bh=MBPhoR5V6CtK2BOhua0/fTAKzD4I7yQZ97Sh/UvS45k=;
	h=To:Subject:From:Date:From;
	b=HwOB+OH0FVlxscQdINcWDigfSOMPRnttye3bWLPueHcZrUFPAgWErDv482O1Mmz0A
	 FD6RFWqYJEfXp0XaiC7JfgOIlaiH6yUnJNaf0f2SAe/JC3zatLTqiqxNs1Jv8QcEYH
	 hi2K9Q2nvkuSVR7sPWQbWSRF/gVWDyloMevvnvHlihC7eeCjjj8BCqxkBtGBDkP83c
	 wpFhvTwAsy/VLcy6KtA+T5IcG3wu34/20NtePTTcE0frjmXwXSBXG/oTXUhmJxzt52
	 Q6/9qlMeDFbs3WXwbHo5zx7lRCJvM16rJqm2OdZ+epjH0dJTqhvflRPXxxgHGmKIVr
	 sCMYXOkb9meWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3130D6ACF7
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173272775361.3730.14013046969703329906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a54cd9c1a6f56c840570fa3730fa1b5f14d09fcaf091de72368ea00ab99dedab
Date: Wed, 27 Nov 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732727753
