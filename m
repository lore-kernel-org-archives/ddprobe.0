Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F602D480F
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767348234; cv=none; b=K9d6pRP7+TlX/ViJwsJFI7oN7qdBXe1rMQfU6Jra4XC15+RUHZ3rqFHiBpZa7zYvyvq8bRV6GuYgrs1t6Qhq9b8egORftcQtLsyHJpOmDCoiUzXj/RHWi3QLk3Rxv5x+/e76FXIW+zD/3Mkyep/BPBJa5uisT439uRMUgcxZ0MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767348234; c=relaxed/simple;
	bh=kCMN47num3TCsZRSwiI64Rre+Mrz+/KUtLkC35oDnwQ=;
	h=To:Subject:From:Message-Id:Date; b=QWTbendGPi0rs11YO01+XqGhmeJR6Q73zP6K7e5pjecx3Vu9O0/q7b2C3YSUmkuvLrbNFL745r/54DZCR4c6FbKvSEUa+VsbrBvn9TKWYJ72XtLYVdc7ZxUk0Yu6vdvUIq1A+AAyNyOJEcf7EcLrCXkc9CbqjsbA6gMGztsaiFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoKPAf9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoKPAf9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F70EC16AAE
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767348233;
	bh=kCMN47num3TCsZRSwiI64Rre+Mrz+/KUtLkC35oDnwQ=;
	h=To:Subject:From:Date:From;
	b=AoKPAf9TC4hPlinxEB2jJMOf9A0NMLlm7cEw1q57mDkrWz92TcQz/g5kxBE6/ekXG
	 nDp/XJbx2xgDN1/fPVRXfN1vbvwtx62M+QRaYHa2XyA+k2f2zFR1H2d1QxxJzCg8bu
	 tG7PhWWGD76ZQJBt9OHI90W6RXsv0wfJ+hb+cNCT17InU2vTqIDusqOdZpdRS4E+jC
	 JoAgLmKEf+5WhEkN7kq8hwI2/NM7Q1eOmHkGGnPKzkPVFhStf7Nw3Pa8QLbw0K2aKK
	 6yZNUrq082zDDJc7rnZZVbf2+YeMUSeyKz4wWplxXU3lQ2QnCyq6QFONIrwMSTYB6L
	 01vxdK3WngMiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA94E9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176734823357.13249.13255225352038745759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b8f4129eb9e6762bcbdcd96d217af1d6c82f8211d651cfef57b3f5799ad1450
Date: Fri, 02 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767348233
