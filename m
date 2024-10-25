Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD2B18CC10
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729878954; cv=none; b=WwSMowZVwM8gTzP3SDaZiEn+1VblUxYsEObBGw8c1USP0bb9JzKS/dWbXAYP4vym9+b0XdDie+omiw1Xw4d4OSafofefN4Fi8lfuqVRlBxZnT7DcPPeOuw00ABqs7IkPs8DT3KBp1WYGCgZrAC8NejKRFYZSOGPbwf7u8huRNkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729878954; c=relaxed/simple;
	bh=M8WNnJa1BTsv9MXmMH0G88v0/sGBxJxsPbgnqk0Up9E=;
	h=To:Subject:From:Message-Id:Date; b=uIOrrmmbxefwpEeMMjKOn7kTNq/tL0YA4xpCWa3Hr+9jftqCNMGoP9cgfb7vY5/6VfzVdNfTNKPZX9vwMbX3hF86/TbBiSLM8uK2fSIzsWL5ok0AZ5AJ1uXGSgh1RjG5EwEbgvAoVtQI58TwZ0B81OKX+nmsuI2PgX5LAzpcJyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntJXN9k+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntJXN9k+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E01C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729878953;
	bh=M8WNnJa1BTsv9MXmMH0G88v0/sGBxJxsPbgnqk0Up9E=;
	h=To:Subject:From:Date:From;
	b=ntJXN9k+23MpapqTDnJ+V0QoxyAb2Xyd+/XPQ0N3Brv5fgYR4B5fpadNitQXTKwS5
	 7lhedtnU7GC4tAWXiP3yL7BZlOKiNR4HUwvFO1y40Du+ZJkChm1xka3T/Ie2hSIeBg
	 9PqdjWl79aYARHpJESAZg+kva5sop+2cbm+PAs54VZ0mdrgPPthWfUSbz927dgPQ2z
	 4hGgREJCswToXz+sNd1CJwfoZeeDz5dOlu5aNW6wiPWzHH08k9Rug763lqFzmtSSxO
	 FgfVYYN8bJzc+9wuLwj19K5Cx1paIRHF7NCezrNIp7HkLq8X7qGPtMXGGns7Lm/E7g
	 Pu8XQA4+lVR/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9099DD149CD
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172987895358.26452.7292779874606494784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 517b8f96934cd70869f0a06e8497958f538a3f7b8473cb6a79b2a51dc3b5f1a8
Date: Fri, 25 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729878953
