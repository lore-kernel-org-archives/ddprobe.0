Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7678C1F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778298454; cv=none; b=AsDsCuDYnlEJG/lYfEHiwzdPTcBs8wha/7gVGvxNTySEhr6lJzNxyMdKqcbi0PZtfSyiyicM/7YpCDGduiZN8iwHUqoqYv58P7UxCwx47P9J/I+PVKnVTPcfkhKjKR6ii8FhNJQLdNStaqaFQrMoU4m08BbW/pSB2Igk0SZpOhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778298454; c=relaxed/simple;
	bh=tX5yHfGwwCVuy560M8WETlZcMThaG6AqypsNdX5viKA=;
	h=To:Subject:From:Message-Id:Date; b=WQJICM5KctX6IG1ASI1TWQBAHFFEem6tYILbloq1YsrF+YIDt3muQOrR1H4A85zDLtJpO7nqJA1Nn836o/TLtYF6dx9jKCrOPmjgs1ykokMd7pSfcALGZmqBkJ/zg1bzlg0rIs+YYTrUE01p+lD6GUXjTD83AN7jta2bwueC5b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcRJ/fyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcRJ/fyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E41C2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778298453;
	bh=tX5yHfGwwCVuy560M8WETlZcMThaG6AqypsNdX5viKA=;
	h=To:Subject:From:Date:From;
	b=hcRJ/fySke/4IhrmGqJc5AJj6NhQoUlxKtbRgcVX0ojA4IA+ID1fmhSWN3xQZoUD5
	 ZTNVgdc0kf3ct88HTshYBMyRwDkhDBrrq8PLGjIVWHBAZBI2eQyweEXImh3YZBExff
	 nz49IMb+IsRVu6gpCnMNyHKhn3/S4CrtC4P3H52Qh8TtFdc+6xg10ZNwxREiOtj0fd
	 zUKxqQAUdPuSLn49MOS+/JFVVXSjAjd9ie3kySwDKfLTy5Xa6FE5DqkzJhV7Zuic85
	 Ii2gQH31P0OrKVEEchUietvT2FQKNxKZATy6CRohLs+mretJP0SU9NDaegoa4ow+nL
	 aqcdiuZ+JC3Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0A0CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829845369.28137.8641185834489281177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966fa6b6a785d308596ae14b5e96cfcd3a4305265da4a447246b5d6c1af26d79
Date: Sat, 09 May 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778298453
