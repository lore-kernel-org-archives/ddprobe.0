Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAF63C6A38
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781449594; cv=none; b=eITAM5sursGfDemhvm9H2cSTT/2hQ0nbPz3UCdw3mGErUzZxoFcB0Wd7cRxm4D9ezG7Qp4UVeBwj9shlrSUg9h5Fh9ZYd7i7EjkNyWbAOo+7Ors0SkS/4bxOR3VdB1zKdLtOjUkgxjt0cMYmISSMK2vAVmV6wySgJt62BCIJdbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781449594; c=relaxed/simple;
	bh=P+WU9cU/hqk8QdxOC1KctqOdYNKk1+RDmw3yE4XDW4w=;
	h=To:Subject:From:Message-Id:Date; b=WEk2fp0Q5QlBDrAxLAonu7sQ7TDGpjK9CXZx/LZIOgxmZqxQhvZaHU0SL3RQ1Dy9sTKc1ccEGAl0dIIIw7dq50yzk2uAUahVCxGoeu7H6T+NGS6X1FfDV61srzUZfh5as7SXANPLqYwLJC+up+UCFDtdKJYHR83XOpG50YQ+zNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLZAl14z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLZAl14z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BFBC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781449593;
	bh=P+WU9cU/hqk8QdxOC1KctqOdYNKk1+RDmw3yE4XDW4w=;
	h=To:Subject:From:Date:From;
	b=FLZAl14z3RBWzxnUeKOTmzn/qPN3ZIkyefS6ZaJd2nmdSumInwKY5B4ls2R3fO0/m
	 6QJTHtJiGd5i0ipa65mLHFjYEn4VdV+x2UibNkB9FwwjJR7yotjI8+NishwQQJHuhc
	 Y3JQbUqgFKmx04mbKUzYd5ObCXiOzdjsEvqUVxVUkJt2V8eh+PIRWpXcFncrpztXs4
	 FKiQ1Rz6npzJBvOHMJby1/2Io9lKHoWYoUBgkJRsjFrPeqhVXvmaDyfieJLescgOg9
	 5H3UxPbobeRFFc3i8q7tQWOhBUH5JTnlOy9Y8I+S7SsaaygeLwdAqzi3G73k8DkGps
	 NQUvZ4bcy7vWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4EB6CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178144959369.4633.14431911498381563265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e982474ca441f71a5ac3951cc223f40d4a1f233950c76169cf3ec3ba3be970
Date: Sun, 14 Jun 2026 15:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781449593
