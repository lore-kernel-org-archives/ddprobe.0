Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263673085A5
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750271394; cv=none; b=Nk3z9MkvaTvp7tSzfxYfeIGlof45UhVW8HhjgUZw6FYQHJbLjD9dRvLEWRzx1hD3SlI2F8I4d9DWTPOyw4SSAqVJ4OPko5YC+mtmgoKEgfXqVHWa4MoGsNqA0q5oMBcTZA7hDnXeqmqbD/HdF64XWjtCEU+Hc1/SBiEoqRz0Bug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750271394; c=relaxed/simple;
	bh=bPWXKyJeZZy+Xx31BxYDqF+1YB2pfrNDiW5f5441NMk=;
	h=To:Subject:From:Message-Id:Date; b=E2fmbE7r06qaTFsyRtuIfahw+H4+oafkwtLvnZO4ZV3lMNQaSruwZl/9IdXs771waS626Z7bV43ytL8WJiSfhhzE3ofMcR9lSLwID1MW93uTzgAWu9/0oL7dMLOcUVtpPRp+ZrKjO1hrIQJsTmgcx5lPyEJtoY7eX98EfSFx0lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lod+fAUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lod+fAUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C79C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750271393;
	bh=bPWXKyJeZZy+Xx31BxYDqF+1YB2pfrNDiW5f5441NMk=;
	h=To:Subject:From:Date:From;
	b=lod+fAUsy7zBkgTePItZcFMDi5YhtzRNTKN2Ac4Es7gBf+VYvto8UKKfaHJiuAGOx
	 wNqNUn5+1SdBS19TbnsJUvOHvgQiKQXut4/9v+nxztFtRKzx0SOMI8HoKfupwXLnXy
	 RrOEgYV+HJ5eZFkY/lfHgU0k26LjOr235x+xlry4w5qQQNH6QkAg2YToL9TplCXx+R
	 bmF4aDwBKgvwGykSbHtTJlhaLPSdG+NfbYPVqzMWu2tfDLTyC40yux+xiGNVvHnWKC
	 RMnYEXMinGsaTZUEPxtgo6JGIybtYDp5IDkQioWmkBf6ukB1RHg7myv/xW5ujJ49YO
	 nnEuiyes3ov1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96095C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027139357.21734.13984932436201952224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f711f01074b4cc06559310a367d685b80f315f1d05d5e31586f0fa57d218e28
Date: Wed, 18 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750271393
