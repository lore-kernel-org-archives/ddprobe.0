Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319FA13A3E6
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724352954; cv=none; b=pPyWvYEgfPf71QvZgMJy+vbo1Xi4QuWJWH07Y6qvDpdz+6nqFEsD2nJ97mHxe4FU6Q/4gK0L2cnTdTFhBi6+WJCH0wwd1+a/5/gEaGb5syW6mVbNfoX3G/YazDbs8RtsEBpRRH3hL+5MyLgWxWlirGFQpQcuoEOrEegWlP3r8AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724352954; c=relaxed/simple;
	bh=EKnCame5BTAxgmFpzPiJ/MbgjjDdmhmVyQA3+4MP4og=;
	h=To:Subject:From:Message-Id:Date; b=MRRUtu+mglGG0SkyM53wsk/QqE8jHFCEP+6lJ33vAhsstPEYh1FSh7kEUh2ubUo3rn0KzdQea1VDPyxPm9GYBZTJ2bRsaPCYIxIgLzQfPELZrJbxwQSmncSWnrdIHg1BqI1Ok3fPrYxKvqQsgECh+gVprGKdBdl6n1ApD33/V3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZS+nRGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZS+nRGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EC8C32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724352953;
	bh=EKnCame5BTAxgmFpzPiJ/MbgjjDdmhmVyQA3+4MP4og=;
	h=To:Subject:From:Date:From;
	b=LZS+nRGz2vDXu+Le41X8hVjV7hJD58JmlLWTV/Zi+55FOavxAwl7IxuRhLdw/leIu
	 BB7SUQC5UQPew/DztIjxiMoMclivOnP7PL3oWjltpFLtjszRbMtuiH/zUASUnAl7br
	 96AmSAT+LfNkgMhoR/bl5krOkDkFFPTv8/5kjVkefpf8HMUaNN09tSpD3UYxotWsI7
	 ymmjp/15TQD0/u98zlhdqKWrIDovZrvWehsgmIEztgDLoU+edBxeRbHkBtLzLtLhLm
	 1V9ygeIUu/P2pcLwA7EW4cQJxH83nkw3HoRKeduqSeLG2fheYlAs8RYf4JlskYwldK
	 fguZ+Mcnq1XzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9135BC52D7C
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172435295358.17549.9765657264136490501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4764aacba5b61dc936f727dbc2926bc14ad0a00d02fa9c6b4e5d3890ba6cf0bf
Date: Thu, 22 Aug 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724352953
