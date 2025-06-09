Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334D024EA86
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749459594; cv=none; b=YMJTEr8wmC+kFexKZQEeYm3+0onMBVB8v75oeW8obp0ruh12pOYzi98RpL5pEZ7jlcAE/+qKt7Sk6RLD223qjfOedSAUMnxF3NQvt8rtR3zHwrr63QeauAYPGqSfln/DSu61GhZWBsVywtb5/80340DAjCGy7uSsRxAlS35E9V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749459594; c=relaxed/simple;
	bh=mXSNrhQUwrYWONqVeN7t9wNLiIb6EeamVsPLNrfZtxs=;
	h=To:Subject:From:Message-Id:Date; b=bLkR4YXyt+OGuU+nYu0WQmygx4Ba+KwDSj6Gtao4iYbmoVmYR4hvDfobNjSSnr4jq4iixTg8NX7xtKLO8r4pKKlx62f/ICUUU9y5XDO/LCYcloauGyZVJOe7YqW/cNKqZABoLxApONSoxJTNEhuN8sBklDRww7rnyTQ4BUgUv5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVuG1kWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVuG1kWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22F4C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749459593;
	bh=mXSNrhQUwrYWONqVeN7t9wNLiIb6EeamVsPLNrfZtxs=;
	h=To:Subject:From:Date:From;
	b=dVuG1kWFyHJEY4gJaiyQVStVnjJpc/KuVWb6N547oP8LO5JcHD5tnROTOdgbMyFbf
	 8KzkYM1Q4U1/64XMKJ9srknXThPwYiNfXkbaDsEMFXCGTWhrLuTrArnLnBqOgHI7LI
	 2cPSbTSQ5xPTSa3Jdge4+j1yBYxtre1TMIlq7kI/dop27Qx9H7y/0WXVnqPI3ciRnG
	 BS1UYFy2HBCFsl8L2Um5QeBswmCLyE20cGrmGnnnH+JF32joEhxkHRgMkQbYw0MRSH
	 Qu17HIzSivuc1i4coUtzm2rHMwmfRqjoX/XKfgJLN79IzEssjQYZjI4LmedAov/nSV
	 H2ys6cEmJBEZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA16C61DB2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174945959357.7891.11499708040463756774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f9cb21f7e4d62ebe94e5f920bbf5efa3f443790bb9e343539bc22238cc489c7
Date: Mon, 09 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749459593
