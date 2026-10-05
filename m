Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAA5488229
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791207634; cv=none; b=jLAkUZxfgCRgXOwdEFuIHD+hH5EKT/TnvRDzgvypzC6MNKW1pMkvIyIbY/r98gRoPXut+5zXX3sndIm0ir2eihw5k7aysP/2FnB5edQtUdWSDJEwhq5vNbNyaa/uhg06MJ2OcIZK4HMdiGQwcUMX1uigCZAP97DjmaJr6TeMCgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791207634; c=relaxed/simple;
	bh=PHVsM1JFS8WsJ6DyzxY+CHM3G3p7tFdZ5+hZcfgwNUk=;
	h=To:Subject:From:Message-Id:Date; b=XfreBCW6rP6QKPAnPtS+O3AtGElxSMAgsz5KK0o84fUofJpR178RWkRMBCeL/KdJIoCI7Lgdpp7C6iB6Z7o/J/3D1QlkWdicg/pEZ55xlouNASBxy12/L9V5+FFz+Ev3te8kCoUhaZRPpYy3GkAUNOu6QFdwTyS0Ziv2WHR/AbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MepU0Y9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MepU0Y9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05E3C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791207633;
	bh=PHVsM1JFS8WsJ6DyzxY+CHM3G3p7tFdZ5+hZcfgwNUk=;
	h=To:Subject:From:Date:From;
	b=MepU0Y9pFqmhxG23VIlyc8WeJry7xtiVgEmsibGRkn7tCLXpca6jKPeov9GO6BYgd
	 Pe5c2EPO3iFXc3BkDNH/g47TMSCK8+54eTzIb04aVyjHt11IagdLz2Nn4SUKMDNnUM
	 TpVDc4AxkJ3dI4azM0sEaXFozUVPGOw9agGxv1nHA2i4U0H9+N0YQELNGd9v69mCTN
	 v1Fhvap2nkSMrMwWNvri9nI29VFn+JAl5B3shzvYlm67KmIZCwvtZBRlzqUt13BzyB
	 skvp2keLsIDzcpZzgxUuHTow9n+jtZbZopbXHiAW6zmX2mytW7sckbJa9uG/ppUBU3
	 1y0guCJacMLEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF52CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179120763370.11667.17484626688094522038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d342c0841d1d687c2e0d93239ab4f806771a28fd6c5872bf4f26907cd8f8b4
Date: Mon, 05 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791207633
