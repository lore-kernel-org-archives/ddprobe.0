Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B23F1DFE3F
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730309754; cv=none; b=GXzwFMNzgsVcVybJgqUC6Dku5tY9XUijZAHxFSP5dRiXwKbbmHYC3pGXleqx29bwrvANB3+VjNcWOtR3w0lbG78rhKSHCgkQIG9ksuTpOgjGevr3TSwJA6v2JmJiqMhXzd9dNehd3Kr0qqYk1JiWg7WG4z/+EqtGRTvdLZbvC50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730309754; c=relaxed/simple;
	bh=0nJxjkYP2cjrtDYp304/gcg2Ry3MIfPrbA82tLDvBSE=;
	h=To:Subject:From:Message-Id:Date; b=E5TUT7LMOZ7WXbqhu3UP9RPr0X2WkP/iSNge+d/FE6UrJXUu0B5Gk0HAo9N41vrpE1G02NDpoCFok5e/UQsiqgondSfML/c2aGENx4AhV6IXEEwptiFWf+/FloihSql7ywJOA9M+saAoG/y10z3G67TEq/sGaeQ7Dsri20W/vdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czVwrsAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czVwrsAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7D6C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730309753;
	bh=0nJxjkYP2cjrtDYp304/gcg2Ry3MIfPrbA82tLDvBSE=;
	h=To:Subject:From:Date:From;
	b=czVwrsAm8wQgvR+mNfZ2YSuE3oTBgZf3pgcDSyz0mc+6wqOBOULuiziRldSgO7y7G
	 26CUPbNYh0onGEkhdVaviu2z6ik0InJZ1Duz3/867O31nSy1zFo4whvz5MGYbZAhu9
	 HgpiMKQ5q/JIsblGFge3deJV06WXLYRfY5aA+FHokDvo5osBz8rX5aDrXBm2rYXsDa
	 /UUUAYMYWGEEXfGcLOL2j0TNU50GM629+2zr+KF/e2xG0aoGyjLW2fzaKEROSvfud5
	 p28TWt2msHszS9A+SlsuuKEQPOBEbCvjGBsry0DoB7yfCCPP46PVvVU6e+8B/roqSZ
	 Ua6vCVXdNFXdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D5FD6B6B7
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173030975359.28783.13350463447165586893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c2cccdd87a4fb0fec4c471c01b1acf97172f3db97c8f4b58690c64a19e7fdd
Date: Wed, 30 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730309753
