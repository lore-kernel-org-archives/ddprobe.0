Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214FF8633A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750856994; cv=none; b=VagI8zjXF5z/lsHCDCn64e+pfXj3FMOC5RGa/ZtWDVs78ZAC1XXQp47EI10G8/Y9jK6tITbi9lFAcOu7qTSAEf1YfdXGeav4dVCbPFR6z9ibzpsdUsl9W39O+uh5q7ytLWR2zH1uiaFlploR24kQWZhUcrZigIXwcYJgF/Q38aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750856994; c=relaxed/simple;
	bh=NxWM5Kr5e2vcNUZdgokDJ/TjOOFOa+3oKHgXJjnaq4Q=;
	h=To:Subject:From:Message-Id:Date; b=sOrM73luIIgrFoqYc4qkHCw33ewX6fPGU/FaOsO6nyn1aBaDz5QAxABGZNkl95+Gvp0bWXSeuWR2rM4Kyrekdmiou+T/Cn3bMMb2gLJwCv99nd11Cg6OPDNUeYvSfMGSpCNoxSariM2ONBAAklz8e2kvXTGVSLYc3y9Gc7PhwLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msZr2zFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msZr2zFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A088FC4CEF3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750856993;
	bh=NxWM5Kr5e2vcNUZdgokDJ/TjOOFOa+3oKHgXJjnaq4Q=;
	h=To:Subject:From:Date:From;
	b=msZr2zFlFzw5TXndJwMjRMDytoBk2tWroamAB+D1p5Ml32VtcBOUgznC9vna0N31A
	 +ZVVtBRWQ5ZcNijqcyvR7A6x4wW2yTswolQcXux8IuVJL52EI84Xb0jZboA77SNQaL
	 /GU0eWm9kJKm77Clw/d/xfa0RifI1CANYDot4SuBby6h1ODf/WEwdBmn3zJEpzyRAG
	 Im9EZuDLKV0DV98xJxO1PcgqR1f3MsDlnfdbG5MM8nTJwiOwENa5xWrfcsF3cMf6hQ
	 aiLeXifPocVfAuxq4gyLxjh/ZBaGz+44+KhaIwkQYT4bdDr3wkFWi5T4ZStBAp1qlL
	 qyeHbaKNALIsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E5C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085699357.6204.7225115205012315897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c4a585fae4501e585fa3d788045bbef96d54284806fd70f42ce5b79d2d07d9
Date: Wed, 25 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750856993
