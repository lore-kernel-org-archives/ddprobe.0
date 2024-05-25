Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D237E54D
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 13:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716644063; cv=none; b=jIz+bAhEMboWxUSlu0dRTK9Xn1qACd6w08fiEM/YQBxN4ZcOF3zfsRi0moDghmvY1gYQmGuWKLUyaeZ06TTDdneh6xBUdlrPTbEoftUijTeUYv35ujEImRS84iIdhyvsOIup77LU02J7t5ctK9k9+YHwiqoqsgIa8wMcLE7ANAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716644063; c=relaxed/simple;
	bh=5TxAWyru5aB7KQHolqGXw6lGEYoTyto1FkruYPHHw0w=;
	h=To:Subject:From:Message-Id:Date; b=cgjGc3ntDqWyiLYOhMEEei8vp4doCVfwJigMk1wYWw2UteCs+VNWQ0ps5Y3QXWAsPDntt9Ue+y6suxxz5vj1AxNzWmkq4nKfbzztMDliTwbSp/fGU5QThquqiECOBOp37Ho8gYFajiRsB4Zt8C4/1BJANCh4/MYAjzqWAQ1Wx44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxmt92Tg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxmt92Tg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D245BC3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716644062;
	bh=5TxAWyru5aB7KQHolqGXw6lGEYoTyto1FkruYPHHw0w=;
	h=To:Subject:From:Date:From;
	b=pxmt92Tg9TcsIEa8aWGbcR4bkZMk2nVJKHADvVqe+bK09C80f/+uT3MUQ+seIvNJx
	 fbiEXKQAqvGfbR4xP3gLMD9cfXp0NyKdFvm6Y1MGt6kLEvwLfXMP7UgRJM8aDn/73x
	 763uFRYB+v5vQOFx1OFEv7y2tt8SzGkow/q8xqLbNGLVGbX7P6pr+3V39r6QI5SOZu
	 L6m4S9sSxnP1U7BJNSIDq1eTw7MqcxfpqAPR+4O3qPtWjRWQuNI5HMHFrgJW7nWi9d
	 RSYIKTrcUnEMj0P75QX02dhPd3Q2Y/wh4A8rGmXkxEn7vqw2hicUBIFQFaY9VV/Jc3
	 MFk/ep/icC4Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2DFC25B7C
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 13:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171664406277.23005.12878664219710387226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f594b33f64222f0bae44f260113522f23c5923eb35eb253370c334160a44a5d
Date: Sat, 25 May 2024 13:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716644062
