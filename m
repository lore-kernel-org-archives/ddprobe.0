Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35448D530
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730003754; cv=none; b=fB/yq+q3Bybb5lvVWozw8cIw5yEUR9V6BcM+kNI7IjXkQPzNzAqO84nVOO2xtd2bBbbDk8CF1HRFtaBY6305VP6+2TQ2wyalZFlPEZwWyjZ/nkcfzNCPG4H7KEyvVhfsFnkfuO8uSoVP1r1b/CLF6Cp6SzSJILAOB9VtPYFlZq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730003754; c=relaxed/simple;
	bh=dhzWxId0UlACzhJUn+iT64zqHOYJaoBHy44hwfKwNFM=;
	h=To:Subject:From:Message-Id:Date; b=B120LFwqiUcZ11dg28GhKC25RBsDPS6Us3o9Qo4kFzZkt/ezHuMGbDFYaKyp9hFAVYgR5UVGHZxa3rb0ADSZJ801yhReM9y0wXb6txWbBQA4Yr4ZzHMel1sqr28452IrC/RQokwmS6UoH8ybiVNcpSPbTOZxOf6wyAHy9jh3xX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9aI0NFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9aI0NFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B9BC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730003753;
	bh=dhzWxId0UlACzhJUn+iT64zqHOYJaoBHy44hwfKwNFM=;
	h=To:Subject:From:Date:From;
	b=I9aI0NFwvinooG4DX3yGw8dJKqqdprXAfdOgTcnzJC0RJE5A9xD6krYvRAHX7vfJb
	 VUOGmgebzSX8pR65Saqe34EnnGjD6pwDbd2TJdBjps9JvnTHdJfNg6o2AS41yCgctQ
	 WCgXE+rZ+8aNS0n85hJTeNMcoamk9FLcpVTVgLZDEPcsw+pJi+5FVPgJuhFPSyJERB
	 txUh6PFSN7S4mqzx/cu6Ovt4h5LobaT1H0JZ1uEPvQgf8gR/jfBt7HZqdHsI9Ky8Al
	 cnhxtcxD2nrc5xBnI4dNYsecQcTS5QOHpls3maLldv9yfJtLnCVYV97HaCGaIXd7uB
	 2DDRMyt/qVTHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984EDD10BFE
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173000375359.3370.17445026437445000601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5511bdd795fbe8c3824db605f1fc7cb5e2dd5e3d0f6ebd6f47c53e33117ee7a
Date: Sun, 27 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730003753
