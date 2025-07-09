Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCDD628DB77
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752057593; cv=none; b=QkX2e9sp/GQ4utE1Ua/o/eyDeGAcn0W/F+V+Yk1PmrKd1B6UKUgoQc/XGln+zRtR0OF/7YsAZQvskVNEbcLTVkzSVRZq7hPhq0LLoNi97agsK9yKJfmL+P3l1WSqOjIYkgv19qE3NcEhEYwn9B/rbkOaD4LGATbXG9AFgawaFvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752057593; c=relaxed/simple;
	bh=lTtSkq+bU8bH+tvEL4ylkhdxT0uQcSZ+peK5/BD9EG4=;
	h=To:Subject:From:Message-Id:Date; b=JHUru5yyR7WDiX1NxbQGQnkUCgKq9O9D1Lx3HjE4tt1sbnL9GL2X80jrqjZLS7NE0dec6rIN7Xj54luclPCBESmYI5dLacyRmGRd5pPJAFYoX0tZOg7vbbAwqztOsw1G6hYQTBWCrh3UpxlJ3IdYNX9wNVocd/jHboaWF0DfJx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrwmUoG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrwmUoG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C61BC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752057593;
	bh=lTtSkq+bU8bH+tvEL4ylkhdxT0uQcSZ+peK5/BD9EG4=;
	h=To:Subject:From:Date:From;
	b=VrwmUoG58zHOvPqBRVMv5cah95f2e13nv5hiyP9FEZUHs94I/4UDK42+aHqmPJKcZ
	 ebFEx1z+djYWT8JmybGqb3noRCHVnhfs7FX8Da1mf6Vp3N1NkxaiA14Gb6BOP/1msr
	 baOngGM5IM50b0+wMSe8ABkwhdKUkwzCTI+97PGMi8xLDgQfNkTDP0CKbOyUhMqUE6
	 kIeAv2rQXOnNUQjd21/BQ0Tez0XviPmJEkJ1Cw1nwh3Aam6WXvM2QRXUSyIGRPcaSf
	 e9dQl/XpA5C875fpPYYY/LCJ8X7tWSfVIsfoEwB/s3R6gRTcPiIffbklMIRLtno9Ke
	 jW9bfJ73qIi/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E130C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205759357.26539.12081321011643814929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88bab0f60c3a96ad612fceee3d62b287f9e16c42a54dc6e06d5f391abe5ceb7
Date: Wed, 09 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752057593
