Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D551AF0BB
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750874994; cv=none; b=HwTUtCZ0KmMy4uWkMjBFeMBS1+qLqfr08MjPcufE4vzZssB3cQrttlvUHS+AO06gw1D6nzJ0m8uH34dPoxiEYkYH63Uya28yGmEiM+HCFPOQ1OkbT1JTmc/h9t85tyflT31dTw9PUVOSeSuu1pzY9UbA/q/tesxEvjOd1SMLy7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750874994; c=relaxed/simple;
	bh=dDteRNiZG1N8janY0qrKVKMfUqSdNZCEbCOtgJsj9u0=;
	h=To:Subject:From:Message-Id:Date; b=TfexQKWsLQ2sDpk9037W2A6kYIAHjHdgdEQuZN4rFV9MkH9NDx9ycsEC0dgC6Uu4ccjprGHQScTDDtisHS8INjUTtY3gOlTMmgckuS6KFKdzbX6tdYBCuNgtJWDAdaE0bDxmxgEBjBT6EvsOjxn9bxBcmeb4X9QMuLUoNHU872k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7tYONq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7tYONq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC1EC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750874993;
	bh=dDteRNiZG1N8janY0qrKVKMfUqSdNZCEbCOtgJsj9u0=;
	h=To:Subject:From:Date:From;
	b=o7tYONq6GHm1JsGWtzXQ3PFFNF8MLlr+brfll/2yLRaHYvqqCz+n2XvFJ/FBHVP/H
	 l972jJEn7R9NiM0RDfEr3oumWibUgTmC5LDcV+t8PCyquKB46ydg7KjdbUY93MCgD7
	 3d4AryJn/UKVhh11NKok//ycU7DP6inFPCPhbb8SJeoQOWeTjA3b/68v1rRPir3ts5
	 HNZwOpdpfw1WBf+p5OC3oBgS/rx+y65hPQHPJHZKuh4xn2x11qC7pK/CigPkABJsJc
	 QPKip347ZxGL7LRG8qjro0FSZdoTxW28vdJGY52XzfG9d6Yyf/NPDd2uFvQFqOBybf
	 CkCJqb9JLMb/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA1FC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087499357.22502.5397702167751620233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deada81873d73f30ca07c3492a5c2f86dede4bb3c738b36a646c78bbb34a085a
Date: Wed, 25 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750874993
