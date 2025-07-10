Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351C227056B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752156594; cv=none; b=DWBGb2TWOObOmNyrqQ/WyF4f7c5HnaxftCtUjJJe8KzElcSxiBKf78xianq0lYD2Rd3wGgRd4ZEibUr/Vey7woENCGsAJBQFAjQx+j2Nv/gBBb38XE0yrQFQ2VFcDRfYX10MgKF2+SrgJ5/OWMlOM8Hi706O9I17v+mhy9puzM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752156594; c=relaxed/simple;
	bh=pa6gS6KHOX1neL9NkssW8I5cJfEPjhtjYQ2PyQX4sVA=;
	h=To:Subject:From:Message-Id:Date; b=bcW0AyolqzFMbUl8+sdd3pu1uYzI+j7/xjMGzq+1FCif+Y3mQdfwAlJmHMEmfmZklw4g0u9PCfpFvPDo6yN3s2qG6mUtigxYX+tQIPZx9evke7volu4SkeJDLGwM1O2uzoA9j2MeiomhKjq0zWnJSdsoZyL7MSpqd7SguKXglu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPqhPBnF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPqhPBnF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8620C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752156593;
	bh=pa6gS6KHOX1neL9NkssW8I5cJfEPjhtjYQ2PyQX4sVA=;
	h=To:Subject:From:Date:From;
	b=ZPqhPBnFpJiP0AoZeTrcFRuHiOpnX6RiX0Jl802djsJuTvckg5jbvSodZJNHG+U6A
	 FQxoXpnUcV0iEjf71qPqtoLOgm1XGEm6so/x3jjp77D/io0y4UXJrsMzoedWF8bkJ0
	 8Igemzz8613Zzkz9iTnQL0lHswmShnR4DLVKbS/0eDfgFXpt8EuAsykSxZNfwejVXT
	 ZX3StBgpABWP1Qyh40gCm05Q91Tmz/b2V7KQjilK2C3EK2AmaD4R+Z749kmDkIf6GU
	 9i9I2GhsH92xmstq3Gx3vzLmyFK9VCvwVVUIhT5U/zPT+EeQRobflO52Pd/rE+tkiR
	 ltIwXx5JLPPAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E2BC83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175215659359.20738.17167688513733882308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb04a4bb690e4f3ceda1908736f21d6a03c95ff814b683f5a3165822254385d
Date: Thu, 10 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752156593
