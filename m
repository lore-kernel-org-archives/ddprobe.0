Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2379129B239
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760941794; cv=none; b=m4LgZtcJKH23zIEVZ0//vAUBLotgq1AqLN5oVjv+PNHecZLg3HDMyQcRg8+WptXrwvuKAduBBSaLs21ku5NbVmQjnFp33sH85zE5EYriILQFg00a3a6TNzYJ+bOed73vCRwWQLjiFGLavFIzCIBkvJCC+0cxevkwYV6aOR6bzBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760941794; c=relaxed/simple;
	bh=2hXVqASjLRXHewmBJ+FanvPTxMvsEM1c51RSlryY8Dw=;
	h=To:Subject:From:Message-Id:Date; b=GN5oTxiUwKp2tDAhiqFMt7c9wC8JlHdirlLBKhNTWCNcYWJo8vdQU5D0Pc3XHd2pidKAlJ/9QYq/MbB+MBSOxiniXKFzJso28zSJXf3ddlGgbuX2zc29kay08/yMCxePcTkqSa58hyCvDsUAzLRl9trGdAiHL0QL4oqlXP7P7+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5f56XJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5f56XJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15E9C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760941793;
	bh=2hXVqASjLRXHewmBJ+FanvPTxMvsEM1c51RSlryY8Dw=;
	h=To:Subject:From:Date:From;
	b=T5f56XJHJ5cbPbVX5P/4zo+JapGSV5bzgaPMv3aS3McXk6C1xMkq6iD16klUxdo6G
	 inQMLMQyPZ5tvN4tzWpyi/3sBImXSO/UwyCoXaH1kMbNkLVOOIpmM5jzu19VlZJEvh
	 q7OqGjvtGyTV0952SGM9b7Rgh6yXDiq9ml7eXWGvKmFi2fmUbpyPing5AS7wML6lts
	 w7rGkFcRhZzik9Oj8t9GEsaypUT2TgGu1YK1rO90jPFSrxnplgY2KNn5wkt64BHZLV
	 ZRWNfiISR7ycX8lM+I5cGigDoNHaIjmtTm0PnYwnbZv7jpzrGkTqNzt5cNdAuOnLRc
	 i15gzUSpuXlFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA81CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176094179358.13158.5310964683490957077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75e8488f1ab4d7b48cb2bf8e22ca644fbc3c1cbaaf34cd500edc534cba63544
Date: Mon, 20 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760941793
