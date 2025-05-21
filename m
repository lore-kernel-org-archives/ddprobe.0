Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547F11EA80
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747788594; cv=none; b=kApSk0ACG4fnYBKU0P5TMLpblNbFwqepMV4Rm7Dv9nJp7Y53fS3YVCQB68T+UoY72bapiTnP+Z80ku02h+7n3OxUcJxAgGkR6sL67iop766jKOhwWya7pZhe5KwOEni4/mXUl0CNaMX+DvQUaCdoGG3+eF9/8+q6b9NW9fKwNaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747788594; c=relaxed/simple;
	bh=b4bzRgC+nKopFQsgTWt8CFTxVYkdlL+gzREZ7o3Ht+o=;
	h=To:Subject:From:Message-Id:Date; b=h3Seziu/QBkX2liHlFO3cKfJ8olSsex0StpZ1vUvxJxW+45kZt3c+gpJMO7k/O1WA3a6tz9ueJa56n5hJEa+od3Iu/WCL24QLcOcD6wT5cBpmXFi77/r8ncojQk48p3tFAVs+yFrEjVTAadC49tIfLvy83eYZsRjKt+ITRyAVTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilX2ntFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilX2ntFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8223C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747788593;
	bh=b4bzRgC+nKopFQsgTWt8CFTxVYkdlL+gzREZ7o3Ht+o=;
	h=To:Subject:From:Date:From;
	b=ilX2ntFIekYe4hPHxMQxXZygZutKNyQmsu9yDMhBOaOMYAlMgy8viZKFqx+SVB7VF
	 gjicplzox39ReHABbHI0XF/8jxZFQr0rvij7vOLvhc7A6bm8Qr/K3pX/deKpTHh4N/
	 jSvpl7ezUlQtuhlui/dPjJ87CiL+XuzuWLIeBqCiza/BcNomhdImhorZti0kWHrhsy
	 4swql7p12kB5ESgkBQDQJjLMD5QXZntlRlDZjPG8V+4QxGjsyfRGe0JXsL9OcItKFg
	 oqjQyICL8pBMJjChgrIm8JWvNB9LyVS++d3ZMH429iQ1aSg3AYLQtHRujO1A5kPUCL
	 2hzmwDLuXSBqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B29C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778859360.31441.14095905897062925697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f061863ef35408eb15ef1534c11c6b7087b0deb70cf71d218d571bdecde0f6b7
Date: Wed, 21 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747788593
