Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F4E1D554
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748630995; cv=none; b=UF/DOtnZgxaU72jPk4Zp/2w4ySVdo3BAhLRjUnseoPjI1HFSx9QUunWLWHxoaIV0HpmS4WZtTSwdlNC9WPNXJ/s47KLSUTJDicVmyYnSDVDO0CZYbpQ6SygBOrz5zgkfUiIRX14QC4I8y0nAZw5Qbv2504n8WTkjqWgaR9XsBrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748630995; c=relaxed/simple;
	bh=H5TRZmpVMuRyTDJiQVVPgaBXA6C4p1+TP+bTIDfA8tE=;
	h=To:Subject:From:Message-Id:Date; b=OcAmuadWX1iIpWAGFwJfwqHT/2FL3C2tfZXxPfA+N2/wIIW6zHDzmZO5+DCZIvv1VNRLV2k8GdZWGHJ89cYJ0hSD58z77L1oOO8Ysq4gK6N60uf69IyQGwwxF5jWthpnthxhb0LsO52fDujtgGPLlek1MoY03aIR1lpyF02FFmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7xmfd4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7xmfd4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83FDC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748630993;
	bh=H5TRZmpVMuRyTDJiQVVPgaBXA6C4p1+TP+bTIDfA8tE=;
	h=To:Subject:From:Date:From;
	b=u7xmfd4I8+iE4kTKLCTrK+9XxMsvkelB6pXijOaSggyevkaPGLcJeh5Q7qZgCLVn9
	 rdMPN7Ed0XHsbVBdqVhU53DUrruWQzr/1fza9I/Z+DzWfm1aHC6vVnSLm/60qVFPVe
	 lA+LlZid+QmLycWS1AEiT/GXzq5iVQbNRqwZbfWjyoxuI/PJUEX1z+i/TpVoACSi5c
	 9B5FlLNuHcamKvSDlnMh/MTXY/1naYwsTbsapZyl8+GSvjnNO0M1YwUxUH0ajJUKAf
	 dkGE5yyj9HfIp/yvNUqPTsuS7xqLONbpAfuIrDmu65qTRulPIm1uZ4yTGodw8vmqks
	 wBbWrJpTcTkhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953F9C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863099357.27041.17202186640416827450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49039dbf673b6159cdfeb8f4c3d284db35a6da427b89357b1f6bb3ac47d92ff7
Date: Fri, 30 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748630993
