Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D5121FF54
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751317193; cv=none; b=IbxGxGcfmnTmeJGpQ1nEl+hzsxVlYYHtmeoItVaPz9iCezxXCiZYlpnPCoxoxDb7WYxo0EkEJ5GG/87ZckmTzLj+yek5J3MEznuF2VCQSntesFPr4e7cA7nMpiih+5UNpQ1QLBSNAv2ZK+kEBQdSbmwCv2JndnADVGT1lKDzvgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751317193; c=relaxed/simple;
	bh=O9eizDDghDoE8IjiP6xkj+10pv3HKQX6MUpW7LV9PHY=;
	h=To:Subject:From:Message-Id:Date; b=My1yyA9e1VlUxWN3t8ae+Kkiw8KoY9c0tiFHZHPAFECHvAH031UEW2SpL3fyDu7CajczNsddoKmtWYV0QTrVpW81Joqf26twUDLNN1sHuPO7gsegGbp7VP1sxO30wN1tfjlWsVRpwOGs0kMueioe7zdwt5Gu8DCoRAT5K0BCFY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xy178h/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xy178h/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F957C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751317193;
	bh=O9eizDDghDoE8IjiP6xkj+10pv3HKQX6MUpW7LV9PHY=;
	h=To:Subject:From:Date:From;
	b=Xy178h/mVwYCOmQs+hezae9iyVswYBOvRqk2bNlZa0vwl48SQtM+V9fxcCY1DCEUa
	 MJ9sk+3o5sNrSI20tCLVOqHZleB7vFw9YtwZ5YGhkbwFQI0b+VbMLZF4ElSUCPnWpa
	 JMCivo7Ohty6Xwp14C0ekB+JAKhEJ2mjPpdlEHpJZRNfoajKWKHzaBgPmHT2Hb9oiG
	 7coU8LL8hax9rjU6zJeLCGMwRxzsyGANiS6sHgcZkTF3xm6J8meztfh9Z5u/p/Q4xj
	 O6wszXHDtRojY0P+YBLUX3hpqT8S+u8fHryxNEiI7p0jGqRiUMjg+vLlGMuG4sxYar
	 nYrjcs9SBWxaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCCCC8302F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175131719358.30230.9310094283704186348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6404f1a079ef0f9d06b291abc117fb1f55e83e5eae05e0cab5d596e33646e5c
Date: Mon, 30 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751317193
