Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551FE209F4F
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741350534; cv=none; b=H3G5ATlKQsvyM7riKZRhEl3ouDNOMtcpytKFaDx770G9/Hbp3M2u5X16z7dxD8bB6hCuJQ7pxIa97DHZ2jJcj2cjVEzZQ+4Ou2AOBTdU09kLRi2PKUzyy0gYCF9jOTsy0KYdnTp6rgAFgrsMULdDONsw2jzv0EGAD7og2Tu52Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741350534; c=relaxed/simple;
	bh=0QyfXERajaCv4by6jxSetFfZ3zQPSZNz12MxQrJKzMs=;
	h=To:Subject:From:Message-Id:Date; b=W0//aWzlelshmTXEWcAs9eZm9aB7d/gWDNBXN1TmwHV+TgVSnhWjatpJM/MF9ZZRjvfJGs5ZdGQZjLwNrN1IUcXnnOJiKoDCoT8TqJQp0fBWckpRZctpCUofiY0ZEFxvhS7frjZOl6h28MiKVmj5ZRSYkh9BEJwQPK5/PDzKkog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bA3ZBxzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bA3ZBxzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD60AC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741350533;
	bh=0QyfXERajaCv4by6jxSetFfZ3zQPSZNz12MxQrJKzMs=;
	h=To:Subject:From:Date:From;
	b=bA3ZBxzP48fFmgOk8lNJIKayJbbHxwLhkkpnl/ypgLIU2HuTiHxx0o+H8GRICX+C8
	 zE6RH1cCBLLfwW6+gHR3HtE33T2voQBGUIWhlHnlePbAnhh/r7pc7z0FKzSRFzfyJQ
	 lUr+IjPdgdD+c04mNdsAmO4GMBD3zgah7hLyzzh4qQlzDB6XEEoZv4f2huulDvkhPk
	 Pr/Gf31R/W01JdpFsD9HWVrP2v02ozayjzmNyOtcv08QwydqksdZbbv90f7kb0qdxn
	 6xKTzJL1q2zbO1AMcxI/znFJc/QFqcACJrAWwG2ZPSH1HDkVFsy0MlF+8jhp6Y6gAu
	 q16mN5dT2yGNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A84C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174135053360.11294.15076488366227498051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32c520a13d0c0f349000e54630a13c6cfd30f9d83e9abe8fa2435854f1dea4b
Date: Fri, 07 Mar 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741350533
