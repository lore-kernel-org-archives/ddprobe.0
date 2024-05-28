Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB991A0AFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716923063; cv=none; b=QO0FmfG2ktspDXvIdb1bEpbcqTgaFonRZs3vN/w4O82iMlqCGs56bSd2zAv9r5XM2BHw05kOzoooleF+qcb0caT0MuaLyxkwD/4Qciobll/bnqCkyTfDq5vRrGKRXVbhWTGT9uh3bqgX8gFIDi2n1Y3cS5WBSDYmC6HCJhr8XBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716923063; c=relaxed/simple;
	bh=Rat/4hrCKLzYwS2fvmZmbjIB5ee+UAB4npNUAezdc/Q=;
	h=To:Subject:From:Message-Id:Date; b=XYCwRmnTnxaKxFtJDYPu+oJSMAqDssTdRNgmFmCiOh7katjusZduzDT/n+HfQ1nN7bKrhpY1yKxZMd0uM2ZbtkLdMp+3P/8xgM6Cxt1eNoGVDDWYW5M6o16cwO1wkr56XONkkslPGxwByA2yU21HYcsdDjPsIFGiqBGSwWQ3CrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNlZ3Uhh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNlZ3Uhh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3CB00C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716923063;
	bh=Rat/4hrCKLzYwS2fvmZmbjIB5ee+UAB4npNUAezdc/Q=;
	h=To:Subject:From:Date:From;
	b=CNlZ3UhhbhijEY4tdObQMuCpAS/jhCmO4rhaCRgClpZ9vNVLBAW92QpKkr+PA0Ukq
	 9Zwx9It3A9KVicUFLvqgWjSKsDhO8rrSmQ5aSUUvA6SIT2+CoVkgi2QsjlYqTUy340
	 dMeJU2nNN7rc86jzOp2SXeBWNfqFMpPcG+FLleO+BI9DXg1PxA2zYXQQ40lZ2O8gLs
	 d8/0k8uTQ/mvc2kE7sJLTaldrEh9d+wtgOO4QP9sDSYEUrREQWBmKQqbF9NhLgR+Um
	 qbdNYx5T8Y9Wm7ZGdMFHbVTRqlzaXwL2hlXm+sVj0u8rtRfQpoc14eE9OO+HqjJU5c
	 jfY8LfYMuS1Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7BE1C25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692306292.15100.3536763604952525909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f971c9e84c6185c94f2354df8c16f35d8aa7abfadd697b2d3458ebf4bc1e8c
Date: Tue, 28 May 2024 19:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716923062
