Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B8A198A25
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736685353; cv=none; b=BR0txZbLUKt1UNJfEPHgviH9QcgP638cc8aYZHssE+ummiZgnMsiRBvrOlwMqSc+YlcSyYSYD7AgeEcof15Cv45m0LkE5rG07pofJ3Ej4RbRiE/sERmBr9UVHL73OIj0fHZF+cqCKYxJSjdbWVwSxUT3xbYxb+kqgnkYeoVQwOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736685353; c=relaxed/simple;
	bh=O5PoWr6xCo07Me7ql9e+vqHsN7n0qqIoXlMrXscZb6c=;
	h=To:Subject:From:Message-Id:Date; b=r3rs29G1p6HhOcGXHesx3HQRF5hfoOjooUqkPestLN6JKDeHaRC4l+4XLuP2Eg9tIjeVlwzqsKPcUNJg95PPY1/e6rRYj/olA9LNRv6bJzkM0ctbDaTOdBFee57f67753tQoid1IPc9MzwOrKkxZnAxJfLoqLf2GTtRu4ue3NDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCWpagqx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCWpagqx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B34C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736685353;
	bh=O5PoWr6xCo07Me7ql9e+vqHsN7n0qqIoXlMrXscZb6c=;
	h=To:Subject:From:Date:From;
	b=pCWpagqxpWCmLAWoBs1jsVFFIsxeC4w6at9zXKosYfbxXWXP3Bu1um2oq7rGhor9m
	 nUvPPBEcjxuvEcaBC8uP6QmSHfb6v1VFvsUxGXsHXb8ctOoESYmBK38DD4HyuGMKSn
	 L8llcQ773drsRyMmr7CBlkYXPV7ff53eLe3e5zUOlDw7RqFzVr0Ll988LG2qoxWbqC
	 2aPizvUV4Pk7WDFvMxcut62Fj97v1NCa/KF6ni1jfn+HsDDCtEHw33HSjjkgmeFEvI
	 BMV31bKdDvnjx1CyItj6KWOsoLwW8mEGzsgBUuOSW6/L3afHr9cKJ0EQOzuL77vTlM
	 Vofm2b8H4Bazg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931C8E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173668535359.28856.8643640319317424221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae9f50e1dba004d6ec7c4ddfec244855a320889b79f1a37a1ab9eb9cede0dcd
Date: Sun, 12 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736685353
