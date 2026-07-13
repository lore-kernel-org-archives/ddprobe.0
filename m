Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9993101D0
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783936714; cv=none; b=EctQHntg3iNhfVmfQCY275a+/8Q++CLJ7ABEn4qjpBO5ImIe56DANpY3n/imXMMv6Mozpq/xx3NeOKtkvFEqMKiXk1CT1KDEm4/aF2/mXkpxKCk/H6rHeWUunGbtho7pSQDot++zixB8tgdOpp7vanrhAy5MsQMRy+8IZDqeldI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783936714; c=relaxed/simple;
	bh=SdrRqKJ+lwXbLGbSu3dUV1AJO38G/1FlnobZdOYZgbk=;
	h=To:Subject:From:Message-Id:Date; b=ag6zhEaP+e1gFabGWQJ4CVS5L19QAQEVRkFZsnfPQDAyNAHyg/WgbWL9ZC9m6PLprpgQTCPOADf9IeAbgPFxXKx/aF2sq4hMd6RCOHA62Kn+Wpjsv8G3UG83Jad3SblTV7EFXuloydjqNNv9SRLOVsyyDKV2B/DmHzewFii1J60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ts2SuiDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ts2SuiDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE25EC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783936713;
	bh=SdrRqKJ+lwXbLGbSu3dUV1AJO38G/1FlnobZdOYZgbk=;
	h=To:Subject:From:Date:From;
	b=Ts2SuiDCI7Cqy2aHD12IJbzv+OwdYdN1rfWOCPrYHhG63sMSx80dNbVEKc5aTNff3
	 5eScvGqDmtXeq6KDcpttGlbyq9Ix7e30O7DfW4NInEZjm5F1stFeWDpjStjgJ/bFiE
	 7hE+eoZ9pxFr6t+Itx/tOVp1UZr19bTRMd1Z126eZu7BwhDDy5T/kqQmH9tYyAgaeq
	 omdbE+Nc7OyvD3yhFZ03bVlJExUQ8vFZOd8FsWNSjvpzISYy6uFx+w/clxFAu26fbP
	 6woG4+tsX/KSxFbrUKjhJVj+QX4dUWxNcrdPx3Y30ls8SaYKXBsu/pDscuyb3/uspM
	 57chUtSHhjoWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F8BC44507
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393671373.19263.8512249355784719701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108040528c0a200b1f89e8ef73aa1efa53236cc2aca537d9587abee64dbf6ae9
Date: Mon, 13 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783936713
