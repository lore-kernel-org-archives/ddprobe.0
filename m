Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3488518C01E
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742791194; cv=none; b=Fb03vgztFVTN+iVlhkZLde8tUfaP3dWVCdVTzOVe/kpUjPKjDZBb2y5P98V5wvuqAAVEyen1g7ARVcwKTNPB/MVoY65C/WDN+DTDQ/bEsTLfrcH4Q5Pu8RlYTSAOuXewFJ1YaoI+P6x+q+hkeA8qEVGtsYAXWxGRhMy35jfpZHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742791194; c=relaxed/simple;
	bh=/ZqGOKrVN8tQmflOGYz2STt7X/bCkDLV7FXjAXBGJXg=;
	h=To:Subject:From:Message-Id:Date; b=ayw5FmzPf3e3rWFHjxF6HgUaQREOuEy3lMttd6Dgb8Jib9FnbsC/LnD1+ct4oV1ZiO4mm4gTwtK1u5oKPd8+1rg7gGO7c5lKtldwX549CCXe7uJ1WqIogdRKwwuXUz7q9ULcnOpZtFy/CbQLwtwiT21QcSgi1XtPX+BsOUGr3Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0/kBa24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0/kBa24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B082AC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742791193;
	bh=/ZqGOKrVN8tQmflOGYz2STt7X/bCkDLV7FXjAXBGJXg=;
	h=To:Subject:From:Date:From;
	b=m0/kBa24UnTKSn0VpQSC/eq8wQv2oxcaE/o1UEwefhv1Dd7Hd1upanqMMSaGAuRrM
	 ZATf0P68/nPB2mRV6LUUPnf4q2KtQJJpjgFYDseCO6wo6yvHe2AyRJLuGUlpMIwmYF
	 POdAD2wzm5LKtiDQkljaHXvDGkoQk8TxW95GE7E58hkkyrRKskrbWwapnixa1GsL5D
	 dMRKHwX760MypuYTS8FzQ2QqGPDXkD+2j9wAWBUnRRPX8GMLSCRFrojqLyCyjnC2Nt
	 CeQyczccDrP5f644Vtm0nMZytlEHxObw6Hov55vjGFjRPNEuG7135qOMrrQCOuNDx/
	 uB8cKXY9lKXPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3B0C36001
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174279119361.24920.580119159378725874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50963efdd316b92a76b6c1af729ddfc96d0a0a70750b64e6db8ef77f09c68545
Date: Mon, 24 Mar 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742791193
