Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A38E8635D
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774827294; cv=none; b=Z3RRj2FFKZAGYA0trdsWVcX5/IHfCFEpsGQo5IQa8ZXB6P8mnXJOH4xksUU2xTxw5USVgVcc8yCpPOo1yLweOesijtkdHCWPLfHwiN529AB0Zs/MRDTVyE+a+6v/53jsd76zwaF3CC3Uil9KPNUU0JHY0yQesU296pkk3tUQyTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774827294; c=relaxed/simple;
	bh=yd6jCB54bQwCkhDjNblD9Aq4vLuZYchffTTmSSphDBs=;
	h=To:Subject:From:Message-Id:Date; b=W9lSBax4988yKbCWjgLSYXo6557HLWI2zKETwMEWZ1KeiaAybJz2bdVNjebJHRqOovEnPE/VcN3DFKbBv3SuzENuA4xBhsXCAEuvmb3WD2LHhGZ+Zi16rwcgC0gRLpyj1ce327pyBTAOcdgEdiqcCG/8L+AwLqwiWkkeLvelPIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDTo5Sbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDTo5Sbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ADEC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774827293;
	bh=yd6jCB54bQwCkhDjNblD9Aq4vLuZYchffTTmSSphDBs=;
	h=To:Subject:From:Date:From;
	b=LDTo5SbcbEfm1thXlepNTNqPDLSufkZ25yhG9OYCd+UYHtLZaehN0jgZuaTfSe+VI
	 LxxDL2QenZFjsX5fe4bhw1AqdZpz3q/wnM+57H1dDXcoUK2s7SgkEK9DAjAj+l0xML
	 IdvUVn2k/Gm6u0HZ9zb90zuUANauP3FZaXkTN1FpOFK2t/IhLIVDTar53vgSTuiksZ
	 GNaiovB4PNDRgZultzfHOVB4cZUsCgTCyDXqKhU6Wdv3MzCpSnKJYZ8m1zaGi5GRIW
	 v5BShWRjmRupxKDitiqRRoORXdT8Ml5K9vN700tv/Ce8wIRvkPTnE4hVBBLHAhHWSE
	 uwg5rzvsjQTfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93768FF492A
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177482729358.3092.6785260171916242985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378906e14e3f728bb9aa15a92a183a574dca771b01ba2f057dced9ee1c4670a4
Date: Sun, 29 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774827293
