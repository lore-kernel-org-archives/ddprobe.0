Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2D19463
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732813554; cv=none; b=LGCsT5+jlqeOh2i8asqwjpXmeJwoWKHeodK2yMqxZqySfwqr/lZ7SVFefjquyGMESyXYdlKFkpFGsEx5I5C3NdAdgYJz/8z6ifcG7oNaeElVFpLVW++/bGU23OxzbYfdhjg6zgP7fdfHctagKn2SxgWlfzg1kCAKrd4aB5QImew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732813554; c=relaxed/simple;
	bh=FEaTjs8+yOetrQZqAHUkeejuoIKgTmDoV0uLMKmoiRg=;
	h=To:Subject:From:Message-Id:Date; b=dADj8BmMlSOt7oOATrBv++izuN+hIrSQhmse4d3iYWGCopywA2KmTo+7BDGguKhUgyqm3zsCnN3Zmjy4i/RnNgNY7JAkIKWTfXfZufp1ZR2vh8BE3XhjEGFHblyI3J9csbbQDTWfDUrDxDF1UFR6KSWKXPr7qdGFIoHvtajETLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaIAOnLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaIAOnLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92EEC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732813553;
	bh=FEaTjs8+yOetrQZqAHUkeejuoIKgTmDoV0uLMKmoiRg=;
	h=To:Subject:From:Date:From;
	b=NaIAOnLdLVKAHgDWieUQgbXQ52s/RndHlX4u9p/b+porhyV1eDL4sqS7Xn5TvdEi5
	 QWqqNHaxbj4Q9/m+3w5ezyauQatTyAlvsN1KpA7qdOpv5gef1vk6b2JFA1Gg3FMnOA
	 PuaGyyRTOJyzZEmGZARzPS5OIZvZhdEZf/bYHJSJOJA6+c4llwOQv6f+ZqAhP2n9d/
	 qUX25qczCc6hXh/9yek0W575/yFVQkiiuoQ9Fg1w95FRGx6OUfcDjWNSvEFsekVpOl
	 5h+qCuVM00SC3mXzpwXwh3URT1SO7mkMku5Zi/XwPHxr7cSsLSk9GwX87JvK16TAmU
	 7IXnS83HiEwZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9858ED70DE6
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173281355360.9024.4949631924938062326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 161c073e4132c9ac6008b94dce534119097d565f7abb18b28d23a325b2a5d088
Date: Thu, 28 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732813553
