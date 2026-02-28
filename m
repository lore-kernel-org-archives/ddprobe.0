Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C864315A
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772282094; cv=none; b=uzXeBCeDqKaQ3AvZP23EcFdsi22b1CNiBnWkqpbfebU6LInkeUH1KNV4t2TPpKBt0NuZq+A8exHAsqdlqXUaHUkjmxlORtu0t8xPZQQcjEr+cqDLVj2zPbDTs/lk49eBTySmdSdlRDYWmIsQCG3jhn2CcKPO7q0kd30UTGMFh2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772282094; c=relaxed/simple;
	bh=5mLOBYQo+iKN3pdDA3jHhMGtFp9RLuBYeRw+yoFlFi8=;
	h=To:Subject:From:Message-Id:Date; b=H/1yf/UFBP0IwiB/Zv0tsOjwaW3smoNAeBWJt+KBN5LEt6VO5ShcL79NwblPVugTFm8+cN5MTqynibtvteG/U+W4WLKaiwt/RAfXrU0svoWPkIirnv+XD1/dBrgpbh02j5+As+GF6pQvnDBaMUDM9H8imb5Ahb0i1OpjLs/7164=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Taj3pCXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Taj3pCXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47FFC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772282093;
	bh=5mLOBYQo+iKN3pdDA3jHhMGtFp9RLuBYeRw+yoFlFi8=;
	h=To:Subject:From:Date:From;
	b=Taj3pCXGWzr1ZW1ajLo694tfPDfRqj9mDSbdKHCEY5wQVo05BTiwa9sp/s6JZ8DCG
	 XN07biWmG7CkpzgFU1hgNErE6NH5XoAVn4byExlCfOASPFAPNcmPydsMhEwZ2FtMOI
	 NQt4T3QZS96ER6xaangjDx07+7MEABQoh8Bs0QW7D8xXtyHh59iPpmkeKcijfBBFhC
	 kqkOkvqCN3t9jLELwXPteRtRF6TYjES2JFkKq6rPhD8rwcrixFB81lwUK1nyKY0OGn
	 rBYyXyQsSGZynX0b7P3Ls5WUU1kawAlV43BoFEiAhpSAeEBsVvLU3Fs02aWJ93GA8A
	 kjO1a3V1p+bcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956E0FEE4C9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228209358.22919.13068352887117415694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c599c0f8c4ad5441b90a8c8a8b4f56168ea29ec8f9bfec083dafe5bc300381
Date: Sat, 28 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772282093
