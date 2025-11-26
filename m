Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0DA14A4F0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764122574; cv=none; b=FPBqYKFI1Z91pWby5V9ITyHG790TEjIzSu8J8MwDX+/bV6skeY7EXDTQz8zpIWUcXrm8p+vlQCwmM2z8H3o+q6XL84Lkqe7itPI6sig8DTy1h0+M7GlcJu/Qk+ftPVusVic01TbBVFc+tStVr3CQ/vOfzZIuGyRkBiDHIeZPdWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764122574; c=relaxed/simple;
	bh=gW51koh94U/Oa2BdvPrGo380KKhtTd+fP2hurUGk38c=;
	h=To:Subject:From:Message-Id:Date; b=GYpoSioOuxTtz8OCLTb6TcZ35S293XU04MU+/MgmzhXGCm8TPC8Of4Dj+rH1b5ZKoXIheYLVzmSWIefYvDaWoI3L7gcN8Jd4n9m5gOHS95SdFh8GN2V0x6Z/kY4qDprJdP3JA3ndYClutYpLXQqNERQlRFV4TWjMEWdN8Oidtcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sm7hSEGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sm7hSEGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A861AC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764122573;
	bh=gW51koh94U/Oa2BdvPrGo380KKhtTd+fP2hurUGk38c=;
	h=To:Subject:From:Date:From;
	b=sm7hSEGErV4JpnjYiuNiXW+5lA10ysBUSI//FeeSXSN+touOf75JFTsgl1FSGXg/7
	 TzoQvfWs5N13W52K3M1Zo05dAmNYp3OgARx9Nc9HG/VSddersFuN7IPQH7fz0rZF3t
	 xrlCxbvUGMagE8EFyruxw4Ac7uygwuzz9w1SuymwqIuRKDXU+f5N0tcZXU2y4NJW/p
	 /kpUtbxuzpxpOGZR5t4vRzc8mr2ov6Kzz4Z1yh2RHb6fB7hdbmkwikGOVpqK5ohItv
	 9K/D+6uMj3zBlBAPEom40uZoIcf4BsMuIqhNpQikq0ogB4eBo16y15NG9SZTvIWt3o
	 ccLUEVKPbkZPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9272BD10371
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412257358.24929.6875770794330563278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18343a6a00d9453dc814bd3255ce81ebe1b5d3dce214f237528dd722af40c393
Date: Wed, 26 Nov 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764122573
