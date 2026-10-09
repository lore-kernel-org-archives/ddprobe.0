Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501364A32
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791504634; cv=none; b=cTrGuAhYMhGqoJSO6tW1BQZ8RjySMnaDS+LO2v+AyR/5bnwSIA29NoRmfC4Ci581J4/8v/csOBfjw1/qxEfob2bMlWg+IgyTSPI1Jp8x3zZ5Ua6nadazKN/TBuNTRMKclol/XMn3bzBr4OnAEV7Py2KrdBJOkMxWFqgNzt3b5gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791504634; c=relaxed/simple;
	bh=ss3rDIGrxXuzgHTFOASKEuWomzeJls+ed/EM3bwYlog=;
	h=To:Subject:From:Message-Id:Date; b=ZSTzAkOHBOgW5IA7AQQqVk93ztpNg2pt3dOCZN/07TfLqQakK6efPytkms4WFmal9GTYdU1kSROFHxEYRybkLMU69qWDcStCKYGmE/r5SDbIGt2B10rC7TjwL8URC85zc8Qt0FcV/qsKyJaIoRsP1PFoqaDF3Ndre3+3IKBdFnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiY3AQOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiY3AQOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35D2C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791504633;
	bh=ss3rDIGrxXuzgHTFOASKEuWomzeJls+ed/EM3bwYlog=;
	h=To:Subject:From:Date:From;
	b=QiY3AQOSCHyPCwD2dN8gOfGW87S+icwZt/pWGVIOlGp5LGBW8a/xoOUi7q/uyuZ6V
	 5fTtAGspWhG6Bw+EQtDJ8WaOXIWZVEmYU7UcBRohSbt+TOmVDtlxOBXFvD+hPiiPYN
	 +7xrQirEWQW2UeZroH2HsPpaAsToj0Oi9Hahslv/Mx18Y0XuPFXclqO1Mi9l+1FdDN
	 2UX8fEbBDB1sLA+f7Yk9IdEVp04wtD0nHFALfZP/JAtJ4C87n04igqlORRRT0TlElF
	 y4ukq8idg4xHgd5l39qHxepfVYlMHYODx4RPDPO8dyU75f2bB3b0r+eV0Yo1ofOoNq
	 alFwfLVlWuIFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEFCCA6017
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179150463368.10495.7067228235037983961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950dfd285a02ecf35f76a711853986b8feda33b912c4273e76aa813ac08c2ad4
Date: Fri, 09 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791504633
