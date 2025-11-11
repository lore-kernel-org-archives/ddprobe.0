Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE95F2D0610
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762887593; cv=none; b=XLnmkVrz0CFQeUmcI1tuylKAUKWqIEiCPeuOMn0ComyhuYcbsY0ifP1X4I0sWoT0I13bo04/YkL78e/pzUjPtDXBEive8xEEH064ooGbeEpIEXy+wTZHVEAd042p2Li3QZ8vwrEsaosI2BXWlaPyxFhl2X0WHoELHNeo3TjoJeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762887593; c=relaxed/simple;
	bh=YcU61QTuJWH5ik3/H3kleJb3DPmokgYXaRyBsEtyDHU=;
	h=To:Subject:From:Message-Id:Date; b=DxqYcX0M6YgkftUhWmLmaJthYKJCutQR2ZrW5kHV/r1m/LQM9K4UfpnFSycFi4QfPI+2dRazoZsF9WXN1fxpllwA4T30oWUj076XazhjxiBtB9/BcROF4qfxgu3wlhmagb/cYFRuzYtrn/0bQPnAwIVSxqYZC7U1IsDu2PMF/zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmF22Igt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmF22Igt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99789C116D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762887593;
	bh=YcU61QTuJWH5ik3/H3kleJb3DPmokgYXaRyBsEtyDHU=;
	h=To:Subject:From:Date:From;
	b=fmF22IgtaDiEA2H9k6Sxi60xjxUPlFd2tVLU4t6k44r+MA99H2W7ZMJkxkDkuGOWj
	 cc16pN7eC9IFFEyu7EUffxr4lBpaztciM4dPGKHjbiaggUBZ0vyNLyZQxyDb8e+QwN
	 maZ0yDSxxjyOY5v3dafYF83N86JQGeovRzYPi1vv067T5LLunuW27wdRD5ySgw5sIU
	 Y5KfCi1KDoD/6BP+Pr+bEjeneRpgWZVJYdeXTnX3/mC/ua8UEZlIjx/8Nr7any4cj9
	 +cxPTcjEdodtW08biVm4GT3uzHxFCFv00c615dNYiJ4AxRPQFjFnwjnZAPVZTYWI9H
	 DfgUzHRHWzBAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7D0CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288759357.15207.10518158113168746392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa5c06b2abee3428046e75c36863aa19e4b1f5a4b872a58aec86f53e4afbe76
Date: Tue, 11 Nov 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762887593
