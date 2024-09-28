Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4456043AB0
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727490354; cv=none; b=mp32TVHmStYdch1jLH5RsNslgFEq2WJ8XUdsKvV6NtSsYBLMByuqLtPKIcwgswCp9+fsYZZmdbW1nyT0UmwIci94RtJPTDmlrQJSCxDRm0Bvdt5BfJqeRce4fm8spDoDoYY7bq1Ub5PeoxzO5YwkCMZPTfnQJzHE+gxdEzIjWm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727490354; c=relaxed/simple;
	bh=FwbFib4tx+kctcYR+/X4unguy6SZkQVay7ni5R8qHSA=;
	h=To:Subject:From:Message-Id:Date; b=hH6fMrdNJAUdCQF7J5SGSDER0RVnVJBUsQK6aok8GB187yBJFi9jJlB+xvMikM99vFq5ezovMhJY43Zg4vZd893tDx2gGHSsgVYl9SsNi+nF9PF3DHy+JCuiAfFzAVWvsIstgwnP3UWA1ETf2fAX0ZBJ7Ge386j9iRwtXyBMUCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dug2Ny6Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dug2Ny6Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46B6C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727490353;
	bh=FwbFib4tx+kctcYR+/X4unguy6SZkQVay7ni5R8qHSA=;
	h=To:Subject:From:Date:From;
	b=dug2Ny6Q+FdEdFtT/3kioz0fmbuSfAyGHqThpCVs0RkKhIpn/teIjSC1Ca2cS1E7i
	 dF4D5jZae9aswTAMEQEPqfioExT94jRqK38bkMyhqMxk/x7wP6ONDT87+z5yiyXUTp
	 wsyonPkX2393xRRK1la3Tfm+CMZuVl2V/jUJ9gZeXIqoKQQGeLYmYcQ1cr9BElN5h5
	 d40czs5/NNDMxHN5lYrXWg1sUI7mTcrW92/yuzRVPkV/EJRQI1MjCes83xc6sXr+Cf
	 eqevb1EY2XI3fwUAqs+4cGGWIJ4DJRVS+94qydNuZLwtGJDQtcl5l8dL8K9ElxUiQY
	 DI+MgkJ/rUh0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C423CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172749035363.5661.9488665312858321175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba62a9a7cdfff9a612abc4e8c47cec6dfe5b69a7116680a1b0158198597d3355
Date: Sat, 28 Sep 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727490353
