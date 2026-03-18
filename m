Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A4013635E
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773806094; cv=none; b=kOtIME6QxQVdYgqILHNN0MjP/rtZd3+jA5Q4YZCSmcY+PCEJG5YxLf0r6iqKMlpu0S3XowFKTci2Yu+5ZxhInhT8Zj8qgPeZAeu7txIrnIo0I395F+Acr24OlMuis1A7gcstylr9NqaxZvd7wkBJH2pgJOH6msVjq9lIJjtOcxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773806094; c=relaxed/simple;
	bh=OTTxUwaaY7F5gRiZxSJ+Iu9SAtpy6oy2jIsRTOfiEOI=;
	h=To:Subject:From:Message-Id:Date; b=NicT0iVMfb9JtcOqUItM0hPhL+j9huXwy3QEmwYB5JYRL0f1We1BcY+JR9g5id8e3GNz4GNXx8R/xJrPWKHkCL/BHL1+mit8Rxw9OYSn+AtjEB6M9f8A37+wH+dvjNCBdeyA8A8Eko93p+PbVo/PbrjJF9JAzDUmH2E4O6nxGW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iswg6vcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iswg6vcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A023BC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773806093;
	bh=OTTxUwaaY7F5gRiZxSJ+Iu9SAtpy6oy2jIsRTOfiEOI=;
	h=To:Subject:From:Date:From;
	b=iswg6vcSxqVU+6Gl8L/hC/feLe/7VJbnDTff97SIeuu8FPBcFcUiU0spFYNkRYmEr
	 FrKQOrVMuS/hMgG6RSr4aOAd2DUARtalksOrP85bGYrSsyl6DWLEkwZzNiS10fv1LF
	 2WXeQQgVarx1Jgo2u9gtNvghS/SL8ptn3jqGtumGokKHVE20wmEdqPGQKwztsgIabs
	 fX3nubKFnv3Z+SF0zH3K0N5Tg3rFZNSA0YXjSl56n1lH64XOfEY68REwBwlT9yEYDx
	 tgBrnnwUpbpC5fgDipD7fIRsAqkze3VJvwTJ25cqDYBIUgUmNUhRKmd2mTyetiy6U6
	 pAT3Ck3Oe2Ovg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD31FCD0A1
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380609358.10420.16396592159653386948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7fd5d3ceefe5a3359469685eb6734d34de074c980efeedfda08516cc8021c09
Date: Wed, 18 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773806093
