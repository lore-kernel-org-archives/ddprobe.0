Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0FA4D8D1
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745219994; cv=none; b=EA3Vvjn3jopb89gIm0+2FhjF8fSCqTj/qwMOyH8kjypoUYKIyNqXh/8RhuoclUS5Nq7a+B+H0h0VgC2fGAB4uPPfdQP3qMdd1ypx+mdkMDwHJcFNGrCwnmvntVn5U8T0mbPrcLv0QCRIFLewhQ5AwweAn+s3rpKz+Vx4GVFWGy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745219994; c=relaxed/simple;
	bh=JzQfEs01RmGbiS+1UMGie33rQxKHKuZ7tMUfz50NyTE=;
	h=To:Subject:From:Message-Id:Date; b=gb1cimTgAkIUno1Swonk/Lk5y9WPq9q/RFomDW5slx0OE+fvPMK4e59NKsx5LicBmSPOAGwkO4sgTRq7SH92mS8RTHsSswMZ81WemvBVQRBVcmdKNHbl+FiEEijrSOMiseO4PC5ScMHUrFVexkQyWNq3ANNWJugSUStAiMZrzj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5wcURSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5wcURSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB81EC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745219993;
	bh=JzQfEs01RmGbiS+1UMGie33rQxKHKuZ7tMUfz50NyTE=;
	h=To:Subject:From:Date:From;
	b=u5wcURSd1BCYV24Zgy1NujAjbIeisCAno9zWEqRTYje8eXKav4sTm/9hcufYqDLFd
	 OHaNdY+nZqfiTHvmAVW3RnaFvAYwHwSbzUcDZq2V0miRv6GcMAufQxGm7ftZaV6ytO
	 kTEMxh5riZAMacq0GEdZe6I6jCBesO/m3Wk455g/GQ6cItFcZsV8ngL2hT+kYPpFG0
	 BupTwDL2+OJ1lNxT4+AIL0BMNn7Da1ATkoTN+oIRkRBIyuAzEzt5DZrtdtys7xEu/7
	 kbH4ijDmCmf6l0PIQXOPylWNt5JKqWU67tFmRrWe6Y8FFPWfBvnMB6KgIugUkiSzO+
	 aRYIarIYAnWcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9771BC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174521999360.3841.17544809514184980368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe9594d8f66534454eeca953cc183fc974698bbf21d0b1b28068b5433c792c60
Date: Mon, 21 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745219993
