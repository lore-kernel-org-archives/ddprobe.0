Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B1B19ADA4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782365854; cv=none; b=TLfImQM685MiK0Td/i4ZyrxwcLyy26+9TmTjMlAVxufH0BD7/fXLe5mePXhgsfZYcE5Hp9FLsWF/1+0tzh3rKebN4+ivlxtmgvLdatn9G9ri9Arw2iITNq/oK9gfbWewjOyw2kndMtzqmA/dcTXZQDaRkgx063IEdBl9gS9pe74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782365854; c=relaxed/simple;
	bh=l3Eu5OyARViVVHfeJNcZTaj0bNV8MFDPzp72dm+jm1c=;
	h=To:Subject:From:Message-Id:Date; b=p7AvUQoXZHTRm9dLeBZrR6/F5SG7iKSXC52GQjLj3W8Vj8aZvDiWsHNGTh55t/XyhnRSASZx2qq0lrqHhCpS8LjYbCyl/CF1MI4lQRK7aC/mghi2bWmcxIRSzldrbjpb2VKVZ3wkFjTJPRGKB6yRcAshkWiqqqMAcf74up03wI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8hS0QL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8hS0QL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBADC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782365853;
	bh=l3Eu5OyARViVVHfeJNcZTaj0bNV8MFDPzp72dm+jm1c=;
	h=To:Subject:From:Date:From;
	b=Q8hS0QL65Ak63BAN2ZEyFlEY4cCC700I8e2RHM296tSBp+eMLo6HW6hsyZvQdAw/g
	 PpIclhMN/X5spBsIwMA3F5q7JyrbRQAxNLZHwZJs+nDIBrD4ZVy34tue3fDryV/ihX
	 vCTt+diiUjz38BsUuNP3jyUWRgLGOnqkRFBirN5lrBUywS6Qstx0Z/ib2BqH4viXnt
	 FIWSL4OjWMUfi6IjVIllky2dmq8BqmAM0SfBIDntPOwPYJD7gSLfGXHGJKyCqoqXB8
	 WuLCbXqQozhitT8NdiPiCgMNeR4aX9mtQKv6QHPpdd8a1g/YItHVfDL/uqXd54deG7
	 dKiijnb4hMMZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3230CDB47F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178236585370.18151.3796726084942356387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d1c5a77e8ee5635f6dee33ed5665a4ea6492262bc005381f020541b16b62ded
Date: Thu, 25 Jun 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782365853
