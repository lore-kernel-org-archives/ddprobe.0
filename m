Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED0B15539A
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754017194; cv=none; b=MQDLiyL34WYweTzhhyjbn1sdaCDlpniQFmH8bPGJP/pgHdC6L0VhYIf4lxfx0+q9NXIv7/BjgVddQbZOFy0u5ccbMgjBWr9SpLTySjbmct25VJHGns2UUgmOfu/7HhK/O0rtXLAYIou5eYtaAWPWiDjP+w5GKFf+yBMAA/8lxIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754017194; c=relaxed/simple;
	bh=ZNrG3vwbLYil/L2qYeCdA0/Wc/VxjOhzKHHpFyBv0rA=;
	h=To:Subject:From:Message-Id:Date; b=gy/3gNmSGoJCg8b1VTAosAxqB5goXRWc0t/iTJgXIm0XxjLMAGylZRAp6cbhd4+rEtd2l+gCvzZP0uMobcyBR5Af20wvNofVo3tLo5yomndlEofDtBQidvW12w5j3FR75X1a3WlQxrjU1ae+Ko8V4jQ1F0/Y2kcsEoqXYWXbkfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/EjukfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/EjukfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17F4C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754017193;
	bh=ZNrG3vwbLYil/L2qYeCdA0/Wc/VxjOhzKHHpFyBv0rA=;
	h=To:Subject:From:Date:From;
	b=s/EjukfEppuwLDPFk4FnxHeyki9FvPH74EIugzazXh9AHRNhlGKbP2qg64CUKHDAG
	 Cbmm2w5IQvXELXlni1vtw+CYWc57RlyALd/moAZFFfySvoqlkOuz4GQZyI5dEuv5TQ
	 0EJ78LQMC19z8ffGn6c4zvbbHV4H1p5h3cOUZVaDiAR9fsYTkELM3JMaymPnTLnvi7
	 WVK2ZzP6YeAOwu197c7ejXQUvyaTj2atZgOMoqA5C0PQSHjMTy3iZ5TLdfG5mQTYfH
	 yicQUpPiSGEYsk1oW2RCfH0KtiFLQcHTy3rkJqSetfugjQ0krq/L1ne0ysblK9IImh
	 h/Xar0XlIagbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F868C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175401719358.1831.16164479799531773490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a8399effac4c50f70619c9e0b167b22b31a04b7874671bc214c4fa7b06ee61
Date: Fri, 01 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754017193
