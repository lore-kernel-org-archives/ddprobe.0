Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C80B1FF1AE
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770845094; cv=none; b=VADdq/TJZUKzE3bFDgpyXdmq80BbvibjCvqeGuAfyO9lPbk5lW5/e7duuKoQjwRUQWc4+nPba4aEYj9VdJPXUIbbWXejd4zI1jyh87IbAndHK+zvh2cMVE0HSWiRFC+oNtu+k2HFddv4crwqGqTtI1c/OHsDmQnmbewtHeNLzqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770845094; c=relaxed/simple;
	bh=19Q/hZ2QSr+wvNWJLGLngJ5JAgh2e0q7kK53GblmAWU=;
	h=To:Subject:From:Message-Id:Date; b=kiGkuDPgCmYA/mECHtEkZ1aSrc8Q72T/eeX2Lx+MssHqhThadKUWyLF2gWnUWIN4iqSv8Wxbk2MLYJ7HawP1736ST5/DNrRa1VARZJx9n9qKCQ6SgU+aE19Of5qpRd4gz4TWDiDftntdDZhzhjzAjzIvl7Y28NMZLxt9Gkt2bAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsqOH3Bo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsqOH3Bo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB339C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770845093;
	bh=19Q/hZ2QSr+wvNWJLGLngJ5JAgh2e0q7kK53GblmAWU=;
	h=To:Subject:From:Date:From;
	b=DsqOH3BoJ2aDURoenLyYVgGzoZ0dUK/4+H+hrVXBYNtzF2vax5ALSL7YE7vvrNsfD
	 uLBxnz1o4DYttyH6xqm2Sh4O3YOPIRfVcqoNF9fqNz5S8myWFEyhhPu+StKZXIX3a7
	 +2b5Qk9IUGk79ozmWqKIUf4EY4mszVWSENjZ974wCYscBi/L+c/5VFw2sY68RC+bYH
	 Xc+EkSiLObhDWhJ2+8sOYaFL/6ySJouqjt5PQ4ujUWMvbqosoy8ze3rJVGKVSl0SWt
	 7k8/e8ZxdvcnlBqlXNfN1uTgJfhM5DMQ3ON1X1Qp/pSPee8S20TCjh4Vn4v5GnNzyw
	 +MlqD0tM2lzTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFBDECD6E9
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084509362.7301.3116837853744183837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e8cfcce4ec1139ab96a292897f4bda3e820d95a2b84700d70cbf66d3d8ad93
Date: Wed, 11 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770845093
