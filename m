Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3140F23B0
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760840994; cv=none; b=ineQmMeFK4Nh0ADFBOis2fUsp/7und78DwPdC6x4T+QlJ2PAVVLUVjmFQFMn1hHrSEnAkoLqQEw+1iyArLA4gCLjJp6WAaCETjwBdR0FXzY9HU9RV9dY3bBPsrIVsBzXtdsf9fje7r5wOjHeaNOUK0P11Dwb2BZP5DTDQy+ZY3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760840994; c=relaxed/simple;
	bh=0pHmBFZtTzrUKz00eXP7h16JTL0GvsbVoOapG1AsDpY=;
	h=To:Subject:From:Message-Id:Date; b=OIYQg5zLNKrvzGVJV8L+2Nxs+84ktnRgETpchrUMG70u+ao/WUuQsu4C2VX6sb1zlBqerzPb2krPiWnm2uku+8pbvcUo2kv8biD6VBho3MpZZ7y2iUxCTJqSLCNi+M30LSAjxrZBaIsaoK6Z30dIp1dHRBez1HDSeEGQLX4I1Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dm1kFZ3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dm1kFZ3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E2DC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760840993;
	bh=0pHmBFZtTzrUKz00eXP7h16JTL0GvsbVoOapG1AsDpY=;
	h=To:Subject:From:Date:From;
	b=Dm1kFZ3QjLCxO5b0VqaMVDQjjYE8oBS5LMCsidtQ5fGqp4rEsStgh96C7qGIAbB5u
	 ZIOAA3FvdbMgB1Nm3etCjpiud+WfcPc/i9b0CHKEs14qi4ImzA7VJQv3tmGuc9+0OT
	 HSTBwVNX51+Eo/GaoBe+cJqwsCdapF4h13QkGh5gkvzWateHUSMKvq+KdPE/aU2sTE
	 xtC3U69ifG8l0YAdbVtwyhs4AM/YRiIjVrJDRfjfEYnTZVKahVkudFxAgxq4Ee8pV0
	 9mNrTr61uNYg5o4eNtQefSLTJWNFxM/ftrlFVbXu53SlL3CeP/asadrw3v8/I57UiL
	 1DdGTcyKz5yBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95987CCD193
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176084099357.11054.16474351876336661143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5cdd0f4575de0fc70e4ccc8e7147f05e3338d7c33c63e3d0b57723fba479433
Date: Sun, 19 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760840993
