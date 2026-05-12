Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BBC1EA7DB
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778610634; cv=none; b=W3z+/Fc8yCXFYsP+pIGAaxXP8be061lqX59ZlFW7gIRk89MEBIY1T0UzYfVQIMDCyHSZYjyZcCjwycqvZcQ2BR5mbKrVk2ehrEEJtlr6uD4Xa0hFJU9TvLnh7DV05sQ86exb2DkB5y4o+A9sSHTn+ZH9C0aqyQR4HhaQ0NzI180=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778610634; c=relaxed/simple;
	bh=AYMBhHcLNT9JOJYxd23CBGEaDUz+ZvlFzVG/ZWlj8fk=;
	h=To:Subject:From:Message-Id:Date; b=Ow4XWKzMyKVW4SqlVy+6ElzaywRQNyjKIrmvCeybbi5kqNx//GzLriCI9dVuIH91Fi+QiVvRBm+hjS75sbTKOO1A1JzVghi+riv7whXn6YO+zNodPCxM8ixd8CPSoYu2xVhSUFAUu2C46VAisQWr17ihKJZRmWgQg+I4viBiA6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWyuVOMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWyuVOMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC8AC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778610633;
	bh=AYMBhHcLNT9JOJYxd23CBGEaDUz+ZvlFzVG/ZWlj8fk=;
	h=To:Subject:From:Date:From;
	b=qWyuVOMJ3QICPlQN/nANk196b6SEFsNFVtQhEJG4/lvKEZ/9uyEuVCqNrfiHaJcOs
	 t6eToIXoFnXlqBvEGn4bQrasFEfF5YCd9wYvD99tQCTu6zUF6KQ7n3Xp4g24yQ1pQq
	 qSdZW3rsJ2V5DLSCoj3RK2CvnieZJdFHkRwQch7mqNmgPuinYEAtQrj/SsmX4UtBSD
	 L6a44YMAQzth/DwPYWHqL3BtFwX2YoTQTOOmWF+G5/3y+LZ7agLnDMMyFD8JTxzN+g
	 o6suXonOH91fJbY/1T+OqsZYQHBJocsNmk95O9A6WZ/oiI5pixG+SPgKyOp2WFubee
	 e1KApwoCeVIDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA28CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861063369.6769.4830177726905526408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4898ca90cc7f7a4d5b5546e95859cea8c1c6e5766593755930e8faffeb014f5d
Date: Tue, 12 May 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778610633
