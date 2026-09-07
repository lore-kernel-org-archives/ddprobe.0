Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52192358D27
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788766234; cv=none; b=qcw/z9qzocjhMU9QepLFNFTaFUgSrAarE6gNinjCho1wI6wXuSEHHb8VKdWDTaK3RKVnNlGU9lRiX8TmMwbjOaYWXvSBJTT6TXccyUI1NKW6QpCMlAlngjaZJYTTDsZSKjyKIsf3xO8ENKUN+a8y6J+fEZ0CvzBQhTCyi62BgCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788766234; c=relaxed/simple;
	bh=VMd7rAWye5+zcmM5NoJS8w0jFLi7v33NFwPIUlogI0c=;
	h=To:Subject:From:Message-Id:Date; b=SCGBKCmFCZEgHUZd8PgkGbDQ0FPzQ+xxTG5ygbfqx/gd1Ztu5x3ufEN3/8ZR2lSIAgj66IUhjy5adQisEmAG6KtK5CjJNFPYrkv75SxhxcijWCNBuATOOFweWvNWUm4yEhTuzOBCV6yUJOdyee2Zl/1Z7rhK9hTcoh96MqATqK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mK4e9Vo9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mK4e9Vo9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E259AC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788766233;
	bh=VMd7rAWye5+zcmM5NoJS8w0jFLi7v33NFwPIUlogI0c=;
	h=To:Subject:From:Date:From;
	b=mK4e9Vo9RNa2oHRZhjHnHzucoUelx11WM5HwsprD5ZJYgKgmlxjRnM1xJBQmM23Bn
	 lCTDEYHSu10QEtfOsTLlI2gSlWmu8KBlKWBNQFDyE40HWV0oDK0If/j3DC+usFgh89
	 TJqYcJ8pRqCbT0r09BVS8pXkYbNa9xdxgdZsDULGMDh2SgOhVjfhefim3C/UHMy2IO
	 M29RzQEvAfWoIgAEk97AI01wOp3teVUhUe3aOc/lw/ewsYr6OAThf9Xy6JyfFMIE2c
	 +pk0TtC3YJoM7q4Xzx9s3i4pT6BnkzpVI441qiY5rtRbrSncFB46RpY4p9QQOBNCG2
	 dA+pKBJZoQ9yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE1CC79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876623375.18793.17985390726228547530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d54654ed7de20f912d18f277d7fa61ae9928e6b01b63a6dfe03dce6abf5f94
Date: Mon, 07 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788766233
