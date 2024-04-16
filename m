Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CF0139593
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 19:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713296963; cv=none; b=gYEDDGEVEp3SI7KT7qfGUOeifvszOd5l0LWr/TcIX2izrUB1W+HPe6H8nAFZq7gsz4VpuY7EXhhH+8XQN9vWsSHDKhwR4VUM8NH6oiCWEj5WW0cSPn7EGetScxfkNFdY/yI4/72+7Ka3213aHPn7OAWvqPJDfqB767eI9HPhA9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713296963; c=relaxed/simple;
	bh=23YJYSWxizyFOQaj9gDC5BOiPy36Brewj8DwUhPCLlg=;
	h=To:Subject:From:Message-Id:Date; b=aA8NdzL7SICH52/9juq16R3wd0wXDNA1JxhdK5M764wPE3FQjd+hwLJd9RJLuQ9RBFP+XzRKHVYoDG6gMIXbp1CjbHxdKvI2heLj96o9Tk+9kpkCgghGb2l6SNC4uTikgBX4R45c5XZHmCouWu7LtH9+KM/eRIeykED1qBlj8cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msiW2w6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msiW2w6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0AF3C32786
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 19:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713296962;
	bh=23YJYSWxizyFOQaj9gDC5BOiPy36Brewj8DwUhPCLlg=;
	h=To:Subject:From:Date:From;
	b=msiW2w6JvC/zhfmNbEVvmLR9WTM3mqJ1aUKBj7Ezq3gCdwhsuyD0QiBqhbUrK97Os
	 JTuVgxOIYDqqS3VRAOlJ9DNDuZwY2DhR3gHY9Xix3ndU30g5DsiJVOi1j2OqNhI2FB
	 3ot4F1vWqEeWcTX8PDZIFIl7RPTkDrh3+2XfWU4Y0ITu++MyOubZkt8cvIhmcO974d
	 ZEtnvsEtzuyvTZBMWjbc0U4HAc3FCGNyP9ZxL8PhQPP1FQOPHPY84nTleCIz50QRGI
	 xrPlwpXPII6FuyBydweOB+LYWb/kXImLAJ9ylrooxvBTQ4OgMd+UckgFEgkkOrJRnR
	 mOpebHKsLXlqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA62AC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 19:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171329696281.17799.7754014748334461532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66906c580a45cd05186afcdfb893990613559c172f5405311b33deb6c037116a
Date: Tue, 16 Apr 2024 19:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713296962
