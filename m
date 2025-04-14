Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461B01ACEDA
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744663794; cv=none; b=l7ES6hNxP0NNDFiU3i3YzJ6x3k+Y9jqIszeYe6KZPOVCp4y9AatuIc6SUlCP95nBE8yBHYCuwbsTmfHs3ezHhGBH8CjxG69lDwAOWoMMLMuQmLcXqMutWnlnktEe22kw8GHDEg/7PlLvRy82NpV3C+ga9p/HJYD3+OZUW9eoiRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744663794; c=relaxed/simple;
	bh=mX8NRRpFKWKz6FOuyDTqGRuzdY+Sg/xhz5OgNmosVHc=;
	h=To:Subject:From:Message-Id:Date; b=MeX8w77/oviQVPq1NvEuUHYJ7+noIR39R/boNLITg2EP/BWI81Djq2Ak76RRNheNQQcE2bUy9EMCzdeRxq6Qwp7yyeXtZOwQD+xmOF3Tp4n4LYnF6v3fuYNisYP1XljuBR2Uay6+92UsZm1gCcVIrzCny5IoxAdIn2HEyOmd5Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYi4Dl7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYi4Dl7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A978AC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744663793;
	bh=mX8NRRpFKWKz6FOuyDTqGRuzdY+Sg/xhz5OgNmosVHc=;
	h=To:Subject:From:Date:From;
	b=IYi4Dl7nBg8RJUYsbz0Zcd6LNoTiE+agm2Lynta8i3K+GUJ8ZX+RFht2++rR27h9p
	 NV9UqLuPkcRkEMZbmD2WQLIors8qWxO0iXXnkmD7IWTX2YmEQBEDgU9eo8TCVOT9We
	 P21VjoIyH0C2j7AzBrqE1HhXxc79oLRrknIPKb3ODbTzX+0l73kNr7qpQZwkIZXjWb
	 HVL5Au93Txvh0KirXKWbpFuVFIZgkwygjmN12UDnUTj3iVm5t/9fvd+CjNtrrRXnws
	 ym+Y75xrkGeV/sS65xB6JUiIAbDy0qsTanmKNRDBdrujHErzQzI5WJyVNOJR9hhfIr
	 PoITquZ/0y1mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F135C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174466379357.937.11072177097228081637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7b0182c1a958db78ab9491fa1b6d359506c7a0accf418a4e758186c00e358e
Date: Mon, 14 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744663793
