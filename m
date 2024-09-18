Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE16184F
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726627554; cv=none; b=Mq4s2/pTOl1M44K2PnV0Z/g1Si7B2odW/UcHUT9P6RKIMT5WRWDHkADdlb8fAvGi7+F5dViRhVk5N5w0VXZEo1YfOyWN04t+fmRJSpvS4lxHHpVaF+93LLBau040cWSM4Zm7QOpC4G5RmbCj941kUVGjIdcDSqil3KZYDu+6Ess=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726627554; c=relaxed/simple;
	bh=xNWmv3tJ+SlAoKtG7f33MbHqina+pRgiW3xuszE15Es=;
	h=To:Subject:From:Message-Id:Date; b=sZXahgN6jhX82UlEIqOEiWDitzmFL3cZ1uvW71gr3MuXpYtmGCds0Q8TWGj3aT2moHwd62EoAsdw2BTZhv3TESL6l0u1qI462UB3a4AwOBpW46JlEgi44yMgTrMYVKy0RV/IC4NPmcKgUfJUz+YJ9TDYbfGjnT4Hnuf5/OeMN7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8R/67/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8R/67/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21A3C4CEC7
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726627553;
	bh=xNWmv3tJ+SlAoKtG7f33MbHqina+pRgiW3xuszE15Es=;
	h=To:Subject:From:Date:From;
	b=s8R/67/HD85S/HOHW8KBnNAd0c/A+IHOVowZ73icQijmIWg+iYfVjFwz6i9/ZJsAd
	 K4jyHBgy5zIp6MfJH0nfb6HTAhlKPG1oveEvqD0CSrr7Fp6NV/kSuSFk1JqJs8J5AO
	 2ud3vemBjuE5TMIaBYCPrK7DuKQM+QZ+s7dlw+pZX3hH3A64WnZDL9n4J4Ql5oQI+Z
	 vrqyfvzdgCpsv2jEzwVCSljy4deS5NoDel/Y8pGb2uiRjUFwUcCk4pKH1HiQqZZQXA
	 ytffcgHrFCQQbkNqXgNAmHwFGxwX89qipnbkF/v/SBJRPKxiB58yZbVkYdMRNniN9/
	 5/hdH3gmU3SAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBFCCAC5B2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172662755362.28862.6288530775052097138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a829304df496e8280366358b368dfe57f435516db90846417da8e7890f9cad
Date: Wed, 18 Sep 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726627553
