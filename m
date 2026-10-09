Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B823A9014
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791522634; cv=none; b=Nd2s//yMOTTCXHAKPnQStkg84QDbraOwHGAMrm1wQReTu1Ygu5S8HCzCg0b547B5hVk1k7Yu0u6c1ceJKRyy3+J7jeDqlERRXyZM0lOx1oMMVJ++mmGbfTPlMoDf4UuhtY8kmM3t6GsE284a58v4NOszEKCE/jzYXy9ZsqFGawA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791522634; c=relaxed/simple;
	bh=vGBp+N9YlIvSBxh/Km2M+d1KEY35UDHKB4hyK/l4Q24=;
	h=To:Subject:From:Message-Id:Date; b=ejXLxf36P7EbJtW+Gq9vZrD5BBZYzHfcZsNxX6I3UhyLF7U1BOmEQiso2jBKg+8onPOB4lmOtmOX2OpSyQp5hhztaChVIt0wVQIll+1XZDByH2fcZNLkUhDD2x/k4F4PWoo3svXCa2mxb25f7tBPk677Qx1f8wHRkHIrbrqUSeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJACJ1x9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJACJ1x9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DCAC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791522633;
	bh=vGBp+N9YlIvSBxh/Km2M+d1KEY35UDHKB4hyK/l4Q24=;
	h=To:Subject:From:Date:From;
	b=pJACJ1x94h/TtSYBe3tRfQf91XqJDfxUu+ipHhBPpZkii6HBk47METKQwVWm3uY2g
	 Jx4IrRKy7GZNTcv7p0EHi6jzgZH2Bo4dxwMHyrkl6J83rYZ8eKAWuBYo4ZXlo74JG+
	 liWvvewNrOixMAvjjVL/q+BT4m2fjv930ib4snaUbp9gCdwX2iUdw1H7EpJm4Iv85o
	 /8srCzmpTYml0uM+GGs92cBnCajaeBNCwULEvOVmjuWRJ4AeME/Gb8Y3eHl7eAV2Uf
	 ADWzorE02ecCgDMBzz85C7r2OiIWSRx2ToarG1mHQT8Dsmmuz0fJ7UfotYPuO/UdVg
	 3agHmudLqFTaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08AECA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152263368.2481.1266243907517774229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25250a9316539c2c6b729c91d90be94483c05d6751adfd6b4be309b1238dc934
Date: Fri, 09 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791522633
