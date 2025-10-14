Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1737C227B95
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760470194; cv=none; b=EciHUgOI4ojx0q41ruEOcobS3TTeIzPj2FelehFUU05vuCPrksjv5IAme0/nMVQEKIABP9chJWQAtQRZcJYCmvyBOAbhP64/itn9hi7XOEjD7cvhdR47JFWbYyQjSrCBNg6l8Lssx2m6vMbQmO0qBo3cdRrmvtMCWq7NIK6sGsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760470194; c=relaxed/simple;
	bh=gYEPTJsX94u21oRcJayIB7oftsVW1eZq8aQXtVXQlok=;
	h=To:Subject:From:Message-Id:Date; b=YoxrHAevCmc29RQ+6CmymyhYYdrbxnDqorA4t3I+KNARa1sIn1dlSEsasWqGDqDQ8nJdxeEMUnEUa2Wqfy2KXyizZdxYxrcPct4bTaYKFA+pcR5W/fwHqeEFeyGk1IJ47wBAJkWiB8cPPkdXY0W2fu129umaIb8pz/T1InWwVKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8NNopkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8NNopkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5871C4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760470193;
	bh=gYEPTJsX94u21oRcJayIB7oftsVW1eZq8aQXtVXQlok=;
	h=To:Subject:From:Date:From;
	b=X8NNopkWaZ0mwa0qqb9W8MtClH2UDZcAXbvBqsiCPW8DCzotRiSlivdsELyjIT6+Z
	 6klMPnSJpA5cSCS6Ms//3LUH2gF1uvkMJruzVlyoZDu9bnPSef5VtLyveQ+4yq05Sj
	 v0awSRolEw/8NgnC7ZHavnOGpRyZome+gwdbcDbb421g0DXIiyGf7wvY4Wh9DZal4D
	 cHP4Cjamu57wjLPo7KQgmHwyxjQjnE14EWoZGhGasvdKd0W2KGg+gONUX2MND+er8M
	 89x5IaGPkHK6PmujvM/HBge8yxuId9nGVvveAzDcf+WNcxXpAsdYDM/sXfQ/JMfygK
	 fw0NOabFbrtMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD23CCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047019358.23413.7133253987125026946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a871fda52fa977ccc480742dc8a25d63bef95b5f1756ec0ae92c2f1b2a2f11
Date: Tue, 14 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760470193
