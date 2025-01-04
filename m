Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2EC1C5F1F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736003754; cv=none; b=LDhrtX9RXH+cfedExxZVAh6GkP5eTQywk4D/tVE0XbFxT0BO3WcHgy1idjqkXzh2/dRTPbxgQS2/zJuk4wXRbxvJFCUTFE7KlGEPBs1PhpzRrrtzAMjaoC7EJ4o+um1ETiC5GG338SUQR3BRnacrD08CRbPN0nBGERdJrrgTDk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736003754; c=relaxed/simple;
	bh=hR5H5l8GlnFNG5gR8UofibDkv+Dnj1F/rS6YzZydr34=;
	h=To:Subject:From:Message-Id:Date; b=bXin5ztG6VvwwJTjDDi4m/GMgfPBpzF0D4fzUR/6tfdGdzahjKrSE4eAwYcE5ZGQ9MOd3e/oonQTTI9exU1O45KA1f5/MHnqWPNLPSmbyQRupkR9k50OaSa2IxzClwouL14phQ2t/FN3bXqWgfmNp0gy8nJ+K+vPqlMXy0jqDP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bETWtc50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bETWtc50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02E6C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736003753;
	bh=hR5H5l8GlnFNG5gR8UofibDkv+Dnj1F/rS6YzZydr34=;
	h=To:Subject:From:Date:From;
	b=bETWtc50fR414d+O4nf/G/DAVMlJ3fnbN5n5Vw2hWm7bm/U3Xzg1HmX5EcCJ9LHDW
	 1/CtqkXubc71vRVoxXpGKOc+ZusRWNu+zqlgeqvlMhcV1hUpg8k5P6A93gvjkW0sYp
	 DtMDd4hd0d8Tprxm0lmpFRSIlPKL+NEL7jv7DBmkHZAhi3z0DKNbiCCYqS0fJZvCvw
	 Dflo86nFWfw8Rf7uE11hI903Yhx2xOkS+W70wkRxRXleSXBZR62wY1jGdJCWfJM9NM
	 bztHHEj21eloImv+wA/u/g4ucmI2YRe7nWPOPBY0ORjAyPpPiP/qxbSALgvz71oGKS
	 wJ7vV6VjKf1jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E85E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173600375364.1376.1702561415627657238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 388a656eb72f266907d3e883db95ec97a8c1de069deae557254ba2fccd886187
Date: Sat, 04 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736003753
