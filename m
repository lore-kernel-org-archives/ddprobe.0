Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFB529ACD1
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773998694; cv=none; b=WzY8Q8Tb1BH2ZWSFDmcOeAMSHYIceNV9B5BG6gC48ICPw53U+PSy8ldKUtTIlqgLx2hBDuPWwvCVa1wRjprF3U8wR7KHU5ENTac6I8wzefUWCK/8ta1jfw6FLdPrJakRdHAzNgNzT4a0YLioNZW4L7dbo/07Wio+p5LLRQh5yw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773998694; c=relaxed/simple;
	bh=Md9x5Vxcw0Os1zlfHXYt2+rA8GBpxB3GBKyj1OrIR04=;
	h=To:Subject:From:Message-Id:Date; b=VrChHaB8vFC+kIFdHjeaEoP92gtFgDZ1Kfsx6d5cK8hKxzs4PwPfktADKgf1M/wAX6TkNUeKCJtj2V85F/FOvsWXi/x0uxf434GfgAJc4R9LZ2Lp2ejLTUObPwhrpolhaqV4LkCAtVXAM9ek6qZTrk4GdDUYeXluXv45/g6iRHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8jMAQor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8jMAQor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00A1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773998693;
	bh=Md9x5Vxcw0Os1zlfHXYt2+rA8GBpxB3GBKyj1OrIR04=;
	h=To:Subject:From:Date:From;
	b=g8jMAQor25hEeonTsV8RVUGdcHgiG5X/H1EtKGsYm2Jt/JFmHIn89s8/gBY7MBCaA
	 7llxhIqoLCz5rjKwsTZIhNZMYDx9I1MtEcuhuDCaHtQ1H+KU0JhsJrrqlGLlUY0YfN
	 09ty9Mplv93sR+D++y+3wY5/wptPFS27a19PeHIid6Jyr+C4qF+YaMszXjM9x5JCVX
	 Wd+W1Azw1FT8ydleGCk8JU4z1IBxTNMocl3tUI7z29u+e1YIspvmbug1X2S/SV9bGe
	 Ps/p3rGgG7oCUHz76+gEwHeGbF0tlLAfBVSU+hVFI0u9NZlCjYLO3dBb0XFg6hNZ+D
	 /1Eg1de3ApLbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1CF1088E6E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399869357.5343.8323013419382307276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ae713813eab4b261566734cdd569409bb7d7e49935eee103e8d5b461096055
Date: Fri, 20 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773998693
