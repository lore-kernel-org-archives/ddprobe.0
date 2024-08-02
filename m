Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4DC632
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722569154; cv=none; b=VheEk7czi8fUtFwiSIvFXfwPIF0ArIqdTXY8OC7kB/G6V/gjg2FbQ+81H4oiISLV2Gr/7vI3q2DJde1iaUWu4h5VBznHnfJfDe7xYfdpGMOnQNdoAauAtssQ/w7XSxLfD0WqS87iN21OhNSHGpBH54tgWaBxhV98G9ug2vDRf0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722569154; c=relaxed/simple;
	bh=w2bfBJrWW0GwxfyOFnda3hrnigqRtxiXwisCKedaDt4=;
	h=To:Subject:From:Message-Id:Date; b=KqNpvAFicPe2lnAHgAOk/I6Io4HmP12GInGWlMK9QklVvdPFrbIqXNnLOGnjMntFTJ8n/NG1we6kOA4W7p7j/mBqr5ZDBReFso7R/TqTaeTGtj5nuOCe6XYFTxXCZ3iqOjQn3fnWL0ZVBAGIC775SEJcSfR8F9unUh+anzWxKXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4Ji7eK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4Ji7eK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8FBC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722569153;
	bh=w2bfBJrWW0GwxfyOFnda3hrnigqRtxiXwisCKedaDt4=;
	h=To:Subject:From:Date:From;
	b=W4Ji7eK2kqgxl+WQJQZ/FciqzpDrR0LV3jfpPtL6kaP1X+1ILlrE7svSKxIavQqqu
	 C7vDPoJ+5IeOTIYK/i8mDshM/BNBHJM9lC/ziLzBiPrWvtt8PJ7sbl7SaA3BE5mMBl
	 4a4aKGUveVEJATvzLasd2ViF9JypaOYpgTiBheevIZziU4qlRsD4HNpqCOk+dsyY80
	 TXL1MJ6sqWok7OZWvdWs049lcP5WaA1DKpW2umrl2zpYs3zRV4ddzZVdqu0Zn6EQ4R
	 jcuxqPh/viWTdPuROxFQV11BopQ5JFcfFndP8lJWna81QXm04sNh6WSjVmBsl3lZRV
	 EGMm+2NLJe58A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE35CC3DA64
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172256915366.18709.9592997054395843158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f5d8852ada32670326970f6958a4fb54d89667a435242124599481cbeb6c4c7
Date: Fri, 02 Aug 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722569153
