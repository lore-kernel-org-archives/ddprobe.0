Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B3A28690
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769303633; cv=none; b=ucInWzMEO72224vq0Lty7cz2o/Ls/oMHyVBUUeMXE1Ua6t7hiz8BQQPzD6CQA1GgQ6+pgiFJfsXwn/Hli3h64I2wpLrI6ToUUJfzriWseEZKxRkub5KOWwW5JUabGwDGEChA1FtDUb++uuiLFFhmIOKUbgb+a7/fSMrKtEU1rYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769303633; c=relaxed/simple;
	bh=hGSUd7gmehfwYqChDSqfizeZ20H0jKsp9gFycoNi89M=;
	h=To:Subject:From:Message-Id:Date; b=GeDzSrNvqExVn5udbeDzusQW5ysCgnKj/kbhAxLWlUQKJbhKZFjqfECRUkUr6/znQShSHSBHdKh4IbaidbIv/T8bm8OEwoqXylelhwsFFEuzZW2XiC2IrcK84rLimOwK3R4BE3JtujKTOkUlQOwazwalG7XQyUodbL3EmcbDxsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feO9aB6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feO9aB6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B02C116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769303633;
	bh=hGSUd7gmehfwYqChDSqfizeZ20H0jKsp9gFycoNi89M=;
	h=To:Subject:From:Date:From;
	b=feO9aB6DP1cv7O14eqHQ2td6TXdoPbEhjKJgSKsWWROGmnfead2M2YJcFeeoyl8ny
	 /sFL88r2lV6oF5prQrcgP00aElv5VzIOXcYHyhakZNNiEORcRTcm5TqZ+dmcc2CfsS
	 bLWjKjOWrrRm9eMg5c+9UVmEf/0yZob6r9HC2FQc20zrqSbCrSOJoEWQhWL7MBsom2
	 FNFlcDEMwwH5wq/to6+Ibwe/tsDQCwbso5suZVcAcBpQiGxBpSpAhpM3msw9srL41h
	 L700vbfBH52JGncRTKVtCZruTIL9180h1Iurs1TfRHe0ohXGFK143HxQ3N/4eJrmn1
	 mgchmlOp44q8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93789D715F0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930363358.913.11068799735662314476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7d6cb83f0cb79335051760e9b576384a28b6949c106fcfc11fc8716d705019
Date: Sun, 25 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769303633
