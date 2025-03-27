Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C1BC2C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743046194; cv=none; b=k3uCxHxmMA8Dbqa1rAYMoIYYRCTFTwbPa8AIPqb1ekMaik3EcQSfruEeI42ysyR5a22Irsm6cxr4EQxUOobrHDY060Ljvkoh30h9j403swufR3WFTjVR9E8zeoqXL6ENvECfgtMZ2aJvZ6m0kZBmS1DhFQeNWUMK9BaUTvnZweE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743046194; c=relaxed/simple;
	bh=kyxWwfl3idpjlOu52m4SD1bGi+X+Zzxdjp7Y0+NdSKc=;
	h=To:Subject:From:Message-Id:Date; b=BLnIIF3yR2T3+hd5rMTw0vptMlQVQSHv3qkILuQXfOSv3fB/aqw2e+vr7JHqpSuqMGgCy7hFPZ2LvAoEb1WQW1kQJKlAvHZrnSiMlz2UfkrB27WNmz9RMLjqKMqWir35himlWXW5NoIYgqPjtB5QqZlM3WaljPT9o7GSur1j0HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBFUM3Qc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBFUM3Qc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83B5C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743046193;
	bh=kyxWwfl3idpjlOu52m4SD1bGi+X+Zzxdjp7Y0+NdSKc=;
	h=To:Subject:From:Date:From;
	b=LBFUM3Qcdl2BL89Qp9WUISSMm7rVm/bWQdGHVAAXeQPLpUj5pikILLnWs+/Yo+e6z
	 Wc4S1yZswoQ+ufKzak49nCChtSGGtP6UJDsIAnVpAVQNMGJmvoKnDDj7BY9BkjaHS0
	 rVAnRDebFn8iYQHpXnIHLpf3g9UlNs3ZqNHHhxWIDWeG+IjK7Mcly9zCsDcw8DRVmk
	 RF5A/ulRppXDZAgGvzg3WDrkpSzAvU2Y1C4wySZAzZ9SqGTqgV4kkiVM+Y7pQggUNO
	 o2bf0UUhwKNB+B2M7e9OrQRP1yyUMIGCaZxO0/1Zhtkc0o7zwzkp3LD5miqMLfBlJc
	 YJgufxKL0squw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22FBC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174304619372.5468.4079562142741199277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 525a7c20b80bded632a37898f1832a387ac8d878d82ca7d742db971e450e0149
Date: Thu, 27 Mar 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743046193
