Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1121BDC8
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 18:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715367143; cv=none; b=IIun/x6w1W/R+YaKsWuoMwvonKhvHstQTGUOsIP6pgSm0+Eb/Th06otNWpHwDdocsLDazZ4dyKPDGTN9zb7bjiMnxwlY4k3wSWnUm5k5vbAVgLtpGE8SQQJwCHkBeoJ1Dti1pBURM+VXV8pp8AvU2XnqE0D2P9WsQzEwTELvR10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715367143; c=relaxed/simple;
	bh=OvGfJIBWVAxYgUFN0W5YVo4eV8E3fHdEDUQ+qtJHg4g=;
	h=To:Subject:From:Message-Id:Date; b=cxmuFOSwi7Fo6kpnncVyDYN6W4Uq/cJbh+5iVtvhPrTzx/wgadXRR+zi+//SsPNMshxki0VPhTViFiR0E2+bNXvH15I6FhryLIjQ/CPhMOp2qeNs3K7ccQb/JiLeuLShQjnJwEk7dGl6BXlggbSZRRNcvW4UTZiVj8v5jWmyh80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zrt/49ZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zrt/49ZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2885C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715367142;
	bh=OvGfJIBWVAxYgUFN0W5YVo4eV8E3fHdEDUQ+qtJHg4g=;
	h=To:Subject:From:Date:From;
	b=Zrt/49ZIMKktpoiFfLFwjTnHs3KYeV2rkJ50F+z+jiJkvy7WCCEGNdWCqUcsOEor7
	 EaZcDZm2tnT0d5qz4wG7adQ9FRh9X33jxcnhBR74TnDqd+4gfVT33v4NA47CJu6Wiu
	 5rcUOX5bPyNzspAzQzkc2CRKawHHXfOXOkjlry73L2PpffHnBOpDfUciY8zVQj/9xl
	 YTN6vvNB1leS4OjbFJ3GNTL740p62Gnp1tQHxNT78y4LL5erq1/8axrKfqjV/F3frI
	 95CjGxG8zaHiS9Z+QMfNd2Cv4WHxvjvWHa3Zx5uwBWlwihEr5GA83EFgfjC1TTQxaW
	 9HyqLXrN0lB/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C246FC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171536714276.20255.18331147705141276006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac7ef1c33c6248844410e2f4e77cf370b97e9369160a41213a210f810d33ea81
Date: Fri, 10 May 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715367142
