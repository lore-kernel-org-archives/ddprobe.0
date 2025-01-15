Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA4C1DB123
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736927754; cv=none; b=UzIcf5wDRnuoEZeA6lzvPqQaVp7yK9ttKMFNmBGtN9BZPd99dSn/6RmWQQgZrFn1cMQ8UbPyp8Hd3uCGenk3JlzwuzF4jquzDNGfEv8H9xfNDTnXweNe3jckykWf6hAaB787GiDsSVedkcayPpOuukzxixTOi32ZiDtBnsBhceE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736927754; c=relaxed/simple;
	bh=QYBhUk6KD7YJbGND39Q/fILacGYACxYEY7icGFmkkZc=;
	h=To:Subject:From:Message-Id:Date; b=eOsJ23iLRWcrZPv/7omYDWxog69MdiJnL2HpF7FukHmjnpTQxKhM/SFrMYEqqcI62TrwuAV8hQxeA9nfW4LiOXl75xcVeL9seotohPqc4wTRSrchXIErAbBp2tzSSHErJjqIdfhs+WMUWnnfk/o9LTk3fJCf80VFljLAQ8ei2/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lme7A08o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lme7A08o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A415EC4CEE1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736927753;
	bh=QYBhUk6KD7YJbGND39Q/fILacGYACxYEY7icGFmkkZc=;
	h=To:Subject:From:Date:From;
	b=Lme7A08oxT+hur8ouku/zrtN8ThXZ/w5F0Vpd4s79wGLrxBHxNAu4+rQGs29vUxyB
	 EHEBN5vNx0EZ6J5h45PrEY9gTiEKzhYYf82MyI04v4E4b9gpB5DCwklsRDOlTSKKds
	 4qQBQgkexEoAWUPLbBkCdG3T05MBvt9UGCdvsIzAnuttVLA0Vn7NF6mlGb7bFkGoSl
	 cVm5dV21YiH0droYyk+KDRPRg/vTjs/ZLOTZ9aCRpse+0V661KLeOmeZZzoGZsideo
	 xi2viQwAWdUIGwXhjGgUJ4fGrMjM5IXr8TH5HLb7okSQwEUf9//R1kayQgLH5TPY7N
	 GYzLBbVjenNvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D07C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173692775360.2313.13032636836864335499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa95334b6963bfe4a9655cc6535cfd360c6ee10f7f1966d990479f3868cdbeea
Date: Wed, 15 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736927753
