Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2957617DFED
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724320554; cv=none; b=I8VdzzM9AHMxYRssO1w8qQFwq+7d5nzyAe6QUwnaUSu2+oeRGbjRmcL0/4Ws1QHl39EKDJniWQmgASBIX0PbBtNZS0cj0TMgVL7Takqoj7Qu2OxA0hxeB5pB0uuAYBrhnbIQ3H/qrqA5tKu+dtWjh2cS1UOvABWT3SesvUHX5jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724320554; c=relaxed/simple;
	bh=BY+ALmJ2LegAGcJcG85+A0R56PuECcDFs4JsPpU3TCU=;
	h=To:Subject:From:Message-Id:Date; b=hekN0EPbR2lwAiIVPCrWtIi82rHB8/UnSdrsUNoGLOhcw9snWVU5vZUYzt/JNF4Tdg1yPsZ1S/wGwgidDN0yRyQZAg0AeFL0zzlX3NNKoIkAPgNxw7bPzRqUdRLwPNxRWhZt+ytDAv1y3mcjyEtG6IfDZNEXbo7Fof4pS8JpSYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIrpwKgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIrpwKgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA41C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724320553;
	bh=BY+ALmJ2LegAGcJcG85+A0R56PuECcDFs4JsPpU3TCU=;
	h=To:Subject:From:Date:From;
	b=lIrpwKgmhGTYZRTz5XgU+7evDM3syngKsaFjP+gVVrWfSs4hCSxcuhHqF2oBvYxm0
	 6tUJsaClT+eZIb834Z1SlGbjtjTRMIZYnWhAsN0fcYFlG9T0wn2fLFxekeGAiO52tm
	 vb/SAlPs+zeD/zQWFoIw9phy5GAskgyZMdBDtLAD6zHO2vZFwsxLlvT5cF+2vsOipa
	 ZosV4R35G70Q+O2JD8bWmAQNJuED/6ThDFoLuOw4FLBghIsTpxV1qV0TVIBng0jxkz
	 4ZpZLT05EaElWCkugtrq9tJYnPnjqgS2Yqu8rNCtuEXOjtNXm97kPe3CNmAz9xfAUQ
	 l/eJsxfDzu2mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A995FC5320E
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172432055367.26741.13195396865847676084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60935002a36e26569b734c4fe94a9ba963336eed2b00bfd0b4ac3d3efad31717
Date: Thu, 22 Aug 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724320553
