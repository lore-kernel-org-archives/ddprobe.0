Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E150221FD6
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752309594; cv=none; b=L7o/a51ipFso/lNGfUV9mXXYTcz+lghleayocaVUDrjOWa8PrNAtwEKzvd4lM4BqTgiXbB6bc8INsoWTeCf3MFBq7bD+lGw5l5e4DwvoUugA3YIDzOfS88MxiqY6Jd4+X6eKwn4pVTebzRJylDQm2w+jbXOysf9zrVeIDi82eFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752309594; c=relaxed/simple;
	bh=nKT3xJQAZqLkY3psp2KSkKxIhQJ+3GaYSC6FckC2rr0=;
	h=To:Subject:From:Message-Id:Date; b=HotzAA/2Hl/vXsnE2br+CV49OxNNQYOjXZCfnkEbwXhB+H2oH/sbn4zKvBD8jSWuZSfDveKlgVxwAC0eoN5benG1HywFDWIa6TE9v+SdC1EP8/DdOqwSZnO2pNCObonSYOmyUKtG3P3QrOtHF6lzE4Brm7W7a1pn8tsLxSjJZ2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWzyiS/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWzyiS/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11A2C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752309593;
	bh=nKT3xJQAZqLkY3psp2KSkKxIhQJ+3GaYSC6FckC2rr0=;
	h=To:Subject:From:Date:From;
	b=rWzyiS/c8dS2KaAJvV51ioNwU+dz/gcw3Zxm+LTrSIKSd9554wUQGsYGWELKfMqgh
	 IqDg/Z++qJKHy1SngECWkBV8GeNQbfCcuUzQ0MtAKPdEHfrAHVlFhR7fKcbxkSOIgU
	 lzoGunYZvwuxKks4Xmlyl7fNCqaK/0T3kj7IGbr7FoUdfwc0FBcNdJQN7KlEriKRvX
	 QZzJwlO5egTVlZHxrfz/gEBKFL1OiDdtXxTtyiyeL6Y0oPj7Kzbq7HVMPmXo9ncKgw
	 SciyT+9gUsvHtocWq/EYXPB/x/W0g3L8aD3LYHjI72M4fvHMXalue7h1xPN0SaYzoT
	 N5Wlo9eDoZsIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91435C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175230959357.715.16573889101921612980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b369ad41b95487c8f72f95a8915f8bd3ebc54ddfd6fc634b0a29510299b305c0
Date: Sat, 12 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752309593
