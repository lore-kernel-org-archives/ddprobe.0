Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CB3279792
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766009634; cv=none; b=Bq07gBnPUX2LQUgJQ3MVLnEfFdOYdD5fIeTtTbiM/zVAMITRoakgZUNBJpEaLIj/nu9HaD04OnfZBxu81wAo8F+uJyTHVpkLA9PHM2vrZAcNk9g+o3nq1Oz4buQXSOzemP/rqKwooFRrLkaccBGa5ZBLL6jRzWRKp161LpqjJYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766009634; c=relaxed/simple;
	bh=k2KAfxB3rX7rXdPgjEMGimmjHZs2xiIUW5U2IJI9dJw=;
	h=To:Subject:From:Message-Id:Date; b=caqI8KH64x0qnRsnVicFFW4v9MpARbVeah0EP/udbSURctTa7R/wI5SdEAhzAw1BbrSWzWXnBSyxwb5dTNLRwsCrcYYtqCM1DoO/IxXOEfiAc3tedHlxhY82L7RqlEgqvxg8d7zV8Hyc5MgpisFWwloU4GYkZyB2eN0W6/f7QyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK/56wKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK/56wKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4005C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766009633;
	bh=k2KAfxB3rX7rXdPgjEMGimmjHZs2xiIUW5U2IJI9dJw=;
	h=To:Subject:From:Date:From;
	b=OK/56wKLsxuptnEhEXy+qqOm7hWnVOBFI/xJ7ozak71kE4iMQN36D9WmUGXuHG5Lu
	 1INLfIpe+QtTISmtrc5CaQXcvlHqFyxIBWlBxAw1HNCipQdMC5Fk7ziegAAtjQMxpb
	 PTUNPIcpCPWEw54NajHHLZOQWHH9QWVsnlrkSQdQYNTeHzIX3gXmVsP9nLq0SV8QvU
	 ro9QFfEXyT2ALzjJDpipYpHtnok9fOYqmV4Lg1U5I0XiCyLJGAKjUq/QpSyseQL76a
	 QZo9n0QWeCZtQ8DEEKoFcsSayO8gW8iQEVBKjdjsLulsDODirJu+42XbrR2UIFYolZ
	 XrBoKnu+zIEIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943B4D65C63
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176600963359.19612.11291623417496949655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b91e077d7e83f6d1a47e72f2c2a89624c3d1f8a75593faefe9583b3b07a9974c
Date: Wed, 17 Dec 2025 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766009633
