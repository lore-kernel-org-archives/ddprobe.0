Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046D4153810
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712170697; cv=none; b=A2pU1eGjAWFY8Nq67PkeyuEF0G+WaVc05Fj/+hjsAhL0zxwy2mc8f11O1ErG0iqHc3Kxb+bP6CfGUtiN3Xb1bMDE5nMWKNm6S9WFwOmxom0aVqbgj3/sUGlDMP9sBRt47FpfpO6yYVmvuH7i5GlE7Ay6RaApN7O6tlypSkRjyvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712170697; c=relaxed/simple;
	bh=T82D3ptUr/V2J7riGGYI48BuOkjO6oGR9BTQ9mY7z90=;
	h=To:Subject:From:Message-Id:Date; b=TuWXGgNewleqzme3ZGLnihSnl/lENZyhrn7O2XD8FqM7ZrTkKUxgTub7830SFuSWw8IOSrzCcbrZfriCrrw95Ge2r2DXd5auXjJOYxCDyHmsNbWUr8LLy64HtW5kZXxz0P+08ecr0441vqY2+fj2e0T87CDwEmyTgDhcH1RHgzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhaxpRUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhaxpRUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7687FC433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712170696;
	bh=T82D3ptUr/V2J7riGGYI48BuOkjO6oGR9BTQ9mY7z90=;
	h=To:Subject:From:Date:From;
	b=LhaxpRUXS57YylxoDdjKXvpucAezqoVIuxSjNOnWxE9nyCAGYZCv8ud/aX7ZnMwl0
	 tJjkfoV2q2HBP82+LMk9q76uR/nugcubvf6rlMicILpX0skWg8LnCcjy4N94BZmSqZ
	 D1/rkRofnwK4S5i2muC3sUthmNE3VnIAzYRpdOzSsU+w05t6w4WcBIcIm+TrRyuqkM
	 Cn8c0d/O4UZfPBGWOED0nlQ6m3+k6kYJMUcvNw7GivGT5tWEyWBJ/HU3e9FoYK/qtA
	 MPlDMC2ng937KmqR7y50IjIHdmRHKFcAe0lF1ttUUmZqHWU6r/e0osK79wSdTviicz
	 sDEDZUvgWbUEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F29BCD1288
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171217069638.13180.2756653642948258688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb807a543903576be6dd46576df342f98ea0a2ba037285af95927b48eadb32c9
Date: Wed, 03 Apr 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712170696
