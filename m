Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA2E17A2FB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767044634; cv=none; b=O2VIPBqjZJTlaLT1qBRyksBoryHxrs+aXaTHfNyewP4ESCkP0wNtfWTzISluXuvAMQ1aeSPirZz2ol/WuskPE/d0lfSMjxMaEGSw2lnblDusH2ncKb7gJtIakW111UoYSWyhtekK847xfQGU5xxknY2O79nRZIAAXcm2g08TSFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767044634; c=relaxed/simple;
	bh=gxPWIFzdXvspMeatWh9Qo62xft3vCQbXSjxnbBuBFsg=;
	h=To:Subject:From:Message-Id:Date; b=ZUDdu0lD2KRedIrOSBw7PycKWr/DUHJ0SJHHAip2rfwK+Ukw7G436CeAHJAPEedHUTZ2AxINsg98s8uyOtlM/l4ubmQR667h6Y4EGazWjeLdGuHipA7yJMD8C2h2Lo/qrmhsY8a5HXX8/2EIrlHn4hpsXxxGdFg5azd98auacBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceNrkkg1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceNrkkg1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B92C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767044633;
	bh=gxPWIFzdXvspMeatWh9Qo62xft3vCQbXSjxnbBuBFsg=;
	h=To:Subject:From:Date:From;
	b=ceNrkkg1TnknHGtpELymOhh/gYYj30U7STGkPSTLdNaX8LK58FqLJE3QUS5CF8xvO
	 7L80H6wEuXdofOr/es3VSnkmOqnuSwr41QX6AcRaAYh95CXNHo9V3v/85J8spF9DYD
	 R4WEGAbtUNIVGCFDUx7Ag82qe7lR1onC+PWaPyPmVlGsDPRw0XxZWJIhxNm1o9lsTZ
	 2BnhrnC0pCFjKwmyAHrqw2XjejxFQ2xbFAdPstuNOKGLvXxeGzRZzaQwJSYG63wcBA
	 gn33anNGc+ZXR2kCXTiKU+OKMzYRl0gtCU8BDI/oAksP8COETj8r2KwmiI8YnvchkV
	 aCffoXNy70GVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CB9E92FD7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176704463358.5258.7007190284955078889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebeab34cd84a060906f249fc39f5d1de9520bf44f8044a8c538b65103b95d3d2
Date: Mon, 29 Dec 2025 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767044633
