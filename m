Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E72D30FF27
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776196054; cv=none; b=ab7mmTxhyrz2r2xdbZxNDPK9Zg5fLj++wzvSNvpE3hmLVAn5uzjH6I0k1nDYzRNKExHFbOzKMH36dtg4dg5ws11ppYR+e7VI/bYsKrYspwjuPoPekf76oE8uHV10KoDCCZPvKuHn2RL5OoEOG4m0+Ddvp02j9JGeTzyHnasKnqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776196054; c=relaxed/simple;
	bh=H+ChgOvnfzYD1632vLj1ClKd4Mene6/JjTFD1G0z1M8=;
	h=To:Subject:From:Message-Id:Date; b=XIk9MX9TbB6AiFe8OBMPRn3i89ToZ3aKwrx5d7F+qujr+6umD76zVIz4Ht+v6SMnJ4MrCSPb2RHncHx8Em9AYFiRahIbOaNYP6+KZP0ldqxF9DkSZwBOX3onOJftnvHLb+UqXhKtA0JheV77uqxSYLqDtk0QbLvG7d2asxSqrQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DB88XoT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DB88XoT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD25DC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776196053;
	bh=H+ChgOvnfzYD1632vLj1ClKd4Mene6/JjTFD1G0z1M8=;
	h=To:Subject:From:Date:From;
	b=DB88XoT4i5nKfrC2lX6ffNZ4Pz2DJA57xHwBAaBwyzLL2uO373zbC+Y6CsC5aZWT3
	 GHKEEwEXMJ7i0QKvUSPrltiE7XmKVtFdq2kcCKvT09O+wWxaEpYm20HBQvN9zXn5GY
	 ZB44QIL4g2d/6F40qnBL5hzOh21GYdmqS8XoT/Ns6zVVaGVQcVoLy/YsHCj+Y7l/RV
	 BN8QLoh2GdAos2hQcmOyFlNBY5NvLrwfpdA1xK6rgZ6+6jYKLrWcGmSc0RlfX3ONy1
	 Nluboy6xIqipXkz219iKX7Jeo0k4c2AYAq3GaVJVAfb/y4Wq9i0z+HEc+zYSnohZhc
	 UNpcAFcbNC+eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DB3F9D0F1
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619605368.2929.10363111313341986551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836b2b1114bf8c8fcc92ac80a598b27a705abdc486f1f67bc6a106131cea55e2
Date: Tue, 14 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776196053
