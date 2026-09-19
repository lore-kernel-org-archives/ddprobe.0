Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BB9374183
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789794634; cv=none; b=XarMqYgyFLqQHwKnrBGXBAfBByBHr2QE2+D27KOMBaaLFnMLKncX03b2X2tOFa3BA5EChwxCQGIslvjVoePjYvCvAwnmPINEmYeTtRK8n3ZcWBVamDRWorvBy07WQFBuVw/4QLpZUTZmB1MuqK79TxNsMvTPP4uxAvOb4Xci9EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789794634; c=relaxed/simple;
	bh=J4/4bXB3LvV9Wv/hpO8WXjPE3cxzXBGjIfnpoRGkvxQ=;
	h=To:Subject:From:Message-Id:Date; b=IuqK3Ta4Amz5kDRuD9j6oG0m2cccZYj1i2doWKfakNPsqtEYN0V8btLTOy6RO1kKr2mNVHVX4DdwdkNVXfYZclNT900cVettbmSgBz/g03J4dIHLF3IggT7vM9brJfBh79KVv1xdhtrZsZxOtIfRoko/0oqvOFvf615wEnzUwFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKifPFd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKifPFd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA81C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789794633;
	bh=J4/4bXB3LvV9Wv/hpO8WXjPE3cxzXBGjIfnpoRGkvxQ=;
	h=To:Subject:From:Date:From;
	b=qKifPFd+Lw47mgfQuJPbb3N2TDTQu/y+23fmwNRGvOHNaBDF1tf8AL8FUIZ/qxU5c
	 rgO2HGDaXgKJbVlaxsHW+KeIo44swfqkudlJHtUluQH8yF9IhzcJ2/uQIohaAT9eKu
	 uXlm+zRygwlnGwaVlpJGXa826U6rFDwKJvjWFn3c800AvMSkzuuE7Fl1cQj+LdGbkF
	 6fFtNyX3LYAh2DqP5Jd+3xaKTjBtl6/uGCePJ7vBO8S6ynBNpFtI7k0aApeTdOll9f
	 0Zb5q/6R5N/ts7NOh50dfht1befNCliY8QmQZv71sSjcXSxEbqPqIngaJnUMAQ50Bn
	 6GdX4QtmXbDqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BAFC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178979463368.16170.8366154267459858240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe9ac3c316e50f97c7a7544460c68803d452ce435a0844cc9509427c7483c6c
Date: Sat, 19 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789794633
