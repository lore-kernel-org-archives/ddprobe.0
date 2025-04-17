Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E98EC2356DC
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744888194; cv=none; b=Nd+wI323IMJASOJY4IB+1fGqI+J8eGviH091aV/IP8WmoeEa5Kbl9CZp7j5oFpsOin65K2TUGozd8JMmUoRQdFfcg67GwAgHBfgJ58jJMG5ZAgB+EiIsufpwlCwQvezoSDuMG3h1WfUm4aBQYHf26Q2sksuyxMsLRPoiXJ8imSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744888194; c=relaxed/simple;
	bh=P0lJWFzzkyg/N8Nj+ox9VBy5ku5BVdIEQpOUNeaGwJE=;
	h=To:Subject:From:Message-Id:Date; b=G+IC3aqUNQxyShC1Do/MYSdMc32cFjwU5BmllOGfEuVVhTpZAyjX92VGdcpfnLrIzBwFpMid1YiZ21RIWMN8/0rZTWfGytRf4NyWglXBBBQcXSbdcRBweAVXfWCnxpR2LNwrsdDxk8VIMRnC/pun97bW/ek0md4AMIDHOQ2h2Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/bGmUyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/bGmUyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1673C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744888193;
	bh=P0lJWFzzkyg/N8Nj+ox9VBy5ku5BVdIEQpOUNeaGwJE=;
	h=To:Subject:From:Date:From;
	b=l/bGmUyZHxaDRCp5dDSY+paHUs1rlINxgVS4K3FFv8uujYbi5xGZlnAdOkBI84dMC
	 Urds25CnNsT//WEAwutE2Pv3QYaGK4fEDDvn1yx2r5jzguiVI4heM9lwcxKbmvEAjg
	 Y2/+L+op3tYE472jrnRLk/UTXEHhIA6+qquTIxeR3xhM7pmKRUPxryzUUgBg0b8DLn
	 0OGFJx3n6uihMVAzbYXmaunPtNBFb70tkKG/jbGrY7g6jc93mPQII27UzYX6uOnF84
	 N/V5e5DJAKNBB+A1RpVxbzwEtAdgv7U8kgck/fbM9XrmG6gDIRhvnKWQrcJDJ4w/Ab
	 cB9OkUDb3bhyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CC6C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174488819358.10973.6511023451500435194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfff87677a6944bf6ffd7dda598bdc4a65afac29e0ea849841532648f13bc2b9
Date: Thu, 17 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744888193
