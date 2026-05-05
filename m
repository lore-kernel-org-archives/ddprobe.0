Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9C723182D
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777972654; cv=none; b=Tp68zZN4FQxW1heIO2D8O3XU3HYiCi3HQn6sNAyyKqEQypfzMD3dnNP9owdwi4LIT+mm4nBu6BRnu1KoD9Z9iPUoHkenM5Yy6Eq9/tgs6MDgBqkEx0uaaqPnjdidmomG69g81ENmYwXm7YBzV22jq7bdy0oX/ew/oMOlSsdXa10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777972654; c=relaxed/simple;
	bh=QmVoSyOb3j3tJxb/qtgDJKD/6GN2oX3lvlDf1/vpLIM=;
	h=To:Subject:From:Message-Id:Date; b=t8eBh4RGXnzn/AcXs9SXiwJ7Nkr35ajFl0aLICE/lTkHbcywKntmUbOhtb/30WPTIcIUXInpAh6FVPbFwPpH1gXo3NgVp6n30zIEPjnrxQKo24kE5rc4HVeD0eDUDDVZ/IyiuizWI2gU2yUSHGZt0A62a2dCq/FUajhyyJOzNP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gI9avxna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gI9avxna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89DBC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777972653;
	bh=QmVoSyOb3j3tJxb/qtgDJKD/6GN2oX3lvlDf1/vpLIM=;
	h=To:Subject:From:Date:From;
	b=gI9avxnaI2njvET7yFfFtnOYeRCwcZ9J9SuKSxXqARYSmtY1A++dqPSz0J8DL6t2P
	 yPJ/JFKOnsHh6fqbHu+gdbXd0Jku5CGzWt1c66+MnTdZ/J+EBfIRULnikfoKtd5nYN
	 CxWhwWS3FEwnwGxM0bPlB3MpiIFOZClMcSkHKu0PD05MQX4UI/gmx1cJDq0ICru97N
	 Lf6a8fAwybP5/wFbIin4co5TdVvwLhDuDv6VNo9oxT+BDB9rMttbVAoqCEY4JkwRyY
	 bSnpiZhJZ0zADrKpiLEwIFjIaW5icv3CZ21WA37MfNy4a6qewEHNAsDHbBpwLdN2k8
	 UnOSYDJ6Ld0Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89E8CD3430
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797265368.4063.16561322116810820242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec2d80ff4b6085d3fb07fd8227ba1a565a946cf84bec9c30f18afb1130fee543
Date: Tue, 05 May 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777972653
