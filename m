Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050A14F5E0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771823094; cv=none; b=Kg/38ejZSvkIJv6FH67PlRfdD/957WSsgZJoiHnkYMWjn7nq93MtigxqwhBr8a65nEa4rpIRnom9gPST21tj/hggwk42Y0smT/zDsxOaNN/g7J+7bF2dcMlYl6Ruf3CbrE40CYDmGwtgrUXIoO1MR6uXYrikwXXqXAmIr0lxNOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771823094; c=relaxed/simple;
	bh=aCMtAlFVJG9f0xh3L7TN1uq/fuYZk/9HKgsL9iGvCBo=;
	h=To:Subject:From:Message-Id:Date; b=o7xIM7uR0uEc2IuXOs408whPAzQ1OKKPpwZGo/4VGtFFD00Q2RcgrZj2ri6/fMS9HvmzQt4mcI6k0VRbi/iCSzcsEoTIBUF0WY9GsYO5zwK2sY7IT7j8BtfPp8VFSOBaXzYCQSVlNk9rRwnfwirOtxElajj+q9GCVIvnDli/70Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJLc1UFv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJLc1UFv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EDAC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771823093;
	bh=aCMtAlFVJG9f0xh3L7TN1uq/fuYZk/9HKgsL9iGvCBo=;
	h=To:Subject:From:Date:From;
	b=rJLc1UFv3VHJMmGQ6r35d9c8D+ysXojTmMFJngplML37BXfXDjeRsvIZaC9JPrA+M
	 1phdlaZjMbfwhBG3ZAybORrlNnBMeFiaiEuNQspYz+iZXYCYvpKyrbclh86jIRyvEQ
	 ZHfq+l1OiHrlxG4oe5jWOtnbZrB0PW4qS4KOoD+rloQFQPmLGlsnqZAqJkL6CLNLPP
	 AnVT+0GHjV8l8p0ZkHOAEuL265kBTNdUNZ+LNUvfwt9VHlzkE/AGqlhlH5MlERT0N4
	 0DPQKX5agHj1xcOl/LbNN+/sDgMsOMzleedPN9jXPPXea0e1ZWXUy4Fqd0Z7mlMf7k
	 I39mRqa50UsHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318EEF5864
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177182309359.9075.12489033830539533137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2989e550cf4c05771a4bfbf992d771d32a23892fea9db9b36d333699545b45ee
Date: Mon, 23 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771823093
