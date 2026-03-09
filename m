Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8BA39B490
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773073494; cv=none; b=STSCApLoM/tX4C/1X37/1OR2yiE2U5QlxhwoXDKyWzSgomgyOffDjhlPJM26esu/WPqEKzv5cb9qqKTGOsb64oldCh3hxwC54dp+f3PqSCr6AObVpbIEMymC/6x4w6JdKawr5gRynLkZ+f/wevxi6Z6mz6+6AmK8yppA5sMrD0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773073494; c=relaxed/simple;
	bh=8zzhlAo8A+k2Doxt6BN3qdbosilC689KnHLu+eUozPA=;
	h=To:Subject:From:Message-Id:Date; b=RK2uPP64jH8wUN7fgqPU7a8HOIRYuJ643EBNK/cLytSiYy/zdKTZOCMd3ncHJWPbOb/ggLXVUWiWo3PnNL6KOdgTziV1donNh0f9SoEuLlgkNs17/iwjjDSGYVkK1GKXhp4fAB4J+dFp4a4e4Kn7oz470uiweCpOU93txdbgDVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRD+ykPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRD+ykPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BC1C2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773073493;
	bh=8zzhlAo8A+k2Doxt6BN3qdbosilC689KnHLu+eUozPA=;
	h=To:Subject:From:Date:From;
	b=gRD+ykPwF1bTgrzoYmpeAWjIuwSXH7Rc0ZsbcTcTKnlowy3bYZMQHjAO/DoRmh2PN
	 TprbkzX/rBA7IqqFuLUp8J7svnPmQvU3NPMcdZ0WElfWZmpFtsVfs1ctxvoTT+WWjP
	 q0+3TOoQiPDWPbSBTH3F7TQBx3vHqwa2MPcTnpTXPVPcV+xnonCTmTrS1yWqwa5S+i
	 Jh4jRnOFCuwYCKUgCVycMAHUbV+xkxy9z0BRHxtA0qZ5oCUsFsPN6DNBWf8m731VpR
	 bKE6t+1FYQPg+CRJh+L1EphR0O206ExWkyLNQAess/Z497e7uiGXVyPxSgFSPC+tZF
	 IM4iIuRAS+z2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93698F41807
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177307349359.9895.12873135430223003050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f68741e514590be5d12b786a49838711b7d0089f23a1f009089ae3f5f24239
Date: Mon, 09 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773073493
