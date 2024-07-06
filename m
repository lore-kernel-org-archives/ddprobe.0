Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0211013AD3F
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720285583; cv=none; b=VtrGuENUYZeJwM9Rlm+lRooT//pdfdS1moDN+8L7wS3qlEd4uGfStWatBTeN/9iQiBAiqucK5SuTGq45zSd259rsZVUejA9XtdBf2dGhNUmZ3i6onpx36stTBm9bW0WHmhSw/U7Psuv+x1doAXaZkrdfaSW9P3mwRTYMKEm+VWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720285583; c=relaxed/simple;
	bh=CO8kI128leSMHInGRl20VufvxhgXvfAneAAUlAsmMBI=;
	h=To:Subject:From:Message-Id:Date; b=lPCCBV7jnjaERGxpdMoBs95t2hwxjoTH6q9wPmFmxRV+M3lGOONUZgAs/8BIMIcvF0nyt/u1EB25m3ta/fBo+Jxmk8BiMDSFj1HbXmSWRSCNXMZ6ftqAA/tRCU1mVxntGQUVCbcLKNQSVg2WdQhTbVE83wUZEpelzzs1HlQ2SA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sY7jQHEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sY7jQHEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5344C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720285582;
	bh=CO8kI128leSMHInGRl20VufvxhgXvfAneAAUlAsmMBI=;
	h=To:Subject:From:Date:From;
	b=sY7jQHEOHTubCRAQb/pMjVrFKaAxc5fviSwQbURmVfe/w664HjeWxvudNZs2yASpD
	 CM7d7vbKbI42Dz+5+cdtyp5Vf2G5NloIXdThagtjcyLVCr9sLwE9w0NZkXSCnsWEMM
	 4eiZ9kc+QiBMRJRV9n3ZiY7s/bYi6bW/2WpM6IM0gem7cyOfQJ9g7CubcASYBGuubi
	 LkRi/O1w48bvrHOmpCDWhElrZ7emjhCDABX/9oTj3LQpcdlCn+oLiwdFkgWf0jpN5C
	 FN1mUW1Yyx/aaY6bRj/upvROvWfuPVBXYvkW90CqS1jaeoAnP+jchcgBPeStnsG9y1
	 fiFFup4xZiLBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39B9C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028558277.20042.5250234886046107164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c23708d1df1f075834778fa813b43bbf47b2139c53defc97b231e300ef6ccb
Date: Sat, 06 Jul 2024 17:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720285582
