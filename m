Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364364F218
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731643554; cv=none; b=k3hN6kfRbWYPMrkpVwOuyNf3PSSTdAfgKmvH5iaeA93/w0cFIxaJv2sq0OdYPzcAwFYbwDE8EHKe9UTa364UgumNJiEfIdlOCaL6Fi55+n8tcIvfhRIn5INMxVDhBU32e7Q/cj7ITIWodizQ333NitQKhYeRdAtJLD2g5m702Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731643554; c=relaxed/simple;
	bh=jwoojpCyM4oHmkDFWBiFzIZoi3kA5zwOelFeXQ2oCok=;
	h=To:Subject:From:Message-Id:Date; b=sYAYM8CalasF5pvCfNxpAFLViEInOrUIWLngZewtmQMLz9bJ9s/AM+hVM6H3WqL7UK5RxSoFvOcVeyMyrZTjeweU2w9LtyTlenFJLPfLnfbDFIowgN6cAeh10NTtL6gF32Te2thIVrSQWaGr8tPIqAJtCjaJqqosgvA/LOsGnYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBsi32NK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBsi32NK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B838DC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731643553;
	bh=jwoojpCyM4oHmkDFWBiFzIZoi3kA5zwOelFeXQ2oCok=;
	h=To:Subject:From:Date:From;
	b=bBsi32NK+b7sud+rHWQiS7C7zRTDB75VOKA33LmeNuvz5a7UgtlsyxJW/UuBiLTIk
	 L4agwKv8ovaAzKe0gGsZ+CTAkujcqVxRFZFe4GBW/9OP8NagO3pBUyrbkfqYv9Tack
	 adFNg5A/BtckRdRvXiezbhsW/SqGG4reFXdPP33Dp8T9PM0geLPBPZb8nCTb3Fzkgf
	 Qi51PFS5X1DbMp4RgTgx8ZzqHuwbQehZnu4WJVrqjXvytW+7fYIc1s4kZLzDnb48na
	 hyfLoOU8sgUfl7uYAVkgrCf3s2k3ZkazzAAXwJnsg3ci5pgI8ZjBLc1mBY7Skwre3C
	 Apor5bv4nbPIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E572D6DDCC
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173164355361.9874.15802372817738060688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427ff75d511bccc494c97b3c7bd5f186b2c92cd7448a8b5668b0a624a5394667
Date: Fri, 15 Nov 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731643553
