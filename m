Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEBAB677
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724711754; cv=none; b=TBP6pUKtQdcryUgX8A0f5TcnqMBQsM1K0TdtndZY7GRd/7zqa2Y59EPzbD1Us4ardnUQBb/+CygzdFr0WUJIj5eK/mwJTiV87fvAZuvNJphviQBgzNBHgrPYrwTYvqcgRQNhuAzIBkgWoJ+jdJHfkKvI4EoNmln7D0B3OASv44E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724711754; c=relaxed/simple;
	bh=ZYc2/X6BHn5ygIMOTN80WCK3u7dmrY4RzZCq4YOAmls=;
	h=To:Subject:From:Message-Id:Date; b=T9jvK5IOOZyLx04IV60tSwCx+xh3hQKaGmk2yjPxBz40awaQiyfF82NqnpVu06DYeHUW9Pgna3+Z8gTIgYhBJiq+lxik9zbTlb8h0kFZ4M1Q7g8NnjX4QkD1p+FyQi7zoZvBpp35bTgpX4NXlIvQU3ooopQA0CnGszoV0e4Xf7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpXy+ImU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpXy+ImU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC029C8B7DE
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724711753;
	bh=ZYc2/X6BHn5ygIMOTN80WCK3u7dmrY4RzZCq4YOAmls=;
	h=To:Subject:From:Date:From;
	b=NpXy+ImUPhb0PwnPnlCSx1ZGTxaHxIVTSzv7LNnSN8RFzq5boyr6Z6dJzJ7cGC2Ng
	 6iFzaPV64s4WXNT7EMDfdce6g1700YizJ43WJ3eu6RLLg5NY1tfv9gOYXKHktMj3KD
	 qiJcFzFTXNrfyt1/UJ8pljyL5GpxLwaiyn0Tj2gE9M6GGbuNTcGsZ9LkfM69Msr2lh
	 3TE8IoOcmU3tEVmT/7NZyaGyUSO9nEGhe5OUz0pAXE+UvahibhNgeW2q+N41Mzyyeu
	 V2R6GAN9nLhcb4DaSHDjRbOCgGxA0IIvYtxNmo7BRmKEeDoCdaZsbTd7HgH8kWDIvD
	 gRZLA28OHua3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6C0C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172471175360.519.10123432095943979937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faad0f89cb29656599f7ccb04a6862d7cf9409d6698a6ff4613c1b54799ac342
Date: Mon, 26 Aug 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724711753
