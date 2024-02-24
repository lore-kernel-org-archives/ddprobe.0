Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF02125B0
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708765697; cv=none; b=gDTubVdwPLIGX0NmR/A6OvBM7TCop+mWmscI768ViwkhM0cKAF/Y/PnqC4u3QkMEK/fji/UR7k0/hTqijoKKHZiQyTm9UpxQ2dBsV0aY0kWTw+sqloqtS+326Y/r1phzlruzMnmwtF3i7nmW0uxdlhWBqfPjZ9CEWULUoJ210PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708765697; c=relaxed/simple;
	bh=E9sKA2HgZpBOX/qCh0wMFCUtRikxTS+/DWHZm5kvmG0=;
	h=To:Subject:From:Message-Id:Date; b=ieZb4pxZ/cvT4TLa0e16wbuD7a8EO4/vGDUPkC5MTjKTLo2wTW9mh4KLxP2FWder8g6p77d3pjo4lm2Nr7Hidu036QX6ZU8hy0quhFI7GQtbLN2AYs6qAqUNmEsOwtHpoVJkh/UUmJM1mtd4XzMjfZ84nq5A5EQqS+l6yHG/qlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOpqjlXo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOpqjlXo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FAF4C433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708765696;
	bh=E9sKA2HgZpBOX/qCh0wMFCUtRikxTS+/DWHZm5kvmG0=;
	h=To:Subject:From:Date:From;
	b=BOpqjlXo8Gi6S8zTfMdYxn+1W+5Mz0LWOppVqUzqAGSPkBOIXgGSLI9W64t/W/TKh
	 3Rs9mzwIp19anr0RGJOrHErJRZUNst5kYtkre71ozh7SIc0BIda6qEaEcK76bLbnrC
	 TlxfwZK37tHbw/0uW5svbwyRXe4SpverhXMHAihxbRx4e5ERBloQhnySvnks9zfHvv
	 9ttwlOWBDgNRJiQPIRr5muqg4dsxGf4EwGQrA6WCOj9wD7aIfu340gbLo5ynmO2RSQ
	 a6Co94LvkRnT4ZzX15RAjWnWeM14Xny5sYNaFjIFPhmP1oPjDO2b+Ldup5C/dILu0V
	 ts8nKUm2lTsEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621AFC48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170876569638.30630.16228875736152064252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f3276d69e1a892a6e1f9abf70168cca5fd2ec53e67edb1dc7cbb0b2ad342f0
Date: Sat, 24 Feb 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708765696
