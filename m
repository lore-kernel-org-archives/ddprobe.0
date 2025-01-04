Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B5F153BF8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736021754; cv=none; b=uFrGBiJ/CyWM7DpfT+uK8K2Mi3Kxl7xOdmjOwr7a/fmq/Rs37QVGelwEY/haQgP83HSZyy7mbXthCXFrf93wpXdMO4+CjR1I1Q5iyLoludHI5zfGqCoKzAq3mIidLSX335ZXTkrZcQ+0CE1gukfpVDPqeC0M2Xl0OhB4YEzGUzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736021754; c=relaxed/simple;
	bh=t2hpo1JUGkKagwIgcI7n3CYJG5JV97L7hO4LEUrokiQ=;
	h=To:Subject:From:Message-Id:Date; b=L/Ew4BvX6vIY0FHeyQLO4G9UI8/OU2Ohi3bMLebMp6BfqdT5VPm9Tenq0zhfp9xrSO31Iv+sH7lxtCXzL9YUofUHJX8mjjThbKAk7q94khYNl6QsY06a8hGmJ0s7tO146g1xLNzpGULK+AN8FYnK2DF0smSSLTnmRm68HXZUdFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skF2BDxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skF2BDxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B147DC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736021753;
	bh=t2hpo1JUGkKagwIgcI7n3CYJG5JV97L7hO4LEUrokiQ=;
	h=To:Subject:From:Date:From;
	b=skF2BDxctHgFHELXVmRI65Q+a2lyg987oqXfw6doMCAqcQrI1uq3FlpB36YMj7oHz
	 86IOvz8eCSRbbv+5u/e+MJomVwaqHzn4U/Cg705c2yMuNGXCo/w9jSaAoHUkZ+5wxg
	 HmGLqSo3NvNyvcN6DcY8Ae1v2ibV3Wme2SWiWHNP1+CeUGo0JP1pSeh0acuUsCzgX4
	 4ak/Mt2DiJhVAEgFxfqfVGubbrbY2jOjFwEQJtrgB5dPSzH/6rlsGAJYymyc+RwJaV
	 3ByV3ox3+Ey0bIn3TCaaMA8XH19TgFuXTTVqKJGRi/a7yC3rU8jjhpjdXVmmiseiM+
	 5Smho/JPLoReg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D70EE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173602175363.27859.14624856508170202511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c41864d3c36dc4404c6d6a36a4aec7b622252335ccded4a2c3b09b0e97582b
Date: Sat, 04 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736021753
