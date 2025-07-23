Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FE37FBAC
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753231194; cv=none; b=Sy1ow4+79gHXfSa+C90hoEeLLzx6FGqVek17yKA2bAab9dq87VC5TzwQwB/WwHs+vYrV+nx618BUb2W1I/orX36WdCuN+pGU3G43h8gl4YrrjEI0ps4i7r2FT3Mo+lUb/yOUwaeJzVPMNrN2ktwCxxcmZorn/3CNFebnAzAUCbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753231194; c=relaxed/simple;
	bh=oxT/QLYM/G5kR/ivycgrgqEe9o9CAdhYnXWj1XNgrjE=;
	h=To:Subject:From:Message-Id:Date; b=E1buye2EpMcpcZg2FcRzdqvdHU+IHnBAK6+Xgv5JQ8RRaMm5hOH9uq6Ic5bUXn7eX72/OVU9vUhPcNU2GHE173FzIz6GSoWXhttaPaPK4wUQL0L75ZGByrJjPSY3AKC6mMFY0ytVZTcDg64oyM24ISUg2sXZx+wc1ATQhJv1W34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hi2g5Dzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hi2g5Dzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753231193;
	bh=oxT/QLYM/G5kR/ivycgrgqEe9o9CAdhYnXWj1XNgrjE=;
	h=To:Subject:From:Date:From;
	b=hi2g5Dzk5bfxysmQAvnMz3KPDHNoE2Fy1NkADzTgvsNYoC5OIIZIvCngZm/WTpMja
	 56uqcdQ9fUTdEKNRsHsvKyq2oc0GuJt2zJwzBMJEN9EwtyI0gW8znMKjzbGCjVr7i/
	 27O7l1CAfNF3G42VYMwA4WZCPryHlLxbCqV2zdLw9oi7Bpx/F1C7yKDihOV4fYWX1w
	 aE1Kr5XNORTreu3/e+9TclYqLPeAXG4OrinrMvueojvxMTnDh6Xc3lsySNg9CwHnys
	 EvkZXJn+qANsjWoE6MCIn42OCi0G6K7yCjnAtr/OWmT485VD04Hj5Wuhml4vXXOh3m
	 CNmklTiiga4tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925D9C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175323119357.8297.8570694005191187273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef4188f617eea18e318b0dad956b5c485512c0fa05dde6eb1d7d94d33742e3b
Date: Wed, 23 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753231193
