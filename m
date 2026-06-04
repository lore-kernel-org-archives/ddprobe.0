Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2841322173D
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780589674; cv=none; b=FVseBLFEnboTrQSGRm5EkowbbD3u4vKynltPcuwlzQJbn8KhsHjVd4S26IwZ0QKU19LSZ2qHI2SkWlC9MxTTBoFhVhexryZSriLpOQevQYJiT04AVdda8ykVYbTOu61QMJJNNQs76YwzMTMi65AxzKVDM5AWtA7QkwhChgG0iN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780589674; c=relaxed/simple;
	bh=o7Olv7ILO6cdWg47xw+eMWcXNrgzH2sb9hIOyoR4LlM=;
	h=To:Subject:From:Message-Id:Date; b=t9BQ2Nuz+W+gJ4lWkVQFFw7KnvXQWpgoL7E9Yaz9CPmRtjT6irkwXYiTraIH1Lim9CfaA0FKqysYfQK9uLExWVsieX1flA/iyAfJtS3CKJyOaG1QcFRrkrD9EVLvOmcoqO2riuLA+XaVFr3LRSB+KKG6jAbTV4UumruZZYIabWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhnmrifs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhnmrifs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6228C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780589673;
	bh=o7Olv7ILO6cdWg47xw+eMWcXNrgzH2sb9hIOyoR4LlM=;
	h=To:Subject:From:Date:From;
	b=dhnmrifsqBxsx0wUTJfdZXBb7jz6lJt+Wiiv284RW4GWFJUzLnuQmxKyI0jQUnXQT
	 PpXFN4gZYJt/suOzjMnhDXCwwjzi2dY9ht6XVUtAn8DYK1HWnRgece2vBFR5Rfb4LZ
	 2St7oNbk5OBhX/5u0Uo+5N1Rr2zWowW3Qt5zHunuctxRTUml/077i8EfGpO6hsSc5h
	 mBzgcraIM641TrTJgDdgv5cC9t19rnrONLPU4KwrA95pak9jvdf6PrhKNr0L1q3JaN
	 jzqven/pvUGPRiACM0d/L2FfOUNZdbMWoWPcV4vUwmfIOPlWqbOs0lT6kKvPRmR+Uj
	 7oF/GhGxqHQvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B833DCD6E6D
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058967373.15785.2870619166655624003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f2daae6ca7aac19ff39843baa56d93c91b24c11d0beb36b32e5f241f12e408
Date: Thu, 04 Jun 2026 16:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780589673
