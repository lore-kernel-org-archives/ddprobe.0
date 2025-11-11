Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3544F2E54A3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762831794; cv=none; b=Pu153h2gw5aj2uLiAvY75iOZCofmoVAzsHZFWum9nNakFOYVXhIoXc+VPaZ7kCxVXRyD5OBsxgKRenjM6SBJd6TuExbO9mSqNE5pxuSjftpHPsqX93zhDWoBdRYgZ85kFAyCn8f1LxpeBgOENF6XSnwzvpcb3S7YLOT8k+oc5XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762831794; c=relaxed/simple;
	bh=ZIhzH9NYVVwOuzxXQi+j/U9XKNg85Fe8/aybMQLkLyw=;
	h=To:Subject:From:Message-Id:Date; b=XOTyV3tIyd95uotvzK0PyDCNhiSqt3r8iTYZTWHrG0D3mejVpj3kE8KpgLiYDeoEejlJteu9qzg5Y3kCrngMR+GIor4rSKDUqoZLtRCllpnwySdTZ5GMTFgRkFfZhvCa9OO9qvFCb6V0Y9d6xGbHsPb39eRbYxvHW6ywcD3Z4xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+TWD1/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+TWD1/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6869C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762831793;
	bh=ZIhzH9NYVVwOuzxXQi+j/U9XKNg85Fe8/aybMQLkLyw=;
	h=To:Subject:From:Date:From;
	b=i+TWD1/qssRpcDZPLetz4iAdBAhUVBkQMELhFJefgJL2zSzlVd4rkkTtnb9Yqaz/D
	 8AuP333FYrqUtvmADqPv8xt9yCYzRIDNFOgDZfbtFxYLXGsD5aApMEgRo5Q/wL2baA
	 xCgypHCKmthQGW1niS+o99H5z+LZZMUCqbxDKF1gGsqtWCLa6Cy2yQCfP558v9LNma
	 +4iUKHq1mkZHpGfn3aMR6T2ulx0fh7kG6k9T9pUPFBNEIVLropONFgyChRdvX4O5TQ
	 qiZci58eMA6duMaeySzWRreE+7E10G85urPFUknbbAVU9v/Z8Ly7Kd298c6L3vopEt
	 w7MtN006+VCJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EFBCCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176283179360.4374.12550911291594051718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81d88261ba5e7e14ce722e11ce8233e130c6a2e4974e2d05df1bbf4da801fa3e
Date: Tue, 11 Nov 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762831793
