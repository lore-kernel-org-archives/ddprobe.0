Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327DC42AB9
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725254754; cv=none; b=r2Wathv+7bCCQ139MyBgCJSjjjNKLyC8hB2P4UvzHte3kmynyWLv01tHAkPfmfNUhBx+n+k5Z+pIVc3mNK+Fh3v4PHBJFVXDVAWeXFOn4YUxr4hXeZ2OzxKdJOc8csM6uzL80R3vtNhetLZAxwp/IoVRwjXwCvCeLWGKERq6Rig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725254754; c=relaxed/simple;
	bh=jqAeQ/Zo+1pxmDu3p5Z0/TtPwxqZo5grB5KV+zhkOto=;
	h=To:Subject:From:Message-Id:Date; b=thawutXkibDXf2f7U3jRuxlPgTNfXIbMCb/eFouKgGIkflcgk2dY7/PyBPVcXFMd6LxuC9aK3c0Q3GbeYuQLM6TeRk7MJNNLmK0ikMqF4k6TlOSGzKRMdd7zlhuGJZXkaatKn7bTXqQhPlSlzx0FuAVr0dZ1ZfmZWI31zV5vSDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuQppMye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuQppMye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09B1C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725254753;
	bh=jqAeQ/Zo+1pxmDu3p5Z0/TtPwxqZo5grB5KV+zhkOto=;
	h=To:Subject:From:Date:From;
	b=WuQppMyeK5hVtvV8kp4iK4s/X2iJweojRnM42Ufz0EtQ0b4z2Rd469GKXi2S1xBBi
	 RQDW2jQ/b8wNQ/U5YByFEBI2IsP7mqApBiyMx56XLwNLXi+TUDBSJRN6PLiBGGSzw6
	 QIkTeF3CzFOWKJrnyWQaYgN3y7qFeNBJLLLoSHB0cYQBG7RaIxS7h3SrJdoCJ2bHw8
	 UUcPDvfExPMZdyzqq6VstsvbbLavjpDvW2h0x/NnoyWs1w1K8BhtntEq2q/NihlaYJ
	 K3yPfut/PGKbAfaw4Wms1JOSexjQJr+Wy5bGtwBioAUzxVjcpGX5JC6Wg5JwK3mYpE
	 r0YzFOf6ojRww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99849CA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172525475360.4211.16540090662666737097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d7a1e0b448aed3754b77a2ede529ab72298076a913ae760f100f026b7e72134
Date: Mon, 02 Sep 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725254753
