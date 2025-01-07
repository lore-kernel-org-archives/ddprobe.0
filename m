Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E76F18C035
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736283954; cv=none; b=dz5ph1cL4hNzs3PLg47nCZ7AiRIhwDVBTYqDovgTFWmNvCrPwaowwMgdU8ugiULZQeEGic7hN/EiUPJs+RyarHOVFitMzHw5+lbg1W/fjyiLf6moLNjKW7DITIFeaR2WadtxlJjEEkCFfuC8sBc3ge8sILaeqGYvarYxGM5I2rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736283954; c=relaxed/simple;
	bh=EJtUDJMQQf2tYpUZgePGxI/DkHmVc/YuwOTQuvUsOCA=;
	h=To:Subject:From:Message-Id:Date; b=C+Kli97dlUHg0sBOqIlcpDlStO1jK1LwPQRWggymBmc+wFK3S1JhyBoFM2ebRHldbB8lRMyFmW+VYotInB5bj7hlXNNZovJyod9bAUyKa9lHHxkfDGaJuKg0eO8PbgRohiiWATor7u7Xb/ysTYU8NQaCdtMNvhNmvU3aa9w6clw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZSUGvXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZSUGvXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2398C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736283953;
	bh=EJtUDJMQQf2tYpUZgePGxI/DkHmVc/YuwOTQuvUsOCA=;
	h=To:Subject:From:Date:From;
	b=QZSUGvXOfDWTLRcVFZsxKYzrD9DMDDYXhq1xT4bKB+twQvqAL5Tm3dFAii54DJa4t
	 ZMoiKC+qwhMRHhqtgs++yjbcqpVaZ/Y1h2elY66wyCjuwmEiuOvuX7a1IW+g4x1ucg
	 wSGeHr2JUpjr7MqylNEHRwHRX2+UbMP4eseGy1uLppJd562Fe3T/z7ZHJw5INHDfP+
	 XmnJw9iF/jq/Bd+dydVQwNh8sN9yyGnn4kBkSYgdxlSZzf16yR0w7M/I4vkfJUVzlq
	 5Xp1IxcNYqg46SdvwcwH2QrrysXsg9rWTWcd8QzJXEEfqaQzIxyVNeAf+mn4hfXXJN
	 hN9bKjdBTH+lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA2BE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173628395363.21893.16678582420755338888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974cd6b15cfd185bcafd4ffad7cb30c0a93fe8b1d7db85467f56b38838cd1456
Date: Tue, 07 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736283953
