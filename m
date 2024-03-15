Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D7117BB4
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710536297; cv=none; b=ETYkdTEsZ77zQ9z1U5rY5Gd0BPrEswSVCd0vwm5TmUIsuvBJfZXjSecnweT+c0K20jh/3J/GXbBTJLw0zIOmot2/qcJn0tpkmeYlsjZZhXN3QJTu8Wy3aZo5T1CEQus0xXd2X39SUFWVfEnMqAQCCK+05VPERay/e1hi0lf1/As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710536297; c=relaxed/simple;
	bh=f7TNXpZtpVFUSoe4TXdQymFaWQkDOFT/YOKTGh+E47I=;
	h=To:Subject:From:Message-Id:Date; b=neuJHGI31NPXFIgGqTZz5I8U7TGzY/AQ+UeMGmuqOmbb9qFTYumKpu3f3kMWZ0dZoWGibK2yiy15m0pRSTzS2jNWiJAOwywU7osoDgfIuftbDLl7Mx2h1DoG7Nq2av5ZvNrQchcdMAV9ATB+pQh3yvxxz36S3cKpwTfFFCsmVx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciGmefSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciGmefSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80173C43390
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710536296;
	bh=f7TNXpZtpVFUSoe4TXdQymFaWQkDOFT/YOKTGh+E47I=;
	h=To:Subject:From:Date:From;
	b=ciGmefSYdpNNKvUQs6oIWInwDtO0yd+tH7Y62EV0NK72xOL+8MbxTY2T/h9GLpxKy
	 1q+G0RgVVBEQGxpzFal+Z3aWVdDtWlbofKPXNvkr8w5/qIyWKkLEZ4KJxakyaKhifi
	 IT8fWmrUmXxipCPSuODjHaItXFWDzTO9jqRgE3Ox0VBh540x42AzLKanmmSMBRi3qU
	 T6R9vwKTAOMqnuTWdDacSno0NA8yMILkNu6Jlxax5ojFACc6hv1HF+dPqYZF9qziTW
	 KVfPv8qhlcrP2CaiqzowMXVgeqSODeZImdPt6xXZyiDN3rKbKtFlIZytYV5YMR1A07
	 pmT2/PtzuRzCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CFB6C54E58
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171053629641.2559.1865551669189876103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9fe5b81b8edcb33e8ed3ff0ad1c29f14df2c6885c589563962b82a41606323
Date: Fri, 15 Mar 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710536296
