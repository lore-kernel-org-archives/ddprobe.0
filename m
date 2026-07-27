Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C893E5EFE
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785141634; cv=none; b=XXUQ7YMOrvtqYGC2Ljwa0mRPmX4thF7jdsS8N347wwUDI+Ss/zWiujh7P1esbJ/HvjudKwbSKUN1CVoNAAKjbyigkEiO3nZ3W/u6F3BgSTEQGNUO969KEw3bGmA9IjHtnVnZHka7cEqkubMSWFRx+O0g1jxh7iMCIdZPQJ+P5bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785141634; c=relaxed/simple;
	bh=/sIrylILymin5AhOhuwswR+CvkZy/7MbynhqG23cnsY=;
	h=To:Subject:From:Message-Id:Date; b=vCz48DXR08xv6Iqj0aoxPoxLitlXApRLW/sgvSQFUKZFWPeslKNxb9EPwP6ywT/7TxSG4yT2t2ZEOI5WUiVvTv8uhdgygyY+4Pr7HSqYnvgY0OoFhbcRMYOfN9ztobjq5cVWn1K55YMYUFNRWB5t3WE/0har+dLwBugkZKoT+2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHZIASHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHZIASHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE63AC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785141633;
	bh=/sIrylILymin5AhOhuwswR+CvkZy/7MbynhqG23cnsY=;
	h=To:Subject:From:Date:From;
	b=cHZIASHdvpWsp1Nxhaz8xBmQLdpdoAtLFvXXrwX4B4f93yLK3ycE2mHg+BTzsrF5B
	 6Z0QymWrBD0eRbRTD2XTX+xfIwljcgxEkaqRBpViZS6yAjua58lfpRQjjO+9STdNJm
	 1ZFMp+xzrOJidJGAvUpSkykUcmn+OABWmk2z5t2sLpIMcpIFQmGoBEN2vrLYdPzVp0
	 T/KGbaV7djdJamLpLgITqlkihIXI+VsLlafN6fCfiodBAvSuCBvIaomsnda0o385Dm
	 eFiZYXdTSgLZCQMrGZ/Z/Q49C1qKv0NFgGH9EFYRA6cY80H2nBf68uvSfTXfuBXJFG
	 Kmq7yMFT2pDoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A836DC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178514163368.13904.2137615468395433494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3c7bbf37013236b3d90761a12a7f954806beea6349621450a0560bdf9bbffb
Date: Mon, 27 Jul 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785141633
