Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E7B1D63F7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754085594; cv=none; b=B38VaRknusE6pey92TXVT6er2aVYy4zvCv4tLwNEZs/R9Yzbp5MmJ+Z+yicrznhG0FWSmH8VgCBSjEionpcSA6inmPRnB9RUbOjkJ7QudgwLAQHP8/QQ+TX5RDlMrQc3l+f/u0ePi5bgCevk5sLhi0X4uwZL2qsZ/CIqM9mRVGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754085594; c=relaxed/simple;
	bh=jnpeDkRPeQ3pQv7f/5f3S0UqvMMF347JdEafRY+nYWA=;
	h=To:Subject:From:Message-Id:Date; b=SXYVMpEfSWcrrjSmg7O0H8pr9z5zBCz5VMRH9Kj2eR0R7Z9xfE2yq5FxE88e+JKVaI2Qy2B/rSf9ZPOp5KqMXpjwjYdQVxQztssce0CkvJ2xcDsJ7E+QLaOz0I0lV0FUNiBXlLPVuRrtRDH1CauaIFdcl1SR7MFi6SotpiVM+KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vor1GOsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vor1GOsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E9AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754085593;
	bh=jnpeDkRPeQ3pQv7f/5f3S0UqvMMF347JdEafRY+nYWA=;
	h=To:Subject:From:Date:From;
	b=Vor1GOsAOfvSUTrukFivZqp+lmI6xMP/H5QuI/7xk1eBYGg7EwfuUVtMjm5608zo3
	 0o3sM86GfDIoXr+EHEhfJZJ/Iii2IRNcRWmIKERZLfl16RxC0OJZJQAvY9oZXmfTDx
	 oRWOBrDy8Qqxwsg3LAEUDf21/LptbaeQGywWw4buBbW6qEeTPUeU5T6zn3XsL+gMn4
	 3vBraGhHr6qo9H1yfgGexpu6zKHO3idp+USLb/cIqZKVPpm0c9JWvb25gfAVAKBSsF
	 qcqfk+JzPY3l2WfvurPXSYSbGr7k+t9oipMpA+trYFs04P4JBmf0turYoOVuQrWa94
	 DdhV8dXCBypCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9122AC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408559357.10602.574123938386717963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486e66a9576fd9d72d25e2970a1d3ad6df229dcdf3ab28fb8674ea70050ff992
Date: Fri, 01 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754085593
