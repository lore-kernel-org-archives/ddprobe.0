Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DB6318BA6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790953234; cv=none; b=U5Yq4atAwmvZ3CNEpXYxB2AMY1sHLAWvO+F+jQqcuzD8f8MEsiDPbgd1dVmHLKvo6ZPOcdjhyRrly7RJr8TRRo8Y6dgjXyQTg1UIz7RauAAwFiNKjwOKtcUltRqyLYgcp5q+mbX4uoiio0O0uAbN1jEkYLIMpdGJOWHCObQQFck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790953234; c=relaxed/simple;
	bh=K9GwJ7e60gMtNFSEcfOmQ4m2TqvKfe9IZ17MW4GPXVE=;
	h=To:Subject:From:Message-Id:Date; b=jCO1vrHYRg55gYxYHp7vhRgov7TZshgi3NKXY3FOwTH4zdw8sj1GncowISd68U89JQSlg45eoje8/VT5HKmhbF+tnrgXtruIjrtMMy9jlk+ep8csYMU/daGNQpv+QWCCMyO7XaZ/mfOrCOuDQOb5dPjAulIN+Xl00jEgcwsN3O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOh/FVvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOh/FVvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD27CC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790953233;
	bh=K9GwJ7e60gMtNFSEcfOmQ4m2TqvKfe9IZ17MW4GPXVE=;
	h=To:Subject:From:Date:From;
	b=rOh/FVvCpmaMae2pxAifbtRwbkm33XssFh3l7ogHak++5cEhqqtGlN5u/xpq8nyrk
	 6x/LqNWn+ibU2q9YLIOP9RrNmJSlH0CiM2NO8fVbYfeVCd7Pp0m32FpgsBjh8/4TrO
	 R9mnwj9jPCqkywIfIl5WKRmPnAx+6doFFDZJB2UBFpueZvbDmJA0fxmLO83LYnX8sZ
	 LElKDPBejlDu5gIVx2+h2WvLdIPJvDCgYIqHxounwNLZjixzcb0h32w9eSbWE2J5fQ
	 Myqo4QGTJn35HjZ/XGyr+SARHBTPKautSSAsjnYQpwTk6MnGqGpNei9QYX8uPuEeJv
	 TN7hlgNpW7yiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA680CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179095323368.19629.16748875825776423139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08eb28c29fdcd76519889312cea166bd4da80f417357c21f21c7b9103ee31f4
Date: Fri, 02 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790953233
