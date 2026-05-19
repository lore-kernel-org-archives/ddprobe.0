Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F7D3438B7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779234034; cv=none; b=AzO2n84j+lnaQzw+cMjTVIPcmSL74lEwui5JzsPxmykc1pX/ie6IyGwfYrsjwDf9XIWQYCsVXGnTOg3lXPrnLJHFFm8l5OsS1Gwm1pl4/sFiKWSLA9JFGRe0MCwzOoU2A8mV3rjCuA+iXuiPc7R5yOorl7hCMsUwDWlbFFudCCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779234034; c=relaxed/simple;
	bh=I8a6LvDQlx9y4wJpQZ+id8orwoPi9+bFYq3RMdQTJIg=;
	h=To:Subject:From:Message-Id:Date; b=QsIkV2Six7lR1FypvyrenGuCZ8rEXBWFKIdUZGg/APBteXllmbyNPXFYRu+++WOl2RX/N5mXDus951HVezWGlG9Kp1JSADpjALUpqGi5a5ZCeIuN/zdBXkazxZ8MBU4DyTbTAbypOCoCRaq+XEw+LihoyLJMKSOEcFJElhQDrag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUK0V4Sc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUK0V4Sc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C294DC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779234033;
	bh=I8a6LvDQlx9y4wJpQZ+id8orwoPi9+bFYq3RMdQTJIg=;
	h=To:Subject:From:Date:From;
	b=OUK0V4SchgNxvcHy6SKQ46knc5P4QsHZKNgqlZvKau3XZYXMTtt9WIaXnDvrhWIdX
	 WV9j5FEDMavnTBC9ARS6zlR6Whtq0nNFLRBj0Ysu6yBcXCwWU5Jn3SAFYqVcPJz72Y
	 gOYMXIDuYZyxMDzRsp9mNEkLiBlk+ykGTlU85XeqExztrPd4Vu0qNd6wSUFDO6rcqn
	 q8VY9rWP4acHRD/wavp5Z2be+wluWI6ZwuNYYCH5M1YXIy/amZyy63MhbezILNxhd6
	 je1L6+crjPGWPmC54d8qayCr3lUcjhZilT45Vtzn7rOoR9KDWNgNNcO5gI+4H+WrBX
	 J9MEIx+NZCX1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8B3CD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177923403368.9383.10574507019759397666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29929ed070fe165b34dc04edfde777cde305db65b6ad606fa8a1f53e7fe4fd01
Date: Tue, 19 May 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779234033
