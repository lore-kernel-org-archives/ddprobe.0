Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EAD48A2D8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784635114; cv=none; b=atbU3zYACu9ingFnlEr8E5ZxKuBTpld/AdtAjQoV+/4/3rsTuk6MsD4G64dZkKgU/nGbVrSTxw88NhREijSQAa+eWFdsgdk6dJEPi78DeoyG8gactmMJfuWNI0H/Jyxy4GSBQUK19UctYX+AylN6KgfcXufcOMQpIf9jBAhuY/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784635114; c=relaxed/simple;
	bh=/tEdfc3Q8fLuxOo/9OKcnArEyaL8ppugNr6dV328bDE=;
	h=To:Subject:From:Message-Id:Date; b=BTPWxi2uiF9o3rZLbUb8WEM8VyGu8wPeXBTRoB6mM+B6FSwLXycRa41O0c/13fUp58xq+8IHFDKB5uk4Q2FQ63HnKrYppKNBAxynT5K4i8ZKKp5XPKYG+CrvYrBjw38tplXeM4rufpvGxDGSDG4LMKPLvGrduKBgLwy0w/6AHGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOJRvPG/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOJRvPG/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B22C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784635113;
	bh=/tEdfc3Q8fLuxOo/9OKcnArEyaL8ppugNr6dV328bDE=;
	h=To:Subject:From:Date:From;
	b=qOJRvPG/aCtT2NMKzKB8kth8Pd8ZOvmbUNpJUcRYbmJAbe180sJXoYsiFH2XVm5Ue
	 thKA1sC6sxIETWyiJAyFp75C43yIZPw3dBD04vlvHjrzdAGvXFVN2S+DjeQfnqqWya
	 2mBAObLi2Z0iEYFKWQcZF4S/o4uea4fDAqW1eVy6jNSUo28Zf0lnUQycBqT34Pi3x1
	 Zch55itTIxs/DbluYxf6EALLlTWV0XJTj3VzTYuC1JQb31niqEJMRvvyg2A4sKF2b5
	 wLjS4/ktaHeiSh9141hsvmzMlZFF/UBsix9lKwnMx/jBeDlQIJAjrf1v1vSPWZV01m
	 JU5Iyjs4KRRsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA33BC4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463511368.7001.1523367353781233029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5733f02de906bbf38d6be1a29bbde713f6b045cb32f83d7d1970fb3a646dbb27
Date: Tue, 21 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784635113
