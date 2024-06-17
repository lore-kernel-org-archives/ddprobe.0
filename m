Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFDA190052
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 12:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718627303; cv=none; b=Z49u/wBBx+s+qoj9oC2IvbOK9RdUo7KwTr0vnBEsnAs+VfPOO3YyXs5Yv5E1Fkq3FcnhzXtj9qJy3QcGJjtc/Yfy1Irqfb/gNku6ASFA7rzYQ4AbVQXxu4pEWP/k0Y7M0/uZwxvfeOAEeAlxvJAMyEXk23oj7l7vV7DoqMXS7NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718627303; c=relaxed/simple;
	bh=/guaH+xL0AzpaZeauzFYgiHO3pWwPqlVbrYqxZq5Lw0=;
	h=To:Subject:From:Message-Id:Date; b=YoRMx6eTlENOT/9+Y8Wo5Kw6DKLO/xM+Cunzs++wpaQBsf5hVqg3Le8ahp8XT619oO0L/g1NJX5YpwaBNuxNlkJ6TYUhwYsFXDTRv7rbV7yiByx/jpr4hpvYoi+dZfxCDOEW5O436H6WLDA7qCzRomukerIdRoZNyIPbhi++Tbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vp8VPwfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vp8VPwfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCB5C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 12:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718627302;
	bh=/guaH+xL0AzpaZeauzFYgiHO3pWwPqlVbrYqxZq5Lw0=;
	h=To:Subject:From:Date:From;
	b=Vp8VPwfsR3sjrXz5IYYCmuf0WSl/iGSBcpUNPTj++FOE0DNQughUKCo2hD1CszmWw
	 fsiA9CFNlbcFA2oBe85kocAFwbdfsg4NhnUY/+tvsHDwnL/0SBUmWn7DaAh36W6KhR
	 Ls4McKS9dJNvrRumnI0gsimFN5u6iIsUoo/pa82Bsp8pgVPBShZDpMSCDLlDKE63fk
	 rtT5Oi8vv30Qpb4k+A6mLJQnLGjrPbhKJTyEupa0xDhtxaaGgt0MuEeGp4X9JFvsL8
	 8gkXWd/ukFVHswPr2ws0Oxo1e9xmk4K2irRGHobstaaH36LGmpDJvv1pe7AKjcpdIL
	 lHJn1c4uhIIKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF104C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 12:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171862730276.27852.10335482693594711964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f13779f2316a13f5b54536c9698c45ab6c71e7049265cc3abe847428b2c35f9
Date: Mon, 17 Jun 2024 12:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718627302
