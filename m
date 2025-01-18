Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3887F136327
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737225354; cv=none; b=SL1/qvxEVIpLyzgrjpSYNkA8PZDhfh71Mued7M+5PX1myh9JdnycLmvYAlU19tAq+YlCCYB2Oz1zzLe/11fORfV1M3roIkgAd75kRib9qbcpJc9sqge3dBSHTGc8bvtHmkuzxxb5J6nC9JP+ymrQIAO9zvU4aJVRIoAdtRfuMhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737225354; c=relaxed/simple;
	bh=RplT6RRpeLnloBVSNxcRkROxiArk71QwvUTxkhfDXs8=;
	h=To:Subject:From:Message-Id:Date; b=aw0fDAIVrpkX9z9/YUerrUaH74g4BkUuTM7RuzZjjpChIn67EqcqtQyXROqmpSsUWlb5E7Jo74qprKYQkLDEMcQ/ZV0gDAHiNt9r577y3XikPPzeMpuqt6DnCLdbYmBzNiqk4+06MPRJAvsJAW6BhyTcYjkH2ZpVxbR7IIhYn1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obHrQCGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obHrQCGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C88C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737225353;
	bh=RplT6RRpeLnloBVSNxcRkROxiArk71QwvUTxkhfDXs8=;
	h=To:Subject:From:Date:From;
	b=obHrQCGWkdhGJg7kn4315RnDCfF9RnHYhffZq0aBXM7/T36cwvw3WSARjovaHxU5j
	 fjxR9gFTpNUNgNOj+WX+MQvDG+5HcOQNJR8Ai5t1iy1Cy5EBQVA2fj3GZxtxu2nc75
	 JgY+BUEYsacjy4hHARQ+x8MzeCASVKJfx8cH9hVy1vfzXPG3YaJdtiWd+BVXsX2Nxc
	 NWC6gBuxQkj943gfGRtEiS2shDiTv/CEP+FK4+qhoTbIr43kZOWV6LH+noghaNbzVS
	 X5BNLyNfQ3PTSY3DvyBhS84+EJX7vmRqENgAVozGyX65qWodrqebG7tuXJKQ1LedaS
	 T2ZqFI4Ut982w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E418C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173722535357.11249.16564584316964146465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e6f4898f8e0515d2e15725fd6f70499ea704c01ec6a1cda26d5963a08fde70b
Date: Sat, 18 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737225353
