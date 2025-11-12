Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1939821D3E8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762972794; cv=none; b=rxbQE2criNTo9lJSBcJ7CpXPf468xQZUtJj2T1yssoDMlpKUxqLEk3k2pq9DO2S2/PAXCK+PGRYDU+/m6Fksmqk0ejvDL4hRUpYgHeVZ7KIOcIj2Y2cvQ07ErOa60DNPIcJBtrTQ9mm9FUnRIWyX75YvBtbfd2ljKxvzgowRaa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762972794; c=relaxed/simple;
	bh=PzzH4DL4X80oecpw3eiBRLuiwouC7StV5GfeO69cn9I=;
	h=To:Subject:From:Message-Id:Date; b=jA4PFfPcVeAspagw7onbnl06G2m3+dCGJCNgXJ75QxWks/nD5N1RUOcGmgJFcS2OqI9sJbUkddfr5cfhX0DTcuHbry42543KUMCm6iBn3icEsYLNEX0lfdmIg9ACk5La8jq00FW307cGwR/mQu/4XPiDBm0RGUEgacwwPZR2hSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ga6X0Z+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ga6X0Z+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C796C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762972793;
	bh=PzzH4DL4X80oecpw3eiBRLuiwouC7StV5GfeO69cn9I=;
	h=To:Subject:From:Date:From;
	b=Ga6X0Z+ldr3Lwuixn7oCMKVcHm3ZmovX+LhrcIrCz8e3dznkN1ClszJOTlT82XlT3
	 NEdB1ZpvclX+Z30xU3oiyBhCm7nHld3Z1OG6nXyrU7W3+9JsT89iiSb3Ujhl4G7o5t
	 jD5ay2PE4pDJcipWss1mw2XAxxuihdIk5WmWUosQlNlKACIy0IRnXwE33/Wb9N1YtA
	 WsyLttZev/c9QogFYjPU/3BmIDsaqDWb17rA2ELj9nqs4GYuOXF6B9mIpQlaHkZyCL
	 f2A6cKUAuw/MwL5FdaN+Yh2XLpDSkb6zhGd2nY4nCTMU+/dZidEDDlD8VLdp4xewgP
	 95rU+fBeh+AMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F995CD3440
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297279357.16546.9490077991865063900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375338c2d10d0077de726eefaf029c4960dc2542769ee911eda4af6c381ba3ea
Date: Wed, 12 Nov 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762972793
