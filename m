Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A792765E1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755857994; cv=none; b=r+kLAtj/862zBQdebOtFxAW8LFgHVplEceuWB8JjH68gRPXzGIRKP0Lhko7LCobA04ni/XPxcpuxIu2oT9CT2L7tSq/SZThaBPsLbOUon9mEF1MdHt6IbRXL4q9CS6WsaWARIIAtyM2ZyXirKufL3ugSIcS7OA5UhKu9B1q9/Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755857994; c=relaxed/simple;
	bh=N0eIvvei+Oo96mJTdS5aMuCEjH3FWcJGlyfTujfC6ZE=;
	h=To:Subject:From:Message-Id:Date; b=esJ5/evdA5dsWc9yuZLLofl5lJ8W/zSLI8RlAhiRw+o1ToQqv/wXfMwijuZamftyuH9Ngvh4t0EzKt/9mlcZEcSdYaa+IQU3nN9L6Z3sAabkuqoWtm+gRlpaa1CAET1DRq+iVMIn5TUxiOLYeX/SoYLYswuHzy2en36GJ6wVIiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4qf8nr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4qf8nr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE19C113D0
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755857993;
	bh=N0eIvvei+Oo96mJTdS5aMuCEjH3FWcJGlyfTujfC6ZE=;
	h=To:Subject:From:Date:From;
	b=B4qf8nr4FRxnezCziGnexfFwu4HmUpLzBPHIn692cSkujUNxKrYlKM27UgWCSr/Hp
	 RKCFyvBdL/1vG6deTG7DQIbFUBWB3JILfml2v3nqR9URa/1HJs4aT/VAHmDNjQB1gw
	 IOmymSTxl0Cd80tYGuRXxwjQXftwD3Q8d/Ufymsol+CQm6LjQqAAaqnl97MhDa+1CB
	 ES9GLhHVkLMC2wPS5NqdAokBrZRsZfS3l5rvzOcObzjt1Yekebbsqtf/yqkiaVqEu/
	 Fvo++jxyk3DEZPValPkQuIoGTagglRZhS7Ws9coSNtvUlahDhw5Mrr0F4A+zj+btWb
	 lpUO6kY5QLsKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D3CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585799358.497.10790296314973280792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b15681bf06345b27e9528603a4021062779e4c49273d6ba40d57c8e90cf832
Date: Fri, 22 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755857993
