Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF3D3815DF
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772436894; cv=none; b=uUP8YmLl3aEwLTHvy8Tl86YJCX1eHD78Rav2EeD5FEydcZW/LfcOXLe7lGBZZy0ELXP4SiQGTGTsrvXB9HLdPiFEGIARpL1vucIyVYHIWw2+DSwWNGWy7xWKBapZBaQKFYvql/9Q1zrJ27qPFPaAE90R9ncEQK6nK5I+m5VFprU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772436894; c=relaxed/simple;
	bh=g6jMl/3MVwCrJsa3ZRobgnp39XbRRP4sU2exFHfLc+o=;
	h=To:Subject:From:Message-Id:Date; b=aOy863zryhaAIwkxwDSfcIaAz/hLR9FBUJCKu/W2uEDv9OVhVwcYcsPKDy7khB7Vfi86lxGDcg8TKKyPk5dfnv41MqFtk3Fmbq8fC20TrfnVI47bOJxvp1jxB+Q7mw6OfCrocI8idjXNGZ76pVcB5AhjkgKimrCP9N8EVjvUxyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=druNBFMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="druNBFMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AE5C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772436893;
	bh=g6jMl/3MVwCrJsa3ZRobgnp39XbRRP4sU2exFHfLc+o=;
	h=To:Subject:From:Date:From;
	b=druNBFMwpRJB3+ADRaLhkDZtSe3gk9ABHwEtBzKHtesiV1fabWZlEUPHF45lW5Dib
	 vHcsKt2C1hzBSPjqE8HSi4qXXj2sByyy1l0RXYPIfzJwn8m7iHZnFyVw+bmOaiNfRd
	 9wTTp7jBA+rqvofnGXggOOZW6NeraU9A0L+LjezMdZyN9P7TIxtoRG9zG20fK3c8Ka
	 5RNsOmidUnTMBDrr28DJi9Zr4wjsGE848dstIlshxNLNt2HloJGvV9Kl1LP+XMcS/c
	 QkK3iMwteSy1RwrkNTW9ifC28L7b3UG8juYpp+0WxVxzNzGYYB91H1yqYiQYg+9Rg+
	 ioHZS2WzlS7gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CACD58E73
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243689359.30415.619817936972329657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55bbce5db05b4bb96d01d48d0235d98ee3d20e3dc563e22948ae304c1ad5cedd
Date: Mon, 02 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772436893
