Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0511F3BB4
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742999994; cv=none; b=h33FcOHOofqfxYwSUkhq5U2OSpLUqLSpzmFHr+CFTRvUat6U/35bzmslk1c9SlHQ01r6wN+08YFi967XxD7U2PTkviHevPQ5wzQ/yHHKw+Q+9tp38IGiHaDP4mQv1NWyh779a8WqLzJU9eFZyPeb7b7nWoN/UJ6ZzxFvtdGbCsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742999994; c=relaxed/simple;
	bh=61aYzTII/b+efVufTL7w2L+ncJI6PTKtdOZ25zKV/Q4=;
	h=To:Subject:From:Message-Id:Date; b=SDv2W7t/GysTLUIDJubSkDpxlgv2US+5zi/fjuB/w1O2cJ+KxIR2w4kyXGVaFuabZy9xcCLfRKNhi5hf84owRjpaczzGbvxAYO1sqBuwqXSYNtt/k6Avb7gpyeRZ1HL4vsdlDkicjEz6eI2YJCML9yZRJFRGuRzfKrlPBurTsJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fatf+gjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fatf+gjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9297C4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742999993;
	bh=61aYzTII/b+efVufTL7w2L+ncJI6PTKtdOZ25zKV/Q4=;
	h=To:Subject:From:Date:From;
	b=fatf+gjVZvfZ/5MvGE0ve0ExR4sjKFPibtwQDL2T46eL7HMaEtPpbzgO5KOfzPvYG
	 cpJo38z1zilVUEhu4hmQOvNT/V7AWnn/f8eCuCTdVpbqxrWTEVk7maTsB0Gk2F9RpX
	 IivxT+k6yO9tgngSKh4oRDbITENWgSA9Ec7y7+uQjOlbFB9nvafdlh1JD88btqUSKU
	 WHjgTfUTTKy8+OzEoXnCjKo26gTikUwn3L6GS5YgYjvzs/4teT6YW69hHkZAYrbsTG
	 jPepDmWWgIKPfoxl9hrCBvZRPObkAIcKLvnHsMlgMboJARVh6dCzCFacc62l+/0312
	 gLHIT2pDMu7FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FC8C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174299999361.6293.13130626727040733403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a353be3371a1d2ddf35fe9d4e6fd2a195cfaea1787f2ee19677d3b7552fbba8a
Date: Wed, 26 Mar 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742999993
