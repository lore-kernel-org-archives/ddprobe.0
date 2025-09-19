Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E6C3081AC
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758287994; cv=none; b=byQ6WhrAwmg4YbPQTCWNS4+7XNTRSB0zWIKuSavIVtSk8q/y44ILkFwqnHpuyyx+yo0g0LRcvy7PAT1dum6QEBQrB8Sp/2/BJ3ZFrWp6/AbbYa5cHl3P24Cwrep1abRfqueIw/C5hO5RT7wjwpQTSXNlDeZ3QTsGfjzO02wd4Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758287994; c=relaxed/simple;
	bh=9Tgnucj0q2p+g/+obFctwnqBDUEYEqQd+hGk1pB8fxo=;
	h=To:Subject:From:Message-Id:Date; b=gyqWjct8Ck1kiyUYtXhOmHGsjy+dxPtG1aU5uC7Oem4ZeaM9v2pGZEJl3r7PF6vL2xAX8ZJsSECZtekwLNN0hOKu64jM8Z3DPa/0U029y/+aDpNekxN5qyjxbw5qmtpa8yve16nUgDTbA1QvVLMkGueoP5wwMpXGWgtdidJUW10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BM6dk1yh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BM6dk1yh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3184C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758287993;
	bh=9Tgnucj0q2p+g/+obFctwnqBDUEYEqQd+hGk1pB8fxo=;
	h=To:Subject:From:Date:From;
	b=BM6dk1yhm6EZDBv92mrtNocRpRONmbiPxSpLbfOn0ufevmQrHI6fBOQvSqVvhP4Ef
	 XlrSgv6xiBbUkMta7MjsAj8A+2psB4eFpFw/ZIN6LOrTMxJo7H3cNVXioM/0W6Y2j8
	 YqNqxov93OkJQT9j6aZWsMbkns+iev9/IiBfYMd70mE8wk2SetJ9K5EPq5NdNWrTnm
	 2LLgFrlkYHWe29lI2MtqUvkMuS6AE6u4ov5o3q4n6CSLyjcUGxNHISJ8XB1OvXNlGt
	 /mXWP1D5whcrg2hVkgEwTl0LXfHeKhu4HA/YgESkqSWXeWMYXnxfpuoGvqi2bZIVmc
	 t3vPT+PgrB2OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D9CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828799357.12393.13017437010418013365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ae51025d63889df1a3485a980e0764eb9543e893e7191ba7d722cd6679ae8f7
Date: Fri, 19 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758287993
