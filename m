Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1425A79EA
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760587194; cv=none; b=GLHiIIhnyZDtUHI8c+sa1KOndQc0GT/4QUgiWFi+qlBHaZh8lccidEsi0/xwrZUrzmDrmNi7EFd5YczefthFURS9U0zHGfwiY2Wt4L709Dk9ZBl8aSYAFtxGnk/gGc/zdwxv4EM7TyA9zmLHyMY5w0dsVsjyAt2Sx2f+X6IkRWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760587194; c=relaxed/simple;
	bh=bM01+C3fBGTBYjLI1Ocaey5m9xcK1yRxlc2wzgjzua8=;
	h=To:Subject:From:Message-Id:Date; b=Hk7Vkj/N04jvh1p/8tqg3uPR71VIQ5+NkUgr0Fj+QgggO2NO/guY4aDC5852rmtOa7JR9QFvTfyC/C/0QDid7KL4Pn/snQu6SAgQlgFErtofeLJUkZqB2VPfbGwSM4KeJyzVIq9gxzE0dMryslrC24lLeeZ6GhbV3Karqj96628=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAPKGfxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAPKGfxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A143AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760587193;
	bh=bM01+C3fBGTBYjLI1Ocaey5m9xcK1yRxlc2wzgjzua8=;
	h=To:Subject:From:Date:From;
	b=qAPKGfxhkWZ53VTtiGrLmfHNBC+qkv8pEWByXBDBGXGPva9k/w+Xj7DzTJGYYLCCh
	 3lilIDIrVaEdggL6o2cSqxik2NBSnA7jmEUfX4DJXnpenIaBFgk08RhRaXGKmiTUX5
	 PhnbkxIAjZOFKGkjRSFJIUR0t4AsOvXAf1vNks9wzLhwArXAcb3g4zSVo03rND8xQ9
	 SwNSzdNoMRTt7HWv/gAJoIQMyS41otsJFWX8tUvCct3RHu5Hg8q8MApPN4VLSt0U5R
	 rkLffOE/H0GnqPoZgwMJAbpo8hlVYEYitiMsFbrgaWM3vUZMd2vMEdInA7S35K9GZj
	 OQ8ctCU8M2U1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58FCCD185
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176058719357.30827.5106500892974223218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ed030166b01fe093e8ec31fa450909175edb592c04e737e878b09cdba53104
Date: Thu, 16 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760587193
