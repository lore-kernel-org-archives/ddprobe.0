Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421F064
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777168054; cv=none; b=cpdSbrv0m888whU+bjCgmgbiTaDEYUqAZQNLgO2/H/7EJXdIXeTWsmdLM+XmP9GeiBb0tCJcO4Fh4k20pYyXUsLCbWKK0E8dyRiek/XBe4kocfLt+tyip9MRjwtAshLOmZzKDSX51b4CRjmEN5G0kfIDJ27fiBWKPRC3u5WN/mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777168054; c=relaxed/simple;
	bh=VpY3u5s8Kt886gnfIYJM5OradLfcDBYGTRFZ5vHoCIc=;
	h=To:Subject:From:Message-Id:Date; b=cSpJQGsbZTfLl0UhLoIlJ+NWYr9w0AHqEL3d1Azbu69YvLGVWrCO2YNfhiPaH651z8WOFH3AC8SGftaMyICAjxuMGIfCWNC1m1WgjHrurBF3rsSjQW0S2dBSwW4CXCLACadBFPFBIcuCiTjXiZPuNkS1AKH5ySCMvlDRJ2oLq1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HETp+Qoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HETp+Qoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D98C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777168053;
	bh=VpY3u5s8Kt886gnfIYJM5OradLfcDBYGTRFZ5vHoCIc=;
	h=To:Subject:From:Date:From;
	b=HETp+Qoy6YV8s51+mE5jww7je+5OgW2M4jqzklMhNzcWm3s8c/SROTzsGtC13VWfl
	 67QfSMCpky9mFW02E/EZQJ5ggJojJMcENE7jDO+E/7GuCnZSTPrS5ahT/iAdFS7uA9
	 QApmzxRfWxN0qdK273nELhuZ2cH6S68R23+x9pof8OCV8XQ8sPPQi+sljqhTEPOXSb
	 j1/lnmC0EsJla5sqUkzpRwGeoYb1WF5/5nZdBYvaDWr4JoD8qmcqBc4C5bxk/3dXmQ
	 YCSphSziVC9py1Izy/tZMGt77TOqiAHsvYKxI8Nr96YniH+RIFtKQCpR+OpmqLHKb1
	 M6rHjdvh48XRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA71FF885A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716805368.28564.8281367519233253545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773f056b0aee63b8ad0f5702d51f037775bad4ca69efd0279f8bc6b59319b061
Date: Sun, 26 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777168053
