Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2420027F19B
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762415394; cv=none; b=N+J0ezuHCCbuOSHDb0dfinYV/0xyBkCQ4BT4vHCAmAgdCl/0r+oM6MsXU2tswrTZnnraghHAg0SIm33WjEbk9q7p6v+WNqO0/PLvD8H6cyqY6ODCZpyWsKov78+aISw5UVbPLp/MjAy7sTEwFWIUGM6Ffluh5k7a5aou3X2hleY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762415394; c=relaxed/simple;
	bh=Tel7Nb8766HIxBrsA4k8nrYG1avsYvTw/dCOjAC08XU=;
	h=To:Subject:From:Message-Id:Date; b=CNDe/FW00iqePTOqS0X+WkJ6Rj8/HPrXgh+fCgtGOy5uvXrRPOqJ6KnK7GpiVIhN9USgNPC7v/4kAlrcG0/m3arE+oU37rLRHz9N18KGA8Ge+/JNOVUbl+YnasEQh8LaTHdmcWKGIC0eN0v4BOdUkPm+k61hAbyA96Fx68IIb+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZlqhcb7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZlqhcb7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5448C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762415393;
	bh=Tel7Nb8766HIxBrsA4k8nrYG1avsYvTw/dCOjAC08XU=;
	h=To:Subject:From:Date:From;
	b=cZlqhcb7BwF9tPl3mr16fREoHw9kEbpCPcPLeElW37/4Knf/xE4ehWknkSAvASizk
	 qG4wK9HZylVXT5PmuDSBGnCdEL3BXlil0P434xNW8An6+tllwx2lBRDmeIAPTfcR3W
	 60CYugBFHG51hG7/FZgLsji/Nb/IQFU3IR7B17CHlwkzqd8/zmtqMtUDfraQFIeqTV
	 Z/6dOMBCI0kgod2UdtU4aafQfWE01rYEDrO0KtZwN+/3s52xeaaNY8hd/TA3CdJ+uh
	 r5Mu9OTvIr8bGYLmR8zO6nyGokSRp4s96hFd64Rok+YC5AYii6MyfdewgIQ5eCX664
	 xmaTbDFvA4cTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9360DCCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176241539359.4190.317823815292443356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31512be2f75e49b734fe18a713eeb9ff2fc8d4b84707bf7e7529f37a3589a1db
Date: Thu, 06 Nov 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762415393
