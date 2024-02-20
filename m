Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE87433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708399697; cv=none; b=qCPm8NctGCh/icd/gRcF62rclbyLCmheGaSKd1znWLv4fyu4BeIPt5AkPNrSpN+GPpJQDEk+zuQQshel1mFS+o+WT9JS7lczChugb7HU83Ai742jOHjaR7dk7vrkl47jTTes64J663ZNtG0E3AYxa0stV74Ghmpn3sLMvJWyiSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708399697; c=relaxed/simple;
	bh=Kj2lY3DFkVL/sovlSIMpWAN62G7dAlXc57sCzXJ0VT8=;
	h=To:Subject:From:Message-Id:Date; b=DYWyAH4gdiz+kUfuD3JzQW7yiCSaeM5edaNm1aM8Mn6ehoZWsO2AbnzR+sBVuIvsLL7rQM7AnUmB0jYW1LYY3vL64Xo2GPvBKSUJv9sRq1TV4LunLJ2xSb91Rd68flRCkyxz1AtSDqdaEQLE1CnpwdNcOlF5nl06AiuUIoDrv5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ug9zZOse; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ug9zZOse"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD01C433C7
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708399696;
	bh=Kj2lY3DFkVL/sovlSIMpWAN62G7dAlXc57sCzXJ0VT8=;
	h=To:Subject:From:Date:From;
	b=Ug9zZOse3fpasFaSsxAcKPVavdilsofp9OVkRKOWR98brQM/DeI4VkcxqoHvyMLjZ
	 zxisNfjZO7Dce8kemCldOSiy2vXOsoApIYn62Zb3xAABbeYh/9vCcoUsD7wLWHaHCC
	 Oo0Kn6zS/54nd5YbnG/12mnME0SUBriODLCjgAkoqzdsX+GM0Ww48Od+vjJhXaa0dJ
	 LZFYyXD48JlOvoHINgx2NoyfQ3UyvWTSEQn59SjaNNJP414ZxD4QFn1wHoELT43Nuk
	 4uqyt8+2LVJVmm7XBMnzBgenSZf2I0JHT+t0yR+Ep2NyTAoEV8eJQqJsjBpPsO+P3h
	 r+hVC4JmLvgeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62104C48BC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170839969639.5352.10472197221444943633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba0a02dd78128397b5394a0c1ab55339d966ede56e1625bd7c9be0493f7bd13
Date: Tue, 20 Feb 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708399696
