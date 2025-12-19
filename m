Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216B63043D5
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766182434; cv=none; b=WXDRoEta9H33qgnZmXCYFA/Ema6KFqo6MCdfZM5XDJnBN9BBhryXiK9obZzNrlJMttN6wL5CU2nHzOfAENde4HAi71ic3QpBeLepIPdI+7RnH3HgLnfHgUjjcM9wIuxej3HmHlWeC3tStAnqY4QahuJO7kfQE+/KPK9m4Tm7Se4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766182434; c=relaxed/simple;
	bh=Ex9ctw2Ylsi5YlOQLGpptAZh9QAU6mcaP3tdkJaGjgM=;
	h=To:Subject:From:Message-Id:Date; b=oNvFrIx+SYSigSVZ6Rgu+xPR8dkPpdo7I+eRjPIi4SmVe/lIcFjTCkKlHtLoR7CtbBb+QmImFryIz0cumtzsgRLDBWbkMX7fo9JvqY0+Vb4uXuBmGsFO9mgzHJoOlArjc7h7UgtZbjVQRsYdHzXh3N84QpDxarolzvSKbQytDpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5wX/Cjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5wX/Cjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D96C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766182433;
	bh=Ex9ctw2Ylsi5YlOQLGpptAZh9QAU6mcaP3tdkJaGjgM=;
	h=To:Subject:From:Date:From;
	b=l5wX/CjlT/I0ceLw8Nt0syX0h/arRUopuVcfX0Pcm46O6TPJvobrlBgq5Lh1fyBXb
	 C97L0CvdPHK8KURGaOuUJaXj7kV8LgtP4ogJ15R5RNVqBt99BBPZ3qokxbtldlZTNU
	 d6igYMtIdGBlmHl11Dq09d4aW1VOggPkhhdOS8zjvHfNAGEBoi3RNiydaUS2xCgg01
	 n1cKu9PfbsszDlzvq8+Yx4Jc59oRrLWIrqDAR1fFthWWliiuS2vrzqp+izo/sPuX5s
	 19v9Mg5UUPcfTVV7eBU/7eysbUs2YtC5sOySLZvGoyEO3XW/b+Y0Y5nqpFwGmsYpFR
	 Suo6w222/gcww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983B9E66891
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618243358.18707.9575249756799004752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef70424289f1a53d6f52b1ecb71d5e3779fcac4b76c1d43f93c53adf84bda8e
Date: Fri, 19 Dec 2025 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766182433
