Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBAB1EB44
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736723754; cv=none; b=D3ywvA1eDAL/LMVbVtaMLUWYu2HsDUMaoR4D1iTsxpG4apgqWDpPDrnEuXwk9jqUXh6KIAgo+9UiWScrHeVD/Os0zv0pbs8VwzidNRgeAEscnVUEAyoY5FDPabbyitW1k5wkDjeSE6vAFRWTJduu63VXRv7xBuHvAhOxXqP4u74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736723754; c=relaxed/simple;
	bh=MK94w9YtAAZ3x7xXp2uxbhw0lOz0DITMHgFLVNGpqj0=;
	h=To:Subject:From:Message-Id:Date; b=YJ/u8P5S5Fjt88Y8kPmmbWSz1/V4QUDVJcz9O0wVSqh9woOkFFgzpCWNdqXjTcI5M4ZGJkNb3nnr6xzlGbTP3cRdZ85u8rTgns/p+J17nEvKswEoMQJgOoI8MKkK3Rrrn4Pvc9bzjfW5sRCgEkfKb23h4ZconHKRQqzuvt69ZnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfBbw6aB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfBbw6aB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5462C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736723753;
	bh=MK94w9YtAAZ3x7xXp2uxbhw0lOz0DITMHgFLVNGpqj0=;
	h=To:Subject:From:Date:From;
	b=RfBbw6aBrsIwVXVIlM1MJKphD6eIRvyBV9eZzIGd7M4vMea5biCamzjND8SJJVeji
	 4THMO3U1p4gpAMiLo/a6Ib61TqxmEtb4y62H+TdyN4i+41K0odskUIKjkcmhaqX53P
	 giojXu9rJM83cJMdhUl4N/WZ7zvWOgZ+dZmK2sLAshWxuVol9lzzyym8sSPpxntEmX
	 fArZdb7R9S3eyoUpQKNsGzh0TCXYURSypXTkHi90KpNmjRXrlfD5LqCT2Q5zySQ4YY
	 Y2hBMyKGaiKuRXPzuIFDmolECel+VJscrCzBahANdlEzqkgGsqAN2rgobEVRiILHbY
	 qiPlxbYiTSOeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98462E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173672375361.7257.3824757934741294462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b993c26ddafb9abbecb16769420d7a6abe8ca38abaf72f19008b12f312e8b26
Date: Sun, 12 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736723753
