Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AC92D949F
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787719234; cv=none; b=VOu7FDGsrapOh/DOAHBlx0XLXc5Bl2Gw3Y1n14xlPfq+buvKceYnDVVziOIknX8psTx9z1ZPnI2R/xPJ2WgjsJSeIMlKvjNUSxTqmmLwdMe5pbTwtp6PYBF1IojbbvRcBhEkKIWau436LAcMzpfaM+rzysXUFER6pfMcFND4Paw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787719234; c=relaxed/simple;
	bh=bzA1BfYcQDOSgQ1RFHgSRlWB773T1F3vwczx4QnAEv4=;
	h=To:Subject:From:Message-Id:Date; b=ihrwoDFMiuYiZ9q7Fe0rds0b3NUaGT3yz9AwJu2WVtFnYC5hkNgi1Vjf81ZEHg18pMwQex9tH69TGNqmlhJQ9A/bZsxWR/q/71gMlp/GjSUin5rYLDwBgRx7b56N8APPKq7M8//E7jeojUmg5hgT1JLlcGVrVjJQvceXXdntiPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDDoswsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDDoswsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0704C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787719233;
	bh=bzA1BfYcQDOSgQ1RFHgSRlWB773T1F3vwczx4QnAEv4=;
	h=To:Subject:From:Date:From;
	b=hDDoswsinGFufo05Y+zVoVTOeR1yVh/C9Rkag94KB3+u+EWjY5raBCUSYRjtC2BSs
	 tVIuR2YNSEtP8sNxHSC37BEMokIxs4h2iJnHa1b440FMtBsERElQZziCIp8/G8JaR/
	 AD3bNhulGjQ8+9OaU6yYxfUkj3qdVpVpCbLlR8aOQySrvKJYW/W3AfQ9Z1z4rt0/CJ
	 KLilegDhiSjr2OZd2rBVx/Pp1zs6PM8C2zWgVG/NNfH6G28vHIquwlgPluNsQRFRvx
	 TxnEpDtSZV0CJ2yaY3O+yBlBy6NVrqSpiOoTHTLc7KRnm5jxkrh4Eio2+a3c6F/nTW
	 znuvhTVqkWlzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC415C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771923369.17297.13455085058447293747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9159cc44318205c301c721d1ac4324587d5d700f6905fbca8fc86400213882
Date: Wed, 26 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787719233
