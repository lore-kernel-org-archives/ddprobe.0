Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D30634
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720144523; cv=none; b=GiSEDF+B5IH6uPcgeoNZco4KjyF3Wrs7K2AJJitkKePt9VvIP5xmJNMDWGwCeVov4JjsWlq5mR/1cwqhy2r9F/5D+Nw9PiYPCQst12uhxaBWFVXhTI0Sz6xWQouallJeOghsAcZPlvNqoWswoPCJk9Xn7i+dQSg6DbB2dzqs1iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720144523; c=relaxed/simple;
	bh=UwsWbjPPvDyWXMCF1pqF7uwhaRaEiX/ILLamtHHrF3g=;
	h=To:Subject:From:Message-Id:Date; b=S048o+5tUbt0x/pu4NTRAqSqobSWDpemzSEn6993YnRucip+Q31x3elWNiPyvlvhsgNnr/rBP7ZjhdfHNzJivV2sPHs6zjBgFHbEQayWr78QTYOBMWKTmrvySkW31z2RbHmZgJmFKrkZFWizj9d/SkfAnSHsuFDRXwVTjbOnrno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gypU1GeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gypU1GeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63FFC3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720144522;
	bh=UwsWbjPPvDyWXMCF1pqF7uwhaRaEiX/ILLamtHHrF3g=;
	h=To:Subject:From:Date:From;
	b=gypU1GeDd4RjZhwreGI9Wjbk3tB70ERyGNUdYfS/I32hRLMCBQsycx6857YeIIPpT
	 Net7iLHmEonPihOOHhKUTBBUZMjr0CmAwLBBMEJwimSHsYhcWmu2UpT5nd2+/4AKOY
	 NzNA6H6ovRscfvBNR7TUbaa/UoaMqnAw0RX/72vEP+FQodgoPNDl7IdRterRFFsaae
	 mBvWLXod35IpXLXXA4H7YoDVzgdKcVx+2QFzW8d4nb5rvpnajx+qwRbX/bho7STy6v
	 qdOvU07a+KRvkYdEzg4/vOP4U4KGpp/2zikB8d+NbacvGYqCY+eDtVwqCkGkSD/e+/
	 6VYS2T5Z64qLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C226AC30653
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 01:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014452276.12070.13025420793292334643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b553ae605e20a27b6b0ed480f6c41295b96e0fa78b559ea8f6e2bb7cf0d2fea
Date: Fri, 05 Jul 2024 01:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720144522
