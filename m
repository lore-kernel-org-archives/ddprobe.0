Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F34978F26
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779720754; cv=none; b=h3d/ItGpv+Py0eB6rYpUP7h67ND5n5MdiOe+jUnNHk8ad2t3sqPk5l6KxAHtcvFA0zXBz9fP21YiJmlWSwOlsN49fk+btmwdWiW2OmWm41vj1Pt4RmwlnwxGXNKgfkDUvRggm1aW54ed2J2w1/MCn2TsqYObiPyY34GKKPneVg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779720754; c=relaxed/simple;
	bh=Qnd1Ax/AspXBO3GMtSrNhYqlY04dCNxjtXLNW09zDlk=;
	h=To:Subject:From:Message-Id:Date; b=j5Fhn4s/7bGjKQnU/IQMPhHsvjYn5QAJoy5NyarZ9wNEvmKvYPZ+pgwRl0QGYJew/n2CJrl2WxHNCjo4Aqxzxh9eAhWq3AETLD2Ct8hisgVOR2zTD72YUf6KDasIZ1QYKWPG3j7cDZ0i/L3ANWcrBU5iOJbxGpteqZLX2a+pPsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lW8rxSzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lW8rxSzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C958EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779720753;
	bh=Qnd1Ax/AspXBO3GMtSrNhYqlY04dCNxjtXLNW09zDlk=;
	h=To:Subject:From:Date:From;
	b=lW8rxSzf083Xre2eQHTYxHJIpjcaIwMQtiw9AU8diFCzOfIrEGXcdF1B4iGbbm775
	 ofcwFA60KcVG5/TuP1B75R/7mYY1MCZFQoH/wJJ4LyQmjJ9x95M0VhfSjQUvgaTcRT
	 ILwpA44pBtOpYGe4C7qMyzzvo9CSWmondSxhnwNcVB+iTz1HcnuwZ57su4Zl/A9ra+
	 pvP1I/1M0An9Ktbp80dxwCzCQ5PcgjUEy9llPTPbRJ7+BjwEigmUQ/t8mdQbV6wvR3
	 QPlY6dl8GTkhIJ8lvyfKYPUTKNQVooGb0CQbwmyT0RXIIH2soA2LC5suHbU+SCIAVw
	 ZGkmaGTgs0cwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC037CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 14:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972075368.10920.4417360030738128547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad587c484d038280110334ee9cc5cef02649f210ccac7ecf3c21178469f83932
Date: Mon, 25 May 2026 14:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779720753
