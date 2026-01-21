Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3942C352C40
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768995834; cv=none; b=G8sX/wqDMhIhWJ4J3P+qOrBQPJm50N3w9sbqCWM1GMfjW1zOt8Q0x+7ZdpWLRKTHKCOYhbVe1yw70pb1gB8J+1duDVoQtyjX+Bit13yIOEYlQVjiKXPEQyGxMXhqv+SDJG5Elu/26NRP+7Om3OxiQhw4EFQFqZqQuEs7cNIdBz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768995834; c=relaxed/simple;
	bh=2X2u15uke71dV8OJfEoyrV4klcY1F4SatcW+xTMNTlI=;
	h=To:Subject:From:Message-Id:Date; b=NXTzhGFE2FRS9e90ZSwEMquYcjCQ5ghL0m+fWEd+BtZMxmjmRTF0EduCJv5bUwnmibP8r7OY4ldwQnOgAtl6DO5H5eE/hFUz+zKt/Ls8XXtmDr2SuBBTdU0RKpiTI2lsDM+cTcQDqDaGzv+5kGplWiNOIG6D4b2MzffrwK/WAko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyLTsI3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyLTsI3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A985BC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768995833;
	bh=2X2u15uke71dV8OJfEoyrV4klcY1F4SatcW+xTMNTlI=;
	h=To:Subject:From:Date:From;
	b=KyLTsI3kGFq0UDWbZ4GRI0uKZz5O0afV2U4et/dFtq2knANxiXtnx4RI3VZNcLItl
	 gAQcD3Xxuz9hxiVlNdzuEl7anco42rauRceyFPBGn36R379E0Vgs5tHfikFBqfcBKv
	 eoXQ4JwpWSnwfni0OGHSGsY4wDtBP5k8UNPQrx/SiStzL6ugfQHFb702lwfFyRP3ep
	 ZdHKbOVH7kH5PrxES7f5nhzh2KyQ296Hbr9a5TGLpKZK79qFUXoV++4ylJCZHaYy14
	 zU1wraNiPGb1DcQiJ7sdXXRBTiWJQVrcatGBOVn+NbfcumkXkKSN4oLzD2htjlPsp3
	 9HtXjWovFKuog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9646FC4451E
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176899583359.12417.4528577851736669241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b97ee843a065627bf1c28f7591b5a8224697c67648b77baa4a29c35c5404f30e
Date: Wed, 21 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768995833
