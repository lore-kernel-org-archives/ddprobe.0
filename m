Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F5422339
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764188574; cv=none; b=XGDTa2XH1T2i1U/IskmiH9y3NWfOCs/asDwQBvnQqLvAHCLFEmJD/VHlx25azjJQupGdr8REOggoWAXv8I+58JKWCvIqfQ1XU+tXMr/ha04TiQfUp/L2JF3/ScHrUGhZGBlNx05Ak0VgQ3pXYMhvpnYXpGcLRnknGeYe7utjmBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764188574; c=relaxed/simple;
	bh=FqpGS/q/wC56cKCbEvTg73UToAr/TS/zpLIFIM3CqK8=;
	h=To:Subject:From:Message-Id:Date; b=CqyRMjk2ykvgzJpgRuCkf0TyD5EGd4U1GjaCyiUskq0wpZOH/vb2mOdpLUcu1w6ttbBx/5E3IOZBEPS40tMcT3t2a47xrWqlPK1n3OtsjaLb4U8xic5v8Bt9iPJLqfTO4xeqa4+BE7h91zL+rlBCU3MhDSWwFrtxDna4/oMQCME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQ1dA1z5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQ1dA1z5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7753C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764188573;
	bh=FqpGS/q/wC56cKCbEvTg73UToAr/TS/zpLIFIM3CqK8=;
	h=To:Subject:From:Date:From;
	b=GQ1dA1z5I3ZfneorY9pqAQK62jK7ES9j+yks4CdPwzGS565dCRWIP2picx/OODzmY
	 nEgAcaC3ooJgagJkkEsjjVVxbL1FVlyBfoNzWem52l30xJ4dISCl5dP+BOVkENfoUU
	 bXEv/zqJTilV3tCD3PjgVcH8h24DR0AUdDJYVsc74UgqebYfeDsGG50yeYc5fuzi3B
	 H7isA31TWft2WIRE5zW5+d9k6Slc/FBS2mnZoYm/UHh829p9pm9g4gb0cfWhdH2y3c
	 eXmorbwCnzxJPaKNR56C4iE2OCLF2boW9TIf1cXrGuYYCn49vNjOJtj/likg5wu79r
	 p7rh2T+8pAgdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93824D11196
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418857359.1716.7264576407323738131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed16c5c40decb5e52bcf25d681876e1c99334b3335a449e0b3dc30bf0d98e58
Date: Wed, 26 Nov 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764188573
