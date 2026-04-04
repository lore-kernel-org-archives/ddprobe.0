Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0F7256D
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775261134; cv=none; b=awjbeZTKu3q6Hmiy/pApc11Z6NyPqvPwNxiGUR1z52ezBTv75p8nbpph+Ej8/PTD2MJMB2zfeKqqrY/9gp4oLV8BUGLDVKuCQpis3Eje4eDO0MZ8tfSW0GbsRp0apPkuafmyIGw12OC1CNn4ATR82uuT+zeNXcIyeJW6YFLF108=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775261134; c=relaxed/simple;
	bh=V4MUzCGxjaujmxd44weRIoZH61gisOp4NgXfoepSCxo=;
	h=To:Subject:From:Message-Id:Date; b=IcC/Z7XufxXl0xw/6e6uC5Sijbi2ctvAlDRStHcEgN/u5k6Ul5dXg6O3w9PbIx/p49nX+OSi7KkZNIKyzPJSzzg1IywUH53tsjc6sz6Z00CnYQw5HBPyiDFMumJLd7BExZxAwVz8DOJsKB3PLs6pa92vSU3oF0YoENIE/CwJfiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGX70lx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGX70lx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9D5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775261133;
	bh=V4MUzCGxjaujmxd44weRIoZH61gisOp4NgXfoepSCxo=;
	h=To:Subject:From:Date:From;
	b=rGX70lx6lgrWqAZwykijWk8OxwugTTGbLal/waWz2sMJrMa7MzhKCozTb7P5osFKm
	 mhOO8Z/N948PnPEGO9txRc5OF22tmdgV2Kk0d0RA4/birf/NmNu2bsV4xzYE4mftLf
	 nvMv8Son8ozM3iPCtpvnqYlmXBya9I1/6Wn0W6Dj9Y/NzOBElHeBiCebpCyCU90Va0
	 r8vwUIxbEsjNLaNNoa3kfBcKUjOiGr4zlM2bvdc0JVsJFFVOl1lU6ne5+YqYe9Bq+m
	 k8HGVtMdvnNl/gG9u67JJf7yG6wTtbimSgaqFRKicc/MmGdRfvVAExcnFkEezP4ssJ
	 Beri/pqoKycRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA15EE88D72
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 00:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177526113371.17996.15781832086389159886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3f6d8e8a577bcec20ef7f51ed2983cffa089795bfb29ba635ee2e8a455c653
Date: Sat, 04 Apr 2026 00:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775261133
