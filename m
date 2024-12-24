Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EE92FB6
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735008954; cv=none; b=JohIXiQIHOhKwX9qtPVgdE43XIB+RTfRfsHKXb5cB0+zApIoPCENqhxRPysGL6wNJDlbPnpeGMNfDfTKOfL5vsfiUvxx4B0rnKi5cImN39/HRNyWWRhnaMsn5qZwpvsrdieBRUdkCSVSJimSgTIG5aRxvfvQesf6Zhf7MHxWU+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735008954; c=relaxed/simple;
	bh=3WthKMutlIEX/NK7d49HyjcjqexDHZlTiVwiZ770Z9Y=;
	h=To:Subject:From:Message-Id:Date; b=OIo68thPvjYAGwX6H0d3ms2/wMmivyOLtYgW5ztlFlD0/sRtMpXVmQO5HskIGdwbn/SpjBCI8AwKYS0gQa/H2LZfpwQF+ZcXlHo6NW/AGVTalljaG+ylE5Kp8DmR6pvuPEnvVIVnsc3J12u/Uu+kU6aJ5f0kROhrvs2dyt+KejE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SswOW8l0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SswOW8l0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CAAC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735008953;
	bh=3WthKMutlIEX/NK7d49HyjcjqexDHZlTiVwiZ770Z9Y=;
	h=To:Subject:From:Date:From;
	b=SswOW8l0KdCHqn9ERtoThuz6lOfBfngM8jR5h4dYmO6rxpfvFx7sYKJtu+kECeeuI
	 adAL/GAqVwm6/S661zJLLbRSQddF3PIqrcG0O/2XBJVVaTFifA4RcmbSEmnylM5f5h
	 yp5p/FhgEmhMho7AVfzCSAZdFLutOPDdq5PV2HtN3bhbNO+vCo0sRxtLrQbXhuZC6t
	 iHZNiU8Nxp3kHrRJCbnnaWnK+rq7Xy0YQaRZ6GNRvQAnrCRNbUbYsVQJs6sKrZueIS
	 EwVGReGpifQ6X10OpcitP+QPA9lbZFMlXxHVMJwWu7zttcEiiRwcEkLRnErnLmWZkD
	 JhvPWCs+vvVlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3DBE7718D
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173500895363.3839.18107883557406720334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23e67b3e9b00f74b110674d602dd67893e5349cf8211b1b3bf6dfbba29178b3
Date: Tue, 24 Dec 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735008953
