Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B3B1C695
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 00:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740876534; cv=none; b=cSPhzDWgkmUMU42JHWRr36Rp8IJsg6PA8D+xMiBzJ7QqrFlQixNV7o2aEqZ2hmZDc0aml4lNbSoisyR6rcCQPteCX8geIrhYKWh79i8KcR4mYq/EpzZh7fKhZUgTv39tgxCSd1kQnIqsU6X74J9PeqFe7gsNrKtQT/7Gv1Ln7TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740876534; c=relaxed/simple;
	bh=OJGUuCk21+tmORKmQPJkdjvg0TReFT7fg2OTz5SlLVg=;
	h=To:Subject:From:Message-Id:Date; b=dqMIRZcXXzdSDoIb7K/I8J1f82OeXwGCPbHHptcri9hMzWNtEYzxeyh+OOlen8pSmbwoikiyHGeLNQLTlXYSa6JprtqLz7UbJ18rtWEEsMmrSDnUukqTR1ZKchB/V1KD7SnMjTd4BmdiMpFtenxG1PzfgSBaJNmjMQKqYLGJbmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yes4zpTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yes4zpTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FE3C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 00:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740876533;
	bh=OJGUuCk21+tmORKmQPJkdjvg0TReFT7fg2OTz5SlLVg=;
	h=To:Subject:From:Date:From;
	b=Yes4zpThcMQcmYNx4xQrudbSUtXQeeYs9jQgqRjFXxoBDPsn97cpf5vl7J961jRCM
	 Qx7PrChw+rKbtWmYZEiT5yNf77rr2TX9cL1ZhMS05I5ZiptFfeEdor4ZQit3J/ea4K
	 M55WWgBHo8Ptgxpuk8dQfPAuuIIc+Iu+f6ir22rUsu0n9kTcN8AKt5EE7MQlT/Po8y
	 T88IZkBxMMHa2Ssk70SP08fYFxdJzQDDmdXsgagqNnTiS0QXmBAdD28tlRAWwf+M0a
	 DmOGC1kIOPwzyxFETZ+3jl3DXGoLFcFCJVeYlGbhUPR4TxrQ6gBHuyUhaT1T7YvFfK
	 fkJDK2ILhC9fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998D4C021B8
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 00:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174087653359.7034.1775455820260434777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 103347ce523d90eea561ba29b0f0d4609313f5405b67ee6391fd4bf802cf5b66
Date: Sun, 02 Mar 2025 00:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740876533
