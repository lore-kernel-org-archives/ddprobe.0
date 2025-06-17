Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3963D2F5312
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750198796; cv=none; b=cEHduHCf+T/flsh4tKbkg1hisZhVMlZltkCeL3mYZJklMPxEGMfv3iSIi/w3Czm8QRxKWBwztz9YSgzsRCdF/bVTgOx6LPbCmzscSrz/7x/eGsQsouutnQWw3bJlThe+lqemdzR0Ki8We+OxqMWihnY4nY3PxnWDRdYyPigjvus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750198796; c=relaxed/simple;
	bh=LOQa82Xu0+EzQcQtNy/kOXrY81c3EefJSt4bat44g4Y=;
	h=To:Subject:From:Message-Id:Date; b=cJLXD+TShzRfUGPNnuzOjjDjeBH752ZCeiu0d1FnhJjz2tOVw3as99DuuCj4jJ6MH3JGycyR+ddt2tRttWbJox+lvTeEUpP/eRWm1IBE20PAbH40kE02bg9BKasl88stClAK0Ilreejs2IwMvte8bwqphJcvWmP5ppdw5S53lww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIYNy+yI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIYNy+yI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CF3C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750198793;
	bh=LOQa82Xu0+EzQcQtNy/kOXrY81c3EefJSt4bat44g4Y=;
	h=To:Subject:From:Date:From;
	b=IIYNy+yIT9ZT6BiGEAvLRtseZHLIusyj1l9KQAWPCvSYi3F/4+lZoJxHAXt5+hHl2
	 kLDpSuopsM5xBQzElZr+uFR0iguC6U5qIDDGL51+dp/cBrJAE6Mc8n7FFYhdiN0uJW
	 mBeLSM33hKC4J/2PxkaVdIkvOSaYgiYhsAm39l930y3oMGC+CxElcgLWN16dsUM6MD
	 Kmo0zYY2v4Epe5DCsfXgqFbCQBfas9Hd3n7smscO94i5osWMJMGUsh1ticlFCulHe3
	 hhKFq67NkBkI2IfZ4WSxRJajceSSfDsuo4JCx0RQQpbSVi/y2dM4LlONws3dO2E+xa
	 88seiS3apD2tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944E6C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019879357.29518.7843229296761128286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e06b14f10880cb217d9ce976f84cb4d6dac521e8e20c894f1cefb4485347b3bd
Date: Tue, 17 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750198793
