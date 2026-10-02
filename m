Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF90B47CA9E
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790935835; cv=none; b=nOpLhBEb6Z4y3zclQMuZ6Tl0itb6Xrw5zWn2Gub9izCmyk+1v5h7kaCCW8GMYSyxOqI3ypFNG9yFLpev9zguub6+eYgKz3Y6dQz+EnVuj3UsUOg4Moz5zuo0rNzeVG4ZIatjUzOqrghFbVGZ34KABG0og+Jb7nKopc6HUFs17P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790935835; c=relaxed/simple;
	bh=JYeU3svnQX8q7da+/eycsriMwZFJ2fXurgpjEST2Xzc=;
	h=To:Subject:From:Message-Id:Date; b=qr+IljNvMKY30fE3DbHB4dnlIcUqe61ZaKFNnZu38dz3bjOPXyggKe+V5QJy0RqYv6HgzWh4+VPT1GuTmR8kMQrXIs9ylY0kmSTRaEeNENDNNIcJfNbAf0C81pT59IUGadGHzszH1COz9w4ecmxGhWKUCUZDrTmzq/jeLZIeXzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPJPX8m+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPJPX8m+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2A1C4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790935833;
	bh=JYeU3svnQX8q7da+/eycsriMwZFJ2fXurgpjEST2Xzc=;
	h=To:Subject:From:Date:From;
	b=BPJPX8m++wBGFZMPU8WZNnqkSHYXgamq2WK/iZRburu/XzX/c/N7qJPFhe7KOcFVl
	 rOra18aqXU51vJLG9bIEkirG5hmRSzRLYi0936w0UbIdbWeHY9HH5nkgrg1uZ6EMj2
	 imqdf7/UZnUZDKe6zpwd8rx1KwNMJYPXlAvMaInmuSc4njX4sVPolDrzHGDPSJ/e3F
	 XZO7IYpsIHa8whh0sCqYozrKVAhb5Snde5d08EyUQQOWShnG3jCEupJ2Q3HBzwW6Y0
	 T3Dy7QwUvHiCRBvhDYp337BKPY7vcVwtnPAZKvdOzF6mKCHyDD8sX0aDjwe/GVwoWb
	 xY8EFlQX7MplA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EF3CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179093583368.11880.6722133565369683394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5bb7a761af50f78ffd3d273fedc7deede7e67483d2ea6d73b08078c6cd862e6
Date: Fri, 02 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790935833
