Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8BF2D8DBB
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769891034; cv=none; b=WGJ5ikYDanoGCHekw5w4BT2gKlAy8gJOfoGUOPursa9RQaE75aveLYnbm90kIZrUS+qltnbRQW7c7J9Tb4YfDgAqH1W/JKjnSaWBQj4LDYovWOaMWcdD2OiSEayTWQY8DIp0xllFutsL+3aoz69spX1Kz0KVMqaj5z/QlzJCe5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769891034; c=relaxed/simple;
	bh=t85Cei/U31AtyLgzhJcdkLN6ulGkNrbSAG9yLShT33A=;
	h=To:Subject:From:Message-Id:Date; b=qG8qhD1M2COjSPT1NYoBN0dnCCecYtUseonDXvgT8Juuo3TyVk4/NPohIrgzL5ef/YZsqY995D2e5bsCFyJwTPUwxRj77k/vJdh/49fkqi2bMf2JIhLrxiaEvEBd9d8CbQjQrJySanoMhmWnEdlOfSo2y8oJncuRGjReC+EdNKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2j3rfe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2j3rfe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB715C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769891033;
	bh=t85Cei/U31AtyLgzhJcdkLN6ulGkNrbSAG9yLShT33A=;
	h=To:Subject:From:Date:From;
	b=t2j3rfe2SSCuArPUnTnBdTRSRrMbbG8vXSw8wKe9TJUgjNhU58PzYxYGG76j966ej
	 gZqny3Ge0gMwuEbktqkz3Oiub8UGASYEJiudNwGBYg/M4E6ENw3HL983HW8aZ4BHxv
	 If1ArF3unnR4Z5A6CBctaQm6RmKmuyfM1FtXCeoL1QkfP9rQcYHA3BDu80StOHQIeU
	 UI3btSwu0EpB2raZvdPG8FS4YQOuLf4FpIoFUOmkwACia+Y5P3VL4jB9lycdvzZKMo
	 YUgF61U8P7syU2U/BonYGSe04QWhzYkyjc1HFPLXtAq53NdPn4SPAHghVDQwsZADAY
	 ARNUaQvyiczpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD99E7C6E4
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176989103363.6970.8539338168182077197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38714bc2c29215e45a3bc83e6b60ffb374ccd0cf27e29b84150bcbca79bc83d
Date: Sat, 31 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769891033
