Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3397E21A43B
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754132394; cv=none; b=kTFLfLHvhL9dFzb0cIGi15o9ieIrzmKu8WWaJ3K+YSWM4A60q5nbukE/9cQokQVe32tKhbEkFsblJPHZ1/s9hYYsEKLToC+zllfppy7x4unmFsj3/TrIg2uJysonezBGy3dU4BXwRFlnEX3VfzXmd+J91JnN7Gxw2OfC9T3ZvO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754132394; c=relaxed/simple;
	bh=Z3DR/Y9Qiv01XBlyoITkz8GtjN/AD1rV9SpEH0EWbLI=;
	h=To:Subject:From:Message-Id:Date; b=uymVLFfERYgx8NFVSW1ZxkXCnnvvqUDBzIf2V2OXx99YeV3O5TVPnt9MrrrU0ggAT2GifQKlZZdA/t5lRFMiOewCUWLOyIUYJbFiCnAVayanZLYbv1/CgDIcFc/Z/4opXNBDaW0e/n45+269vU4zHwpoweJ0zsCiJh84UUaeSfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqqieDUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqqieDUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50E2C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754132393;
	bh=Z3DR/Y9Qiv01XBlyoITkz8GtjN/AD1rV9SpEH0EWbLI=;
	h=To:Subject:From:Date:From;
	b=fqqieDUnuBCthlU0cPG0ibN3O/SF/dXd4gAcWtNXGljleAkerjCTbKP2ZCH9zkuzK
	 7R4KpSz1R72kkjYCTIw3Yh0wxKYPngl7ySdOvh1NQJlBGD21FkxEDaEim3f4YGeOi8
	 jnVBIuq5VEeSW1vHmHhwpfIFes61jB0z9HZnPTCrPh2J6zzh46QsBJumDChbMkqY2O
	 QYR/eYayG71A/+AVPu7O/ydsRJvlAxrLuLErBM+6Rngf9qLRl3EOdkFpaY1qlh6ogR
	 OUjT2KVEdy0KoObM+oU2czjSP/y/aOVM0licUlwK009Jni27S5vGdJiya22UhvRnpU
	 syjK6fPsmcKxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96610C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175413239358.8475.10535773508160908362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f17e177cc0c7b9e95bc4dcf5b6ba2a2651b331235bccb78bba341e92b628cf4
Date: Sat, 02 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754132393
