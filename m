Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B0019066D
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744775994; cv=none; b=B5oDcJ9bqUifMpoJ5EzeDKzLxysoC+6BXepFtcSxzKOCLynTt0E2Ea30SVOoQHUnG5nHN/1vsqBr+dKz8mLars3/Uy14/nfqcxD/uq5wr5RUfdj1Utjd8UvzkWWli321pDkoKt9RZGhikDsAJ3yf1vJIPF0pHkaqG60RUU3QfSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744775994; c=relaxed/simple;
	bh=7EDc/g7yTA19JI2SouzyHDkdmjv2lwItzf4w5ZcrSus=;
	h=To:Subject:From:Message-Id:Date; b=L5Cyo1KzZ39hJm4kUnuBvCaVv5F20C4QorY3rr/htq9eJ5ClZTMPJ/AWp+++W1+k+5bMrcsj8XfSy39ox2FdTQCMfQF9JnT8Wrrvh3uZT7aWi3fx6KPT2m/+3LUqU39LndaC7nFMszdSJugFKldv80OgOEdArj3poMOgNsStbC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cL3Q0moj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cL3Q0moj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF68EC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744775993;
	bh=7EDc/g7yTA19JI2SouzyHDkdmjv2lwItzf4w5ZcrSus=;
	h=To:Subject:From:Date:From;
	b=cL3Q0mojwZHZoV9HvQ9ryBzkHXY2ukiUYC35vZsyzQpcPpv3C9tmIfH7ESl5vqsYb
	 41p5ITuebhHv1MyveBpZxGUPv6DgCUlBOwhnK8UNGxo4k2Mw8FJiNL9mLy8GBV71+h
	 w04/RDH66RvGJU4UuidDI4IZK4MQhj2Tark9CKFAt/QWKVS6tkkJNADgqToCmuej/n
	 5wjyWtkRsq/cT1WUqNhd+1+qEOCFmA0kJDXl9LAqwvB2Pyr1WaGOTpnlWUuSwdo9xs
	 3RcbIYvdP6VMSMyjg0satulK3wMEqnP2LmI0ryiZFOfqThzSo42xAfepRuL6mybUlV
	 /UzDYBGVgZrBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1BCC369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174477599362.5880.17091145921050660543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3364833a2e48e81004f23f25bd3e88c713b56c151dd520746651ef3d0494da81
Date: Wed, 16 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744775993
