Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A821EB27
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706440097; cv=none; b=eq570r78QFRz0eL36rXs35KYjj3Eq+PMeMFxnLEUXkm7TUG0mFvL5Hgpsw36E69+FsbnMMzvKiZEQr5IiPITwgTwaZg/WD532xN8vEgMyXrMF/hrhq8sLC785soPOF/9SIC+okBaIWwDcj9Mpr9KEL4Jcj4H2PWNau7hkFltpLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706440097; c=relaxed/simple;
	bh=oY7GokA4tMLoYP8gL6O+PwXe9lxR3p/BjTeR3vEWOKM=;
	h=To:Subject:From:Message-Id:Date; b=u7DE3sSMc27EziX5xCaISyZRhJYXqbe3bMpKbQXPiuAx+Tx0ah4P/Ya5vDuxrgvBKVp5XN8PugIScaNwsp1ApZho4qpbN1Z5JuWpa6tsPy1Dad/Co0ZpV+BIPfUDJQXcnXHQRPtxbx0IHiI1BqNh+2xw64DyBe9YkACAJVUF5e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4yuelXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4yuelXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF75C433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706440096;
	bh=oY7GokA4tMLoYP8gL6O+PwXe9lxR3p/BjTeR3vEWOKM=;
	h=To:Subject:From:Date:From;
	b=C4yuelXQiqoPqDXRmsPw5RtcSi2hw4qr3KkAlPH+efCXl7oHfLeiFa2TkqbkyxlsI
	 TEHNKHPojzaQij0+XKlmIP99wtnIjB+ts20Zbsg1Vw8R0sgBkHMZNhCbs6kxAopBQC
	 Ds9yhsudBuCNG2qrML/o6UdCEd9PrXfw3WqL52K4JtRIzbX6Jq+EP17ZfjK1jz7E5y
	 F8VebKbf++fvgSklAWLh++86u8YS3bd/chkDiWECW0LuMT91KBO1By7y7Zrwj1onqA
	 bmH3yhWNPlTXDqDmvutME0fv8nAeysR40hY2FqFIRB/oPZcL1CP3W/9zyV1neCX/0T
	 kq6z71f5Tr3vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F880C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170644009638.26591.17864816899118367830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9a7905cb58e90b1a590f28b646db1f44f3d0931fa5cd3e61c2dd3ad2965db15
Date: Sun, 28 Jan 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706440096
