Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F71158AA5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720589783; cv=none; b=tgy8FvAESmFfokOPAbQUNXsnUgqkGqrFA3hl5AMqw6KNxpidgrR2Fh80RAh2p4J0th8VqUvJStz2qWrHKvY2TIAjaC0/bPNgmdChaqCQN79YQu2dzS4iT4KSPIm9iHVX9578JBrHXg9oGWmEXN+prPyHHmy2TL6uE6HIf54gOGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720589783; c=relaxed/simple;
	bh=nMAQPzQI11lots1LmzghOBa0/3nxysJvXj0P90F9yMQ=;
	h=To:Subject:From:Message-Id:Date; b=uUEcKWFGSgWVmOBsT20kz7XfGcjZre1ITP3JNvNPDZYRanTHzkWUFpImYd+KsAcWImsHqOOis11Gn7krC52jzidObTUY5MOm0zmtkvdHyGfEA+OPceAV9/w/Pmei3oVDHtqX79phKgRFFCmxG6YyPuOPOFcw1qdYl7M7p/qad08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqtL+beB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqtL+beB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE33C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720589783;
	bh=nMAQPzQI11lots1LmzghOBa0/3nxysJvXj0P90F9yMQ=;
	h=To:Subject:From:Date:From;
	b=LqtL+beBzDKZ3fbE7WMteiA9iOSVCuK0K+MQDcN8AVxHlPlIk2l7q4iNatZch4Pci
	 QypcZgM9z2BB1URg+/r2VW40Y89p/0f3ETXH9BFuYmnOdFYmINpj9eqpr2tY6PmEzk
	 g3VGujpoAJgLdn1fv+XCIdBcePcvh4FJbm0UWbuLtKhrB1K3o+gZFJBKNDJnrauWsa
	 xWt30lvNZBHlSOVSCLtjCQCtJJ+I22mOR6AdEICXUaEP4y2RnUxf6JhEdOZYPJqlEI
	 ZpvlDil6RoIYc8sppAaqQ1GJBrcXmhjQOnWnYWaKt6m8pCXCp36ZgC2agnpuTg37IW
	 S1hs/+7NMs5Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE7FFC38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058978279.2045.9768317987979404878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a138f8fdaf82103c60774f653324fdb29c62913743f1257c1a49e4c564a84e1f
Date: Wed, 10 Jul 2024 05:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720589782
