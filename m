Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462BDEADA
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 19:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741895934; cv=none; b=bXr2oykm/W6/x+qRKj3krHJmGtps4qwhZ25sB5KdBc51eXiKgqPf2HOxVVcC/TlcNxqRh+hlNdtHIc6NTIzMyRv47KGbFW4s3SXT6JxWsbyk97ww8qYlhMzZ8ahcaWZF9d02Oxc/jJoyI9LF7gC1tXcHWSM2hWJSeIEBkdRpkj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741895934; c=relaxed/simple;
	bh=aP/Od8ZiOF99RJDTUoWPhYS6bNFGy3sFRdPCyizDork=;
	h=To:Subject:From:Message-Id:Date; b=k7UOYB2isCdzOOId0y4q3OPuzxUz8/4eZDOgm+vJTVnDBRcxpwUSiEInDwBNq9T5X621DtBxOWz/7o0cWGXYw36bEnqz7RTsiIS0cZX4Rc8AHJ9odQr+Br2HpYTlj9lstlNaT1VYbaSOObWwue4i4zl0HMh6qm0FSJrr5s5mbrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIK/GDsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIK/GDsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93EDC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 19:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741895933;
	bh=aP/Od8ZiOF99RJDTUoWPhYS6bNFGy3sFRdPCyizDork=;
	h=To:Subject:From:Date:From;
	b=EIK/GDsK3rOWJD7udZCvs5ATUg0Qqdz545Lm1yxTRzZ4yNb8Un3f8/kpWEOyoq+B7
	 oxbMrXyM3LoSXitxPaQAbXIiXwuZiapoDSFLnvc0oaPB+ktZ8cbiqSIgaW0ljQGfQg
	 /T/t4gdgngjdCzzsaOyWTPnh4nsyeCR/vMWfF1n44DrnRlK9mzM7SztXSW4epELLD3
	 revaj19I7CekVH829DwHMAub8/cjLlyE4Z8WwmXVX3WLIM/1b+jcXuE3Bx2kwxmU0r
	 YpCcAqLcLcIN16Zv2Zog3TgC+GJJsOMOUQyrSi+iNKy/ggvtj/fARdtKV60PZAx/FT
	 lJeRTQsjDc1fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9692BC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 19:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174189593359.30664.10366532717675872376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 977a2d177da96f9f813325392e47db49b76a3a472c6714a1afdef847592d4e4a
Date: Thu, 13 Mar 2025 19:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741895933
