Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF7C4317D
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779687154; cv=none; b=hh8Y8MG6Ma/0m5xrb2lKbpo1UUmwd35oxXx8yw29KSdBa/zLxOzNFte8A1yWolFE8V6hmPPpA7ZE9JTwdc8tq1nn3XdlIWX+gpCs6+fbJRGQvjKmhcIlxuF6KCf3PpX9FyxEO4N2Pl1HCKJ0dTieiNYV3kbrTwgZF+v9UofbTxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779687154; c=relaxed/simple;
	bh=WX5+S/x51aL5hMywhnUgjFa5zG5+J2UaP/PjMplHtpM=;
	h=To:Subject:From:Message-Id:Date; b=mb3WK71xu/kIHREKFiHxmVhoWyRMS4TxWKQUpc25844+3SpL/ilKGcpF3raibnSgJ16bx3kTytDy0p8zzixBwtoZvjf9u4AwxvPB44b6sMhlQk7+wO0UEm4zY0uceNo4rWkwilxTrVX1Eyxabkm472gcOsKbHgSdFUBUbHGM1qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8NGqwyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8NGqwyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4761C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779687153;
	bh=WX5+S/x51aL5hMywhnUgjFa5zG5+J2UaP/PjMplHtpM=;
	h=To:Subject:From:Date:From;
	b=Q8NGqwyL5DoRw7Tpk2cMPlwgeNY76I0kELHBE+q77ttmdDS5+OO5q3iCOs9jrUKeb
	 FKSDJr4gI9qJnLSlKK0KstWUqUKQMt1dUPfuN2zmOuQfxANZfJjZUVyw3o1ZqfCL2z
	 T+0Ne310n80tkJeyohSMfciN78as3+bWx5sRs15guBua0NuFnsD6PtXGmY6CYbTc2n
	 T+dEzzqewkH70M9Hk7sA4tO93tinaBqxQ9MzvKwzAaBn0LwEuv5+cIFnWAR2s+7/Pb
	 /z9WkrOHVkeIlcyt6wKm1KbqlDLHSB1B1hNLZCfk02APuNeDwgzR8IJAKvAj1O6ug8
	 88PeVVtva26yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB1ACD5BBF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177968715368.29024.13634940708723128398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c628f6c1d5008d8f5dfa75907250a7dc60ee0093d52e5e73d56b56ee3a75ee
Date: Mon, 25 May 2026 05:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779687153
