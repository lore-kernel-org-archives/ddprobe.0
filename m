Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196B4226CF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766680434; cv=none; b=gtdKcVQFkwd8O7SyKQu/+K0IyK/M0lihWhHV7SHwtpVNR+G8RIxwketcA8vULtxcd6OtjRCRmTHuvMLsb2kSajKyX+3w67QiRZUb35yDw5wxp2k6czHgr/kmDCsQMAmSLfnsJxIyB34qQgpPG5gvRjep2t6U3IQ+Ko0DqCdlePU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766680434; c=relaxed/simple;
	bh=cD6joZvf3QJiu4ewmKt5YOVlPEArOWAxloy7cEiHeoM=;
	h=To:Subject:From:Message-Id:Date; b=j4PVAKu0UDw8RRJfv0JPrUyNFQ0h0rUCEoSX2k6oON0Ct6+Irhnto+WGfZC84I563VOyecHNNsZ/fDl4bQQtrpsSuZu1pVOflg6GiKFWe3rMLlNfNMuBJqeQ5sOOnyOKDmVeGSJ0qf9TkSnsDISaZQxq3PWy1nrazqwfMgW1cqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPaEH3Np; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPaEH3Np"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA99CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766680433;
	bh=cD6joZvf3QJiu4ewmKt5YOVlPEArOWAxloy7cEiHeoM=;
	h=To:Subject:From:Date:From;
	b=gPaEH3Npt1ZdHItm1iBnVgw0LKCvjs/FduQCWIEoRW0I5xva3MUMJ1e392aeLs5jd
	 m8NPJ0sjGj7RnoeLI8fu1PRi7iYNzgoMvkAt7JoOuXFJ/EWetB6E5fw1w/b34LlIYS
	 6rHMvqpoQmvVa/BplUEDZcs0CECD88uG3ZdKrPHq91DzLLTuQDsyqkoJGXc/k/ZsSV
	 Nw/eU5toc/wyf/oO020tRcDR3fKw3/R2svEIDJuYa4G4xdA5m27fa+y3aQBBw9XPCZ
	 2J0t6DPvbZ8RpaTDP+gH0fPvoSQnkfJjf7ZJLH8tnApqlMEIHvMzz0Zu0VQXdN+rh/
	 pJGlbOFAr+TLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943CFE7AD44
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176668043358.3301.1728991357845218640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ac9d87ea59d89cadaa3be9efc209e2d1683663981695e1d68d92ddb68f0276
Date: Thu, 25 Dec 2025 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766680433
