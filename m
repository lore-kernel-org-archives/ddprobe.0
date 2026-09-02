Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417B449EC7E
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788373234; cv=none; b=JK/sJYBA/i3yCquWhkGrBVRmOwf4xTCG4rykhQ1AIxD9a5ame3Hda+qDR9AIRHRkFBkOw6SwuHKYajyTFZtu43dfhyzCJjiC9PW3Bn8UH59XjrlPUyUC5WoYv1V69vtXBeH6io0ggivf28gp8VZHqnz8UEl4xV5Vl6/0FLQmmGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788373234; c=relaxed/simple;
	bh=ypt85XBT5c+TJNBNRLhjL6AjljVuuE2wlWYAQhzpPvQ=;
	h=To:Subject:From:Message-Id:Date; b=g8RhV96azLuO31Svwcv4QLBKH/4r3HayyaAEXwUYnLckvaTJxYlglcMTJ/qA+8vn1Z62zrEKU8V5RphI0QJc+I4wzc5dx2NwU3zbMlOkFhlJxrWGrPRXqqxVF5uYT0mV1mmb+zUmY67suzFt+RIpBIpXIDGw8wtUkYnGHabF52k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrFmL2yX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrFmL2yX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2803C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788373233;
	bh=ypt85XBT5c+TJNBNRLhjL6AjljVuuE2wlWYAQhzpPvQ=;
	h=To:Subject:From:Date:From;
	b=WrFmL2yXJy0nnATmatnXlJU//x0m9kVlnt+OdaQQIHT3xdgHludVivj0LRiuGcnu+
	 3+zlc13xU178/+kRK9l8o98uB5sazbBUpSUByTOvflVrFh2MA7sGkgdagRlv+u02AQ
	 I1vlfPR3uAGsQUV2fEXO9gtX15ve7a3700HPonw8JNfW+YQTQJYMGTf8CppSNmDyUz
	 tXkoPmFWrtNpwFmd5aOv0fnvbS78+oFDHCucxRBLgLRqbrLg3z6nzl+Ic+S1MJER7L
	 8hbnypJXz2lvNGHivHSQVA5TtSa56IUTrFL+9FrSXkFWCjUdGwVxmWhq50dK4JftdA
	 Y8QHa/hWIkl+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF391C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837323370.3679.12848472594901120628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f279a6f9c716a44b308e2a38a86a9c9e844453d577008f3918be1d702e6ed3b
Date: Wed, 02 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788373233
