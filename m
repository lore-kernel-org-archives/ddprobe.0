Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342F91FC3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737953754; cv=none; b=h5t1WS7DHtyZMGl9HB5X7st9ANaF2zJB+JBM7D/GGt8ekGSfZ1JyzOZwgRlHV6Eax4UD5y4CVQPc+PUGGTYKFa+mwGLpqmsieW26qcgXryORXYjabfYPKyK4UZTVTOJo/hRnx4w90UsCnqk4wllfI/jVBUN+y88LXPWZg5EoB+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737953754; c=relaxed/simple;
	bh=s4CjDR5XH9KRH/YgDMkcgZ8InnZuIAl2h29h5r394+Y=;
	h=To:Subject:From:Message-Id:Date; b=g1uh1BKeT/LMG/EloDy4DLTxgCJKFCH6AU24qQk7iUEYZf1YW+jVogA7FiQmyRosE1rLLCD2/gaAAnRpNtKQ/DkrxmWz396KLc7TH6CtmyMslFLeu7L6B1yXhdSEiYPSiqlcpxOEZt3ZAJ5aU5AFuYN6giZD/OrH+gDWTMGKAB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7IumnLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7IumnLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81C4C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737953753;
	bh=s4CjDR5XH9KRH/YgDMkcgZ8InnZuIAl2h29h5r394+Y=;
	h=To:Subject:From:Date:From;
	b=M7IumnLZFPrf7fu0OkC+F7RA6tVOgpg8IEWEa8WhDlEV1e+aWLZ5wUfeMHRxaNR9H
	 4L+3ZhYg7pBnTyjJ2FORuITIxf115u28jUZFisMDI8o6v3ltZkdWRVL6r5EAOMsBFN
	 JS6jgy1uPa4YYmqbtfkp59vLZLHUjv/F2tfw25cVy8gkkxp05RUMgWELA+EPh/1wIT
	 6tc7C5cjGmZKupHKbwW/I1GhHcX1opaZNU7Nqz0GRdLDgENSKB1sze/eme3Y+clavH
	 nqMzm9NF1rnngQsuEfefLQcfnv23azBi5aP+ZGjLXrcSo3mzEvlkjfFv0PGlBKreIh
	 HNTO0yg3bTgCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97680C0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173795375361.11898.3205879347186099731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 224bc84d235eafef2fc4a0bd86e7a2358a8cb2d9e9a887ab2c71609132aa471b
Date: Mon, 27 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737953753
