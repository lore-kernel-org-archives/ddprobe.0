Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24CE344033
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769141035; cv=none; b=p5HwBnLAA4UvUMHblJYDo3IpPCQLcCPCyagJj1fTKjYBpK/+1NPj68E/WJ7/1YFa8nT4srbrDpfEXONip+ua/EtylhYfU4+T/gGaTa5mQL9DoLpi7/FS2VsZcfELtf3/wAS+2xOIIPllEuhM9wZLX6+eOTKJvnZmNOSnXPF0z70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769141035; c=relaxed/simple;
	bh=/W+bzNS0kJX8qNJ4u2+xaLlo60G/1xihaUaFCaLY8Xs=;
	h=To:Subject:From:Message-Id:Date; b=jD/UQcNF3IlWIIm5vaVKGAzQqWYIJTJQ/zVotWd630QB6PCyQTBehFTpq8pbpxXbl1maY011thljCdKe15pTXCMLDkgnTL6R/Kd68C2LZESpTpUSapeKLOpQ/O8KGegD3qNyoHFLxr2OJLKPyIn5xnCGWuDODNMuwLJddqLLLNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWOvhyW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWOvhyW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D5AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769141033;
	bh=/W+bzNS0kJX8qNJ4u2+xaLlo60G/1xihaUaFCaLY8Xs=;
	h=To:Subject:From:Date:From;
	b=QWOvhyW69ZOJytTUzG5nUvTPVbc3NXaFG3eFRmgGBo30cMbgMFLcqSY4jHTr0YMkH
	 H05H5ZcWQ2uJAXUNxCr8PL0xcLK8sA1hZlK3lvQUGKPG33fBwBoDTxR6rsx32BnYdV
	 eoPV0zJkYIwDnLRIgHL/YTu+/dU1C/s3//iQmlG43QnJHyhK6BLE3Mme0eAusmEhks
	 BeO/4KQ4Ll8SkHek4Dbh21ckrXzIT/xPh0oiWI/P1xZF/YMfuVnP3jacTmlQ6SnNgB
	 iY61vl1/ElwhPJJN2THcErk6pVETjOndbS0+31YiGHsTx/bl9KsgdfD/NeZU0Ivu9A
	 oVv0KfjFa2CCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D86D6CFBB
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176914103360.12232.14508143745990392293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08590b25f4dbbf750625c062e19ef21cfc5d6650cd0019e5298656e4a561dd56
Date: Fri, 23 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769141033
