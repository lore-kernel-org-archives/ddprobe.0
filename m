Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0F02E62CF
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753275594; cv=none; b=T2bQTn6asYqiciQn8nBHqiUrESMtSZccnIYdh36+dL64jmQWGhPOpTeqgWT6XgDd3P1rVGfbkL9U/qWaczynDe/fWZAwKse7+ytraCTcKnk4EButgUOaaEye1SfaBWC2yRbhJt/6nQLA9RnP228faU2EzptJtUZGjYb+FRZ0IvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753275594; c=relaxed/simple;
	bh=PFAv1RhnR1PeZkxtxy4IK7QEvaIR7UAdyMRkn+lUxdQ=;
	h=To:Subject:From:Message-Id:Date; b=mOYy20bsqn/28daZ46VkXiDJiVBhudSqeHVjI/GUDIsdMMhuUM7H1w45T4kK/+fs8s4nqspBP4FgLUpFs9bfobgIHr6VltDlWNCWxzrXVwvO3Z04puJCyt6z78g+xeizHUMpuEOn3XWBCnyYTGwp0fU6wKg0Az8Xm3TryztrLAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYHIM1iA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYHIM1iA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1827C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753275593;
	bh=PFAv1RhnR1PeZkxtxy4IK7QEvaIR7UAdyMRkn+lUxdQ=;
	h=To:Subject:From:Date:From;
	b=lYHIM1iAU7GzuGh+LT24Hbu/gb31XmAp3qcIx0GsUDsnhzQtRW2ChRwpES7mBUKro
	 2+fmgtbymIPkW1GTf2Sqjiw7fuEgKJCcLW1S8gHDeaT8DJ+d/exPZTBHT9kBC4pmRd
	 JMwF1NAKYGdzs9IMGpCEcQIOuXRRI5jhpeeLqDlkU32bhwU7iSE5EEyyFxppAjRVX8
	 gD8LDWxWnMJUlcaoNFIY8WurYnFK79vD3te+g9Sdq9sueoWxH1+u5ydk01q50YAjuK
	 QWq2oMysVG3Iauwowe1LUyxjpnFz5L9i5gohtH3GhbD6TnoO+TfJ0mzywkEixa5EM3
	 9QquTdpCiCBog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFD1C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327559358.18100.6793497684562713176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ecbdc3f6bf8c441b48ce24aef5b7e7f05cc1c79104753bbfe3aadb9873b9ce
Date: Wed, 23 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753275593
