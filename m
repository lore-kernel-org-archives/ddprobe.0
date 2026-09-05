Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508C54AE132
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788622834; cv=none; b=ScnLG3Y2rf2btAOpuYyV/n8DmsEvwq93g+zsU9dyIrmG6Sb30FXXlRBjxCs2G/1E2v1iqsAWm4T5bMFJkaoR8qXMXUyddsP2DJr2ZJXxcnkAkCe0GeLIB8vbgF4xMzRXJSnv9EEQNHrokpgsXqpXAgbVJNqXHjlQD1UkvP70h/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788622834; c=relaxed/simple;
	bh=se+5IEXOCtOHlNpIV0L3ZQa5vCvDHiMMWT0aza05cy4=;
	h=To:Subject:From:Message-Id:Date; b=fzE+YPZ5teqAZIvP5plRDw+Gidvctlj8kvqyH+MMpjjaQewSmd5/GMJ5lVXkfGdtc0W3Ea0mJjlvJ+7x/pcKyapXfiq6asduGA4mZtH07WCLoh0q6Ah5rVb7Bm3LC+eKOK1mN4QKXIG+WJS/ksJfShjdvhs17Y9OdPlEE4h6+8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0RSAzBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0RSAzBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA70CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788622833;
	bh=se+5IEXOCtOHlNpIV0L3ZQa5vCvDHiMMWT0aza05cy4=;
	h=To:Subject:From:Date:From;
	b=K0RSAzBCi7khV0QKEO4fnF/PSjVbiI/dTr3srdSTTRl2uuK5ES1hCPu8FOOLruDPe
	 ijDVFVP0DCz7NsO2wenZKcZW7kEOlAN9F8dSJyB1SIKbeo/JRhmSN6a/q/FCwYTnRx
	 r/wotto8gYr2lLlhM9MF60nUAK7wInEAS8SGdc0xlEZrkvdDHwZzVoQXJdXOjHntR9
	 D2le3jglcb7JRniCGh0st16YRDJU4jBq/mMv2jRyWTJilVzixM/TMBxCn1oje6aTxF
	 Ewmq4sCSX5VN45s5JnAaqAhMXcBcX/rICNVidQpWHLp7rzi5qnq1ORAocNMjBQQlhB
	 W6fWUU4D6QMKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA29C624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178862283368.17083.16851254098133535659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fcf028243de7e322f3ce27af704a3ca1d06ef600064ab4dcc5ba0dc064f8639
Date: Sat, 05 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788622833
