Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DC61917D9
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723007754; cv=none; b=DFYF7ggSGOghHJQe/SDH+vSqELnJu8LoT3ly1NbPZgW6i3itIU8siPxz8O/mUOCUOCZcmULV8gNJSrHbG8o+COt2hTFig04LYD+sD/eg0Bah3eJMitU1HjHADiJ86YrWHbor4YyiIHFQqmuSz5F9yznRyflWZ2AzuM8F9U399XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723007754; c=relaxed/simple;
	bh=1xq3PxtiDIel29hTE9dVBORzURtB5XkhDQ3LKgH0lgc=;
	h=To:Subject:From:Message-Id:Date; b=gjc/zk/2keEBYGILyVFurpCG2TCq62v3hEMsYPfOFPL+i40DtZqutsPz9vRYgy+1CMI4pNh5BnnepGRxODr2Tb25Y/PW6pRpH6aCSkyW5r3g5Xv54+Ic2itaZHrOwd3T+Sq4VRNQ5+jlTHhE3wycH7NKp0q0pgD2bPqlXS7Sf10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bB/5SaQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bB/5SaQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADC9C32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723007753;
	bh=1xq3PxtiDIel29hTE9dVBORzURtB5XkhDQ3LKgH0lgc=;
	h=To:Subject:From:Date:From;
	b=bB/5SaQN+LR5nyX6IXwtf828boolbdh/TJCMKp2MGUUkufh2KgwKTCFpzWDHis5fk
	 Nn9gLO3ybIQstKMnVk7g/MfYFfIHH4T4SIT+BC2Wck87wcymHtd2lVcwob6D8lTB6h
	 qB6LVn/2OvS5QYxkOKUfrbvhYgoj6omN0XgnaWohqRw4d+GLsjZncZBwHgS0HZ4h/B
	 EChP6Bg7jCxSTxx6ZJ+Sv/49mzQKz5pDxSv5NXQqOBF/5QTfEA841ROFDeUI/6BoNw
	 mm86q45GGQiPIXJbjP88NWnAx3sxIpnxqO5RGBaSf1h/zOLV3j9rT0yoyqQNoW5rdl
	 AxIKIRKuhFlZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968A4C52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172300775360.31908.666545989578187573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e56f07a2d622651d1fdd078b8c401e47dd5885cc727c83669472363a9288ac
Date: Wed, 07 Aug 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723007753
