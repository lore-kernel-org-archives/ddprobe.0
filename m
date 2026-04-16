Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5F83806A4
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776327454; cv=none; b=uE6hU6h73PJhVXCNNepB5sVVB6BboT6iwHOQptg8e23nJHG7r7ZDeDJZUKRW9CdMyKoZGCJuOUJ8MPxV0XoYrkcy997jEYjbaIpbbbQ1MhSRSLRVOj/EekTj3Q9zH/6nVc6UOwfbbTdiRiUnsw6TLY9a0q68v0nmm8m4JFcFhzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776327454; c=relaxed/simple;
	bh=x80FLImetoL8m2s60xdN+vr1l2/YRho6oAgdcoU+u9Q=;
	h=To:Subject:From:Message-Id:Date; b=ON0l+xweVBGbhxCcJhAz46U9u49HV6OU894DlQwJ/kFGiqWpVkoxXOcshnSoWwF0Uh0vFGqDAQ/D/wpjk/cvLzuPTaQc2jlrCHx5MY+34MBVQFzc/mz42aV4XM9C2T24TjowlB4Kc00SycFMiqL5Swisv3AViUm9HIaNG8tLnWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTg/W3KQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTg/W3KQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7210C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776327453;
	bh=x80FLImetoL8m2s60xdN+vr1l2/YRho6oAgdcoU+u9Q=;
	h=To:Subject:From:Date:From;
	b=TTg/W3KQHzuIr6Kh8hcopOj1gI4vV1/1zCEkc2wKfmvyFH/LjW8PX2gxlbUCxmX6B
	 382fU6qku7XIIpEDq2FwseUpXnz4w1Hfb1z6VcVxTefa6nzRxYeE90a6rdDdLPU0PO
	 ZRY8lMrjPtS8jhQIje+PdvvrzqEBsoSF/ZXlRMbttRxlVoP0BCXZ7FhzRGsuYSl29g
	 Asb9Vj4yGygbxYJxvcc2O841yn4A2hyvGVoXIZ7U3keNkImiQvzTE+OKK8HrcApPH8
	 YjJMLtwmDifFo94Yyu953quXQPmAex+USdtt7Kp9r2H5zFLR3r1zm8BrJ5DjEdfY0F
	 dQt2jRy0oXCuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B18F8A141
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632745368.13446.5569777117434377722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86d4edd1ec1045d59851d56be89a43d1bde1092bb80b8fc1298ee03f4576ab5
Date: Thu, 16 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776327453
