Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73DF37BE77
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770648833; cv=none; b=u7OjMntvivt0xVgJ2r/J9O+u2TQfUarsnHYSru8RI2iYI6u8vIGFSgC/qXQuHxxpFGyPIGskZth5VeWXSbzIMLe7LT5u9N1HRg68/xMmS8f/PV7Ip7IkpchmRwOLxHML37SkWclR5Fg2XTcvDl3ZDOgkSXr3KafbmreK5gBbyPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770648833; c=relaxed/simple;
	bh=1p2zblbvQc+K5z8amDWsTdw8a6tlI+z2HsdEuEFX5m4=;
	h=To:Subject:From:Message-Id:Date; b=rOuo9FjuaMMf54kWaX8Twfwebe69AjMdxAiuEwrxlsSgAnLMlql21mzzH5kG97VLcv67J0sM2lUt2v34BwbhMFIlgNaYTYTa7ZXuU4iZwsCfyVDDdDpHXzuCWjh0GKgo5U9B910EozpTRZLyp0nRiBCIulIo59WXsGi+Tm3x1YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXRfwQWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXRfwQWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1C3C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770648833;
	bh=1p2zblbvQc+K5z8amDWsTdw8a6tlI+z2HsdEuEFX5m4=;
	h=To:Subject:From:Date:From;
	b=nXRfwQWoTsdIlMDBTs4FumSEXcawXG3mVaWx7s2MdyCqLHVynk9Yqv129LJssd1xf
	 0xkcMXAM0haxAZd85tQI3aaMH5iKsdLLnHFZz8HkzacTvuz9KJ7ID/x0ZShXzZXp9I
	 997IVPIu2Bbp2zcav2pYQzljD91G7iO2ocdEEw4XbdtnVbBNFcaZAE9VEf66ACLLxa
	 xJAveXHl2Pz4wNqRwEB7dF4TJDyl/ML4iVr6y0eosXO7ZJVoltcgxPRg6rRg9R1PqA
	 IIrpk5QYfk2t5afjrfSdAu9vCi7ngBvQjUNbqR/uk3LlkD1ZiLLVKu5S/IXXqndHfL
	 3HXl8298/10/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BF3E81BD1
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177064883360.32611.1432882274221501231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b322bfd4e5c08e3237a16fca2d4b575e3e6a1283f1fd4e69a3e14834a4e9bc36
Date: Mon, 09 Feb 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770648833
