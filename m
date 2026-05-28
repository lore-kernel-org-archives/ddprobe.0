Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3578F3B6359
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779978154; cv=none; b=RP4buEq/V99Fb8PEiW4fLo1p7Bv203LMnwSVoYmrNIOZjcQ/sG11CPkQcEt0L0WihEheIFmBoYU8wxNWeO7dqG5w+CkP4KwdeH56vOsnpsTfaaf6ArxO1p8Irh6M1NH6ktOm6Cmy1rdOtgQTFXns3oPz83Bz4cO0ahJJOgsP+pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779978154; c=relaxed/simple;
	bh=Avarzn2eUNeJpF39gT0kYcnvJTZWTgORSOrEBY0/pTs=;
	h=To:Subject:From:Message-Id:Date; b=A1jJD2P6rS+T0nsngdzUL7hlj9Y7/wQzTytm95omWzMasOLWLSS8DQkJHnZ8kDyR/94pDF+lK9LfVfTuCYzmT/CjVwKWki07mjC+WqoeRHkuNJObpneihwsZTAKzAAwThgsm+JZv+U9jugLFAXHWHoO5FwGsZo9/wyMjkRTcK6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7ePc/4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7ePc/4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C391DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779978153;
	bh=Avarzn2eUNeJpF39gT0kYcnvJTZWTgORSOrEBY0/pTs=;
	h=To:Subject:From:Date:From;
	b=u7ePc/4Yc+iHjKS2B/QK8hk+GZ2WAtT17l7OSLGD+qnJXwqPjvX7KifiYcMcxJTMh
	 zQ8G+PCIiaRTZsi50WM/qepN1+p5uyjUEMGmWhxyWCy+G1eW3uyppzhvxexoqDXsxR
	 YwcFiONgD6lfd+SWeZr4CLEvzPXAIm1w31LO1nAemGbi0wGOupcF6yDEka+LJ38ocH
	 iVvXF5VwhBwjUbk0UFoWulWO5ph6wzu6oJEMXoUx+mxIQgEDUnFxmiBkNrscLDHS7c
	 08iQiSdlzNo12ZxuiWegtOw/yapco0pAtFr7kdUaKE53X3snJWK92dHe4LTPFOB2uV
	 WLwWBIOVC1nWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B4ACD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997815368.25748.6528708960742921428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92684692bb3871c98ae7d0bd99352b4beef49be40ee5e7e6b34ab6ec1c7e3a91
Date: Thu, 28 May 2026 14:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779978153
