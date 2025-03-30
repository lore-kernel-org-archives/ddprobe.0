Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4137E175D50
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743352794; cv=none; b=bXClBwE4MwOzyhUXZwOG89UPd2OgtlP8Q0zk1cly5JI3CGOHSKOMAq4DeG9cuBJBt/T3K2Hwhof4lRfTxImwzmQYthNSKcDy3cWrkR6Pz0ls6gfheIVu72U3uCdxeTZGu70Ymn5lmPUELUBm678QN+cwWB2zB38/h5g4YCBIOvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743352794; c=relaxed/simple;
	bh=qc/VhWK4XPMVlbEOfR/QJ2WHtHyv+JQME1dHM1SmPyU=;
	h=To:Subject:From:Message-Id:Date; b=uJDH1FJg8ovoUDSQGVMZ3MYosPy+CblrEMYceUuCwtIbCiV8vPO2yMzp0X53mpT2B0jwvtvX3Xcsnjy1EQbLUePcyAZjca42abchvqs4CGOzQJHj60IlYNyrSTRhpZ4SiYxqVyNK1AGcQKfgLk1X7L2clFF2v03O0tGiI5hriAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlW9Eg84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlW9Eg84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1CFC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743352793;
	bh=qc/VhWK4XPMVlbEOfR/QJ2WHtHyv+JQME1dHM1SmPyU=;
	h=To:Subject:From:Date:From;
	b=RlW9Eg84fDP+0cDqIJzehyggsvP3UjcfL+3HnLfw6P9AImDLFtexAZbgCVfi1xv4H
	 vjJ8QYxmT/PoRmXKSwCftO+kBkvxnAfodpgaNqQILD6Naym0R3KTs1p4tUdsYYF2BV
	 70e4ITGQ0CFxzoPXWIa4t13qM2vNyokUV9H9kAplPrGGWPALAFRDZ05DT8xWhVYpJQ
	 sh/z1mLY+yZzT7dcqSXeQYwpJ2ngMOJbpzbHE0n7D5SMvU96j3boH4/MaEr+hG0dLm
	 4jRxHTyJkxKawtYDGpg8nFwObebfIezrjBQtXjmZrQ2JRIADr8f9dkWGWdk3WAJvl/
	 eSDSkdJZcwg0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976AAC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174335279359.5814.7893793846261002974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d81641b3ade1567ae014938f61ff899cfc15c2bc4380ebd3e6e45f85070c84
Date: Sun, 30 Mar 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743352793
