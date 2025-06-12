Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE481CF7AF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749731394; cv=none; b=DYI6YFPH1HFvK0PB/a8+AIOhZVnxMwiqf9ruoVW1OTa2O7jmL9/bPqWEiWG8+4OtMg+J4vyQjQUcW8YOzd6aBZQdvGa+RhRoLdrgSFGBM8bMY/myA4ZN6drHfPmS3RskkEDWSiiMd7lkfX9fjy8TgxZDoYfxaiHEZI5EqZ62mVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749731394; c=relaxed/simple;
	bh=32TkGu3zTbZU50TQ+4Y+2oZ+7mBFlrsV/F7VyQiMbN8=;
	h=To:Subject:From:Message-Id:Date; b=l9Cdl21oD2t0gwHfivejmQN8XEsZqTfUwk6QeluiwRRZxjAaKJ0xeVqA4878E/uNxxj37pZhMgLvNE1rId9H8d+OwN1tpnVSQx5jgtRbZPMaSNa6uhT9neTDNVQrOX8trLaC9S4vXI8nOV92bJhCkELpy9rbgIxCyvGMUMETz4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mb+/jI4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mb+/jI4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2224C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749731393;
	bh=32TkGu3zTbZU50TQ+4Y+2oZ+7mBFlrsV/F7VyQiMbN8=;
	h=To:Subject:From:Date:From;
	b=mb+/jI4tiy0F/0f8wHWvppxR5HOH7k/ts+jAr599vWJ3hVTj4K6tIPGywb1Ul5tRO
	 ORa2jLhrGP9yIeUO815jKyFBCw3BEn3wOS8nnEzDBlPSdkqDj/D3SpJoxRWdtLtS0Z
	 2gZojRl45h4YeaANGoxeQsM4P/wow7dOhCITQIyP57rffli4b9EBxUMLLem6tjVO34
	 xewdTHbtQHgJ2WRbEoNTSV4AE9UAD2iD18BmEyicwaFyRMyEvu/iuy8B6HcLJ/OGgy
	 eWhC+JtMm5rXJi+YsFhbkG78PxGY63RzN/et+pVWNqBnNrmCqELsY0gHEPg0pb/14r
	 /FpW+8bQWERHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB6DC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973139358.16917.2817740148828436198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433ba92bdaf22e10aa8c87446b09664505d7d85de6df63bbf47939acb7475b0b
Date: Thu, 12 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749731393
