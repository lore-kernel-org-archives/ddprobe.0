Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F73B184F
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732860354; cv=none; b=WcJeXFuPn1rQCNlNE6RSoVBg8WQsue8KUUwxk0KNEZ98I7scVMtNfCFYRBSIL3AzpjVO7yI7PhONA4zPmjE1VUgI/p4JjXlr4BRxengwPBfSyLkKvUSTZqNP3DKVuoh3ZhGitm6NR7esIQscWx3o1JPD+Geb6IvUYKEhZxJ/VcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732860354; c=relaxed/simple;
	bh=VeFduBO7jqEs+NfII5D5k7jLJRd4NIZkOJDZPlqSFHA=;
	h=To:Subject:From:Message-Id:Date; b=mntpZXto4ifSxyVRN9daECzm2VFc4CA6bQOkXjCfo1dcY2e+swXNgmv6KEjw/TCEIGyT0NhWkVhEzrww5dixYTipc46mn5GsrAgkVh/Ng3HyYaDxrBH3pEx/KMjsjUzFDqgwBDHBCLEcKJkyygzTs/QkB2nSqkUi3pEiFdq2NXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOQ5PGzG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOQ5PGzG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26CFC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732860353;
	bh=VeFduBO7jqEs+NfII5D5k7jLJRd4NIZkOJDZPlqSFHA=;
	h=To:Subject:From:Date:From;
	b=BOQ5PGzGLCmirhiz5g73o43feW2bdKtf4DO/1WPA4fOy6N2h5VrLPB9h5zj23DvfZ
	 hcP1AgcKkSdfo+CuMWKQhV1xmDFsrEGQCalJi32QJWMYhUzUQ38Pdqv2rWZ2K/WwXt
	 bTZdPfo518Ev8rxSnujN1NcxwLAk7igmMCY8macH9CtScXxBFnNWUCzrkz1cr8fhwM
	 pcpMoWAj4dppr9poNh+0pgJ9VHTC/J8GfoeNGjdt+SIVtoTACUeBWeZdn/STNASnMx
	 K4m05jLmi4EmgyMpcXIhCR+ILxtLzhEuc9Qc441BTFXx3vvd7UYuLitsz+rth7CCGH
	 bWwsDlnz0hs6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7ACD70E1A
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173286035360.8496.10133875538814675851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 057ec6a87cf81b3d49c1b6d0ba9e955cf1c90dd3ab797abec3d8397aecb606a6
Date: Fri, 29 Nov 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732860353
