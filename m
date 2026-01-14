Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B91288A2
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768349634; cv=none; b=sQi/1bldp4Sr8WK5MjsHsKdJ7V0unl0Kl/0OU1xX3bGQ7i+6WOUW9JSUvepIH2mAiHCP6wxdM6rrt3u9qy02Jt1LBjmVnviI4ir/s8gPgdxC2i2/5lq32jMtbSU7tqtYFDTP/4fktD2s692U+annRbLzbp6l3JKD46uKXHGvdo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768349634; c=relaxed/simple;
	bh=w0UanjdDzgCy5yXN4wBR2mc+TBvhWsVcDlfeXy3Wrrc=;
	h=To:Subject:From:Message-Id:Date; b=JfN/LUWpzFCM0H2fqE+XGQbaPdIXDpbRCJ6RgCqP+Qzftuwk5jiILaO3orWgRVAjtjdC4RClqfGTENSNvd+fKmYiMO9FOlCo2dDll0k7hqkR+XR4Abb/kucNRhHxnDscLTmVh+9a7+Z9XREfCPpFMWLeDWZ/FRTj+eOGm0t2xMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndOZSvC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndOZSvC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B5AC116C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768349633;
	bh=w0UanjdDzgCy5yXN4wBR2mc+TBvhWsVcDlfeXy3Wrrc=;
	h=To:Subject:From:Date:From;
	b=ndOZSvC1TBht4hP/c7GO3pJlyId3zzkGKyTZ6oN4xOFiLv8diaxJVRosZR4wr+XDV
	 +46FypX2RlN/aBvFM6TsdHrCmmradPHLPQyhMgKaDv1vX4aaRNtEEhMNz8YzPuqAS5
	 bX2nJEoyR6VLuOzTeZ3zXeLnNTAcRWtxN1lBk3bOq4NQlCLwMzwYhtsrTeIUMOhZeE
	 gEtr1XCIEOOK5ROrvJ0kg2sButbcYKn46zN7YVWhrRhByuke44p4p/8bU69ZMPJXXe
	 7X4GsDpdnYsTeiFrvlZ934V9vDr9Y5DOOx1qaUP6wmYNd4i71UpN73xmRD+mUxWIHr
	 szzEZa7cHAcZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AF0D30CF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834963357.24623.6367969141682082862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d510caf27a04eb5c6cc27e0875268e88a352cf0bd0b95212591f2e95dbd89e4d
Date: Wed, 14 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768349633
