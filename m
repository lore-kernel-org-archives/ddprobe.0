Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6612F19EECD
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 19:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719256943; cv=none; b=BiJ3yWrSs5Hctoy+aB6l585zpVm+NZPdOVG8rX67vwvZGClWf2PQImkTpe0c1mPRidzDSyZfyXLc5rmjYJLlX9aMv8oLXB0At9TalvpXF+WyDXxISBTviERawMmGmn2xCUYay/fp3C+d19ZXnQmHLI+8U3pOlLLK6icH/PZZHmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719256943; c=relaxed/simple;
	bh=NAuQtLZfhlWTejxUXhtY2sB2q2rIIFLtkSZcFw+F5q4=;
	h=To:Subject:From:Message-Id:Date; b=c4O1xh+kIprVs19iZbGEJdJXFlQB6Lu3EeI/XBR7xXpc9Hlni+IphWE8L6lLUqVLy2Y1zh5ShXct3DBGz0d4ILV80vrdgXyHh9q//ioN3BPqBuaw7JINN/98NF/2t8eytjsXN/U1xlcRpgfFBRH93gsqNvi3UwF6Xt+5crKnZho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADKlKroJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADKlKroJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDD0DC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 19:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719256943;
	bh=NAuQtLZfhlWTejxUXhtY2sB2q2rIIFLtkSZcFw+F5q4=;
	h=To:Subject:From:Date:From;
	b=ADKlKroJw3RE3J4L0JSAc4rO8IRGZ+idKf/AL0yeVeA9AbQdw3XSvqVcMw5XlE9Ep
	 Z9DuIxd6dABrpTSekRt4AFxy+3Bhm4dOD3wD3wIsgIy8zfIeaL2AwYySBoREY6dpC5
	 drARySfG4h7994cE8pi6MAZjvzrlxl3zKsU9L9YB/6OdTn/2k0LNOuJpvkfV8m9cX4
	 m58k6JWq2ZqDehliQFEa2QGbuvwnwlBh+eAFCpCc19dh4FDObxC53+Mq2lYg4DgX5g
	 49FQGp2Wgle+JyHKx7xwlS412kU8CH1X6aZAWMXlkpdsnnVjiIcRNU4Rwq7BdQqd9l
	 CiApEuf3aHkVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D69DFC2D0D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 19:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171925694286.13443.2678442835439280804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60b24536ff6827c29ad1aa7cfe370b73601490869441ad8a63ae05115ab12cb
Date: Mon, 24 Jun 2024 19:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719256942
