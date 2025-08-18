Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD3B9257AF0
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755505793; cv=none; b=i/OdG+piOrd5qql9wB2UVamaz7YX5WjT8KZwcuOxkf3O2OhnNJ+2bjM1yHtYpwPSDlPjvzfgVPJl8S0+aGW6aqj5Xk5FlJUvu5gD3UMVkNSMVmWRk5yV4pvktud9M2zb5n9QlWbe1mn6zjO5JVHD4Bo5sWSt+oH3UGVyX9CF/Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755505793; c=relaxed/simple;
	bh=AIRuauyecJZ6a4jPe4KvisoIO3Zgw4HDCGsiyQHeSIg=;
	h=To:Subject:From:Message-Id:Date; b=Iyg0N9h80RHcCvv5So8JiHPNSucihNTpRn26LWF3xjji8L+VjIw1O2C1+E3H3n6SH2vdOIA2aKiBBJvRQJ6kJbGdfZFN0LGFh/s2+bu0yCj0P30pwgu2UvRvzbRCBUncO/77jgFwmKu/Wxvt6VBWqeEx0/sneHUvxb+4lGPdN5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4q2JzGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4q2JzGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B162EC116B1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755505793;
	bh=AIRuauyecJZ6a4jPe4KvisoIO3Zgw4HDCGsiyQHeSIg=;
	h=To:Subject:From:Date:From;
	b=C4q2JzGntp19ugzazaSoNbnD7ZzIVTEoUVVVL1jPTknCTAl9DoOyczOPlFomFEZvm
	 i/IJGdEXmHvOS4pK2qJhhus0K3zD1lKENzqiwIdMPJssdBwf0ZpVJ7pARI+5nl9vrI
	 TtBDcBmxJSrFc6vNrdVf7vwSdO84JCmeQaAn7eBueuNsSat+rWsVxjwIvMoBwVxy4j
	 48uz4/+8MA0D5z4rFKRnluSlFpvAP579ZRwJh8eFkJ4STKmVTG+BFtNeu9bJOw9qIm
	 C1TV0AhgaNW9XF7sJF/DoHHSMI6Hd6kFjz1dcvkoMt+sqy9AE/LKHPrfCF4S8OoTcb
	 b02n036haxmyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7B0CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550579363.10170.1219692976088338533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 515145850e10924304a00554e6f10931e29b9581f3559c54ded20d6281d2d4a0
Date: Mon, 18 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755505793
