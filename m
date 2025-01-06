Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6FB1DE3A3
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736171154; cv=none; b=Iaf4hO8s6LogZ61tvJu6XIV9GpiIUAo1cctEeVCcVitTgjZHMs0MTJ1vIjrHD3mr6TrgNJ01iQo5R+Nm5y9os0Tu04lD6HyKPvepZwromVFrhptlvXSAHfx5KJ0u1AGOHUWnjezRpD5/Xf4WMTtHgV4WHJ/KVHLdM3m0ri072CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736171154; c=relaxed/simple;
	bh=5DAVghDq0M7Fp9I0fshP0aMZIC6ENjs1+0b/0WS++PA=;
	h=To:Subject:From:Message-Id:Date; b=sNAdzo0coEYePBg5Id3lxX2dwdnId3b3VPQHGm9/JeBgJf6hMarPbb7n+thaZIHBcj7A10FTbJobfu0jYfHWooVOJA21bVWQ3fZa6AuBsNZwx4b9hJ71Gi/nLzc2a3gWEAnXLFIK45cG6L5OFWKj514NPRE8xTa2n0Ss8cqKBP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsOWRF6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsOWRF6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA89AC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736171153;
	bh=5DAVghDq0M7Fp9I0fshP0aMZIC6ENjs1+0b/0WS++PA=;
	h=To:Subject:From:Date:From;
	b=qsOWRF6PUU0VILSzcjDVoxzCfojq68YILv1GEuPFOf9MuqJFuVSJcndGNXp1+reFS
	 yzWZdIAdpe3LxBl69KSwtKuqcyCc1s4u/YLsGCY4kNfbDcdBNYxMSyo9vvHl+OWz5S
	 Pcrx3DgxlXFm9Pa2rve9LgEibcPAJlgmmuJrzPzvAbU/D0sdGwW2XXeuuDPilaRbsg
	 qoDPt3eDlufCQU7B9LSgjRFn9KiPwWz4GVwTPkXdQMfp5w6A+jSsO5ocDxF0xodAja
	 IaJO8HWjnl9G1uLG3Rg2CcFpyF3Hl1Lnd1+hPXQNXAf2mv6//Vv4LFimQRmFQrSHx7
	 CZYofHAq2H4lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CB3E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173617115359.24522.17874022382658239639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0d6be510d16f323f4082396ad99e835ebf02a49b9ce2489052183f71a95493
Date: Mon, 06 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736171153
