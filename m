Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C5A19E968
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768606434; cv=none; b=THcccLtFJHAqlINYei/EdBFOtS0te8KVa6Pt9OCjl3x/PJb+hMw7kEhm4/swnzTCrShuqRPT4Ah0H8A0+A0fS90w7Sr7vpjp8vt4nO3ayCnKoUqGaxJkGd8U4c9wmfuCaU8GWi7iurncxZYHUnKgecHsOW6kHyES5Rk0a/wCYsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768606434; c=relaxed/simple;
	bh=cS2TCm70Xo7hPr/tJNCZ2sm6PGgvtMgRB+hKB4JnxRg=;
	h=To:Subject:From:Message-Id:Date; b=IRJ6FLx91/CB+ppvSqQTdd6Tmq+5LYQ2QcXVw+q9UGvqfSqX7EG5+U1T8/25DR+x4nHEE4rFs6ftbXWVJzRjnQYFdh/YxKvCQFjwYa968nDsJkg3iLw3GP5lrwTgArgAbT39KPRECV24bJhO97HxXJzuADLmG7GX8yFwhmWEG4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIjlnr+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIjlnr+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E5EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768606433;
	bh=cS2TCm70Xo7hPr/tJNCZ2sm6PGgvtMgRB+hKB4JnxRg=;
	h=To:Subject:From:Date:From;
	b=rIjlnr+ssHu+InDkSRHCtVCiTbvbizo2EX2lVX2puhevAz1MbgX1gesN/jGIq3Ch8
	 wD/rijeSj6WuFVZePU1sHpnIhKNzwjKer5LaEJQuIlDzfh7KiZ14SqiMUA5kOPrtei
	 w6WkcN8DxEPxFJWN68IzeRCUq5FdBdS/HYZKOm7kS3GSNTspfXPSUvfV6zZ6t5R6y+
	 75LQLDl4pvviRu6Xf7rZw3d9hwdTdSk2cZM+t2w8+SXHhnXD+LPHSVMKgBpUaFclM4
	 ZrleQmX9YpN+tU+6nPfQ0u1MAglJRlv5ROc8S2rOEj1cPmj8a1ETSkNLSr3bivdfbl
	 EIrWK01A7Nkrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93436C9830C
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176860643358.24974.4467124110310650481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d6d9cbe92db00347b60b439f45a6f93e56fdb73bbc415398a66c030ca11f3e
Date: Fri, 16 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768606433
