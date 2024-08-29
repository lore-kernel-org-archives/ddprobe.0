Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B0D18B49F
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724919954; cv=none; b=uvAEVBGHOJTX23r0vX0uM8GB/E1XF/SosqqFd3m+LBa+BLUVxG9tixEiYLRi2D7ajyVvVlcVNgIMRnJl28QNvpYpiZKea6w3Blpj7hb6sGk4x8GepxCo7xvoR2WIdgCr8lcJH5hwmuDOj0gbeghPY8zZv0EvzD90VT3mV24+CQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724919954; c=relaxed/simple;
	bh=EL87Kay7FjHHYXteZBV712YCCVBODVP9OZDRGKN1ots=;
	h=To:Subject:From:Message-Id:Date; b=uoZkzFJJeVChBUdvKRyjr9k6XmRDHeGHB4Nlm5L6REWui4y36UZPTCOO5blzADUkRNsDEQ8AKwUi+tVoKdeuyXWrpu+PDPhlrhKA2HPABMfGltC1ChdKmNq0VgfDTZe7EIkW3Dp2uGZ59b0MIwYLrQqngQomTS+sk4i437SDpqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGjqP78Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGjqP78Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18CDC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724919953;
	bh=EL87Kay7FjHHYXteZBV712YCCVBODVP9OZDRGKN1ots=;
	h=To:Subject:From:Date:From;
	b=XGjqP78Q8s3r+O0NEg8jjogNR2w+/JCMFxDXexT7W2ZVICsAV+EojblK9Rad6PUTr
	 4+rR5H7WS9dd4XLbrEApvuj59cOEnxRFDOAlBGx3c8tUuTu3C1EHtkuo+aGrUz0XB4
	 Yt+OkNIG7sC72b5SSToIhNAfw53M74/LZUyIa3nuNrJYNc21PkefEP2hUXs/7HVqL6
	 AqVQwRftFDZKgx6c9oL8hchfEkqaqNgaMkGr1wpKy3kcsRA8VZisLYaGHwOMiygNNs
	 bpqCRiRbR6z1pETiX30cTEeEGYFs9kUl/NGt17WYJanywefsyOK2Exqjd4jRcefcor
	 y6HyjIc3lqiow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B75C7EE3A
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172491995368.30996.5591783723594645007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54ccc3388e947119ae6159427dc339ac6d9b2ea9c5f26f7c1311cbced0d1d0e
Date: Thu, 29 Aug 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724919953
