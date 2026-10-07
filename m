Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2BF3A0E88
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791409234; cv=none; b=OJGMOGXXK8Q1QyXkHmOs3jvmC4lCzHfLNV+CBjj0loPnMBhA/fRWuMfSWxNxgrjNfMg2dEjef7G2jBl2OE1CVd2xc/XR38flb+oCbQtL1wGL7oiunQ1uAmzjurecrYiMJlP+a/VOoIvsFmmYuNfxlBh8WjVEcWH/scaFaMjEMgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791409234; c=relaxed/simple;
	bh=PuvcF/JTpULjiU/AB42OBffYuVx8FeiKEDty+2ixL6I=;
	h=To:Subject:From:Message-Id:Date; b=NvUwMR9fdtzcrBDgPC7sN981oBL9U+ZV1t5omxqpdT8v6jds+ljI1PgE+WeekqqGxFrc+5r9e2SD8W7EK00tKRRL9153BnuUTQBqBEPkv99h243aP9x87oMpJUHlhEeo53Lx8ci3ksm4agNGhl6zDZITxSVDGv3iAp/BpPENGzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RigxToih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RigxToih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB14EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791409233;
	bh=PuvcF/JTpULjiU/AB42OBffYuVx8FeiKEDty+2ixL6I=;
	h=To:Subject:From:Date:From;
	b=RigxToihWAGxAFUfi9IX4ZtCJsdxrklSypC1z9QyYBetCRWj+wn6nyJCZXaBbJeFm
	 yUOhZNHDu0MplcOeezS8z0GeRyl14dP4sToPgM5d6xQB8BCZyIfYVLkRoFR7rsjJNQ
	 jLPjBGRTHcIQ02EF941KqiqfIfZYBppahLakQAT5u7Pmlf/OiVvnUJdYLWDQO6ImKv
	 WEI3yJfgDHLkDFyWp+He2Ynk+Lo63x9hGtE93Btfe/d9b7XkBCQoeRKqc6N6dSyHGS
	 GrsCXe7bhrcFhAu4IrZmi/+Xs3vCLVU4QdgjAqSNeyH+YqyVvBIpDPWEb55ZjLutxT
	 WfmSFB/UjIYTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AE0CA6004
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140923368.24391.10916727512027497551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0bbab469b74e052433409a8b034e9eca1e66c6077196d8b622f5d0a08800b68
Date: Wed, 07 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791409233
