Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA61D2FA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719537263; cv=none; b=PEi/+ah2RcuYnTDiPQ05MImdAjL52jnR3cP1deyDZc4MJwYoWhZ5kkuSAMSRWpA7Daik3U3GQR2t8gjMZBEN/AKb9GmfX3zxM2q3nVb7MqA+ELLt3gnn3jpuHYyRyMIOJDKFf27zoz54ae11KW0d6xKmTwoubf7Cb4QoJTvR3oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719537263; c=relaxed/simple;
	bh=Ov913Y1h52gO/Lxh5PWWYScssAxhjIPx6W6cT7n762A=;
	h=To:Subject:From:Message-Id:Date; b=B7DvBESNtFO4BtnW2k4AKhLAzknaczcj89Ru1qhdxqXfKoH+jT7avnuxZoIygC617aMD9EOVWu4cKZwkkqdQCLVkksnzoiPMwLgLtNCDTAyCL6CS6IRm6Mz2fLxLqGLefv6RUkF7bYGTYeM6isg/Ox8ELo4Nqb1sMViiHIhu9vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHgTl+fB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHgTl+fB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4AE7C32786
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719537262;
	bh=Ov913Y1h52gO/Lxh5PWWYScssAxhjIPx6W6cT7n762A=;
	h=To:Subject:From:Date:From;
	b=NHgTl+fBpkaFyRcoXc4ZK792kO6DTSzlaw9UUcmaEw9uxwTeGg/PyE9XDhTz6Emnz
	 jOSpiojd8BNXKSo3zznGGQfNzRiVluO94HLuyrkxL2+3eO6wY2jLNlpyL4K4WDZ3Wo
	 J51/4l08Yo4z4zPBTNODwzF14wZ2zX3zrxOwludRQuAoI24P9lOrwuE1+6AE8NuwO+
	 exbwC2qa+fdff5zU8p/HjRYrKEkh4UpIoJBl+zOuANdJzbpoy5/d4h51FTmZswDEK0
	 eSf3D+f2R8JXJYOTy9XbWO0nNZLm8GVMvwxNJztURJJrrevSLfEui+Cgbp4dAWbAiz
	 iwSywyz14jF4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC7BEC30653
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953726277.1786.18352545256934439809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772e047ca877babb449836779960af609b1378da97194e1b346af1f410492c6a
Date: Fri, 28 Jun 2024 01:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719537262
