Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC4A324B0A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786116634; cv=none; b=K3yB5Eb/XT3U2x7Uah0g7GKPEavJfeLq/zczSzKv/D/NDFDHmqH+OJrg6GCZD0fd0FuH78DXAqVztEIXXxTiq/w0BtYRZUS0Maa4fFHShAv0120fWUedyCqJEpsv4d2KiiG8zUtqgx9rEClG8URhvMZyI3fF8Jyab4ydDU3/uqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786116634; c=relaxed/simple;
	bh=n3BtMpLxNbOatqlXurBRIJFh0/CHvNwjDKYDfS4H/84=;
	h=To:Subject:From:Message-Id:Date; b=mGQZo3zc42k6Day6rwWnoWZItjHnGqiDUyKND5Kknm9LT7U9BWmoD6Yw0gFhg1Cl42wOPiL9u6dCBihu+83dbYOoBXf87tanmKv/KYMn61D2McwSmHkx4kOT1npIrCW50worOli9rmxZK0WliPpqLaU7PelnCK6beA9kaHxnvFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSCTDI9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSCTDI9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B6CC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786116633;
	bh=n3BtMpLxNbOatqlXurBRIJFh0/CHvNwjDKYDfS4H/84=;
	h=To:Subject:From:Date:From;
	b=mSCTDI9+erWnJMv4DhP4jGWonMNM8hknypbwT5HgY96SeXbIRLVd6Bo1psodP4sGd
	 oI94rwbpNEdAPZSnLFZG4c2yh++YKD+cvwhEx6OzMyCMhAtEENI6PqKONsKIQsanIh
	 jKTh8Cr14U9CJrZqb7iptpFhVl4ZwBoM/z7+yMBKatnt9TJySTMSVk8r2oufRK2B8f
	 Uaq3kvJI8tLQx5U+LhIV/0RCjcH9Z9oAzH8+jxTZk+hybJFtlshOxIBtBbEgAmT7QM
	 NgMeBvwCvyfnIpixJa/lvzR5XHJvUjkcNrG1nIxSyixo8NxGRgPkXoSEf5U/jFuP0Z
	 o1dE8vwbV+8ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0335C2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178611663375.21656.1855821803076967436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a036bb3528eed2c2edd5ab6b16410258e0b3e8552ff3e7b0c42dde9323397ced
Date: Fri, 07 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786116633
