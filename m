Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9C148B36E
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778573434; cv=none; b=HkS8O+vix40u5JP/n+iRcrd9izizWcM2RSY+irta4Cg8VS/5LDJqoTJfyxdrHgWXjDrXcXSEK57qo97Ao1c+c/lfOFQyTv+NuKdJSQZlRP3LXVWLemB7+CdPHaLe1to0KFWVVuLbpziXUWv3G+BMiCho5kICa15djG7UV3Q5+0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778573434; c=relaxed/simple;
	bh=uEsfYYIRi/QZJHnKPo0BDrua2Jmw48c+pSi52IzrhC4=;
	h=To:Subject:From:Message-Id:Date; b=lwW5bseNzCvPuZzydIA+TAchWZXHQAzf5vJKmW/Dt/DCoyZiq2CtJSuoRgV3fiCF+yU/cdj/YX0KPlxP/RGD9VS8EkuyXbQRSgDcMG4uy1lXcmttLOzZxLfbilB6pCMn3xUEib+N2W1/d29SBAQ4PF8Sg8MXJY4Dfcu3Im/qw+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2gJOmTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2gJOmTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC769C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778573433;
	bh=uEsfYYIRi/QZJHnKPo0BDrua2Jmw48c+pSi52IzrhC4=;
	h=To:Subject:From:Date:From;
	b=o2gJOmTe/cFLZtXzDOlaP7dRXsL0vA8hnrQMbbdmIkuNQL2Ohmb3ZmFVOcPNzDFE5
	 oLK53wi+ROkqQJTxyROu0yBShThHclwOKqZkj3gVetQqPEBn5lvwdlEV9Lp4qC5lnL
	 Q+/Typx65kAqznWTkfg3u9pBVpk5oIgG8aXJ11tWKVfRGWt2riZgQmNC+w3Ah0ePWK
	 STcsp+1J6cBHCBfjURg7M0FGg/mO9noy/zOS/cVGaa4GvJt5APqu7p5/mGO7QYTuEu
	 cwn3OwdyTOuAyhT46a5VWlqoC5GDngRJQZSEkBivIlVmNeHfTc5mfh/23lCuIobZPD
	 FikpuzZhG+l1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFB8CD4855
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177857343369.4169.1211947794130256480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9aa997ab3891e587b831d077b783d88d5a7520bf61d90a9e56debc21a094e3d
Date: Tue, 12 May 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778573433
