Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA7B2868B
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724856954; cv=none; b=MXLfYg0A0oD5E5UGwbH4bYaYX2vfC0++ssrbQ4Kxi9p4HMs8QkOTf8h50cJJHb6heLfG0SjuOiqWqibq5hxjC83hUcPD6mfhS5hSi/ZQsHA24Iw6ysp8TXR8db262sesBx5dRI5cGUxLu5s3eMTfXDZNDS259Ef93cESpzKKuw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724856954; c=relaxed/simple;
	bh=62NGm2ymNXDnO5nifQAatBUyJ840VxHwiHLhqc8EnHY=;
	h=To:Subject:From:Message-Id:Date; b=CqtacdlcFOwOjXD1KnuRF0hS6XRTBHGu9iby5X3osA4NU519VigZLkrl665DVvaI8ejaYodDmhpA6vhqijJfQYzaj/YPAz/6A8cJ3Y+M29Ia3i/6dz8yHTFwiEwKc2TzX3ar1QEJ42MxO+V7ZJwTp+jAHQtkfVWiKxqAtxipJ1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X306ji8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X306ji8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DB2C4CEC4
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724856953;
	bh=62NGm2ymNXDnO5nifQAatBUyJ840VxHwiHLhqc8EnHY=;
	h=To:Subject:From:Date:From;
	b=X306ji8YHNG1ypRPHSy4NPRQyxvshaveaEcy7K99hlwmrtOtsuuPGPwyn14qwytNh
	 Io9Biif45S0O/wAyj+rySe+vObLuDGhjkIuPGj/cKShuIxIAyQaqehq6JQUzKcmajX
	 waIHBAl9Gt0C0hKgxBVwrhbcA5f9DBd40+wcdBNyeN5s8G5uJlxh9vmiiqpxTnttBI
	 GQNAy8kpf02AIx4FubgF/VLwPGm2LJY0/FEGeTbTpUp3dBoYoYcILjoLa47+pJlU6E
	 VC8EUvlIHkRctc4t9MclF/mv5GC1FbWRWpH87QRZXetyD2zCjYb48MRq+V2UoKUGgP
	 xIc/AZjRxJmCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D38C5AE5A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172485695359.7697.14469787304482726917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75031854d0cf49d1340db1ed4e5a24f4817bfe90d27e1b10dd93197354bda80d
Date: Wed, 28 Aug 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724856953
