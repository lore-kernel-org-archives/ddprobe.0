Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E0F34252C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782203194; cv=none; b=oKFm9YCzhaIVPR7lbNvEPAfvHyvPitbesvVnVsZhbwrgGpPOBqxmzbJexd2KEDhPVMzAIBaG0+YwJCZ8ilP1X5tLNzf4Gd+oWF0y0PukzK1lzpOf2F1KmtbNdNjow/CGd1sQvIUVVH88tnmf7vOFjTGpocaiVeacrbBzYY9C/7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782203194; c=relaxed/simple;
	bh=G52r2h2R2FfF46/VDjLCy9f8Yqapo29ppSACrO83gNM=;
	h=To:Subject:From:Message-Id:Date; b=O2xhMdK4XpAhr3v2icVvdxGQxRHlUjyw8y+Xi3ydF93pPI3wQ0tWTQUBDpM4U0WABbaMuxhcHtIvZcA30tkojWO4aPVYQqLOwCQ7vASr6kXIJv8cdk7mUx8CpnyOT5K7LLwi2yWKTFpRL1voe7ZVDpKvIRK/rS1P1jjqRU7C8sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EobemVHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EobemVHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB85BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782203193;
	bh=G52r2h2R2FfF46/VDjLCy9f8Yqapo29ppSACrO83gNM=;
	h=To:Subject:From:Date:From;
	b=EobemVHbSsOLHSYEzeSrn1eH0ttgc071Q/USbmeTIjD7VThnq1EfqhkHjaN4pkvRp
	 j9MWOXRydqf6hfFzmR74Se9S1FasTLc0Kk+atVxgFMhAPKLntMBUQeoibMvuVRVpnZ
	 mO6VQAZ9DE4hk0VpdgC22SlPP02EABWBHhhCTsEH+PVfPcJz9/F/ralA2tbzYYqhu9
	 hlfSFdeFNNOceWmRi92xBX43XqKffNYmIXvefyJHOMA5yGy9C/n71WqCfIyBJwQlZE
	 2fTRK8YER9YCEeToQXplOOvZXkNHzwwd5vZZLd3MIRrUAJkiiw8eGVxFZC2mcdJ5qg
	 Aor6aUGFrr3MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10BACD4F26
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220319371.29241.1718770135223161567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88fb3854bc9197535b8190b1e4d7ef37ebcdcf3f090420ce40f385268f273105
Date: Tue, 23 Jun 2026 08:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782203193
