Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BF61D2226
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729065954; cv=none; b=a3s60v3v1HaErU1bexEsyFaJ6djkJ/DST/pD7HtSD/jk8h7MYDFJx6N7qsvorqx8F/Lo2+E35kB3iRJvyZ6P8IpIVrZLudQKp/26aiUuKV73RZYKmQxWBRcHPBDLZDx6ixI8qZ0OQPAUQMUw6c4YT649allXvo5jHvWIyOOdwfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729065954; c=relaxed/simple;
	bh=/wgrS8Ji7CNAHyijlDcmiFF+TKzL7DN9Tasn91pk53w=;
	h=To:Subject:From:Message-Id:Date; b=B3hHCCl/wdIf1arTpS7tf5oXLCnRQonhF/O7fb5Ex02DpNOcIR0kO3O+tgiqcjWjrUoDGFQ9seEH1oALjYJdHDFAoiIjiWA9r8PNtLZ1vdmkx0O27o4RstBdeR0eUgRyr1k6TdxNbptiGddHK0q//0HvIbsYxcANVYgctiHtapg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2eCUPrJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2eCUPrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60FBC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729065953;
	bh=/wgrS8Ji7CNAHyijlDcmiFF+TKzL7DN9Tasn91pk53w=;
	h=To:Subject:From:Date:From;
	b=n2eCUPrJ9JCR8D7/ka4xH5e3ygqDWHJaS1lBoDG3Gbpihdwcr4gLW4k/JyS9oZEFJ
	 xnbxfWcqD1/yQK38bfOwtIN97rD5tOiEchbFOUa9h+uWR4mrW3tNC4sn1+OBL+Br4b
	 e9Q4YRjC4ieR81afSK9nlZfG3LSDFzYqsaALpzySrVUI+N55EXUU/xXDHQS3Vpxrwx
	 K2WUXfW2XrKPrxwC4TPmwdPuOeN1u//FgNb3+MFSBMOTglx9imlgI8t4vvaudg5yUu
	 PTRgkiHR2OO50pX+YdjzJ8LHo4VixZiCevtbjy6s01B8ka1ppNBuoAXph4FQb2hK+j
	 cC7t/5Ue2jLgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97849D1AD20
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172906595360.12476.9093471060944895015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85a97695eecfd3111f28347cd70004ad445980d1fba1c41bb56da8a05690dcd
Date: Wed, 16 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729065953
