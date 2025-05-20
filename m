Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9FD261571
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747762795; cv=none; b=rQ+5i4BBl4I9LKHXUya+pQFkcCEnCTOUMd/xaJRA8pOZ+oPo6pVpgB5ABMPCScsTutrTbFs7JrwwdoNrFdV/emdNXeWGUiz/ybIQ2mRmJ549m35/+TfEd/3pOfpTietlogdHXH/DsXQYVcaI9hEjHQjSnSMvM0KVbMA+Ahys9ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747762795; c=relaxed/simple;
	bh=NCSsC3wfqcm4pBZXz270SC8h4N00hfiqLMpfjDNWOL4=;
	h=To:Subject:From:Message-Id:Date; b=q0SD8mTZSo3tZBUElr49jVuNjtIFyCne0bQRLHQYcck3AWGCvPplFKchtgiOWS3mGvtMtR1HzV0cncexk9WOlcIwwFxH10KR+auFQdC70KYtIiTl0P1wcisQFkSF56nRGybJTLsqNdbbgM2JAheNoCTQ/G2ha7XmONaxxhJC56Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9fAKFMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9fAKFMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A166BC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747762793;
	bh=NCSsC3wfqcm4pBZXz270SC8h4N00hfiqLMpfjDNWOL4=;
	h=To:Subject:From:Date:From;
	b=q9fAKFMIT0+iel+v4A7OWhxANVq3iqC/dTxjpzLAQM9t8tKT1XW1fjzYMDTTZRwTD
	 Ja+8ZHVl2s9lfBpEuo73IyfRC7lxZIdVUgWyBR1A1+hYeQ3c3ipvwiKXWwtb62xDlt
	 YH/uvJ/jFra6CA8Dgi3aVd7Ksd+fXHeszz/5gTn06lQJkkUzyxooo6Cm6e2+WKbuC4
	 3XwJuCoInnBsTN2TXYAdp4JSqmHyuigbxWZYOmasgMD+SAuTzLMef6u4U6lmeYnSah
	 xIHOngG28q1QuYber3s7Q3TTxkrNiTVnIlrOyL6uY0CvFixa5pqa7DBQsqCQ9wnKZQ
	 O0Qu1CqU3YcNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EE5C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776279358.25850.10025719580298200460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa8480ec659248bd3b45694361e3544753b76a376e89dbbb03395e60333b059
Date: Tue, 20 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747762793
