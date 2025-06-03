Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A7A288C9D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748975394; cv=none; b=RBNAp5jZOX7zCm2UhaoH6P8adXz/sSHidQ+MMOkBoJZ2HJbwMYCA4zxsMHTdGdpfSdww6Xf6mU9Xd0aMHvz8GXAxjj0H9xkrB/GaK6DJWcDuCYweqGDv1rvQRQF2Zzw3x+Dr067Mn6K2VNHJs6D0UAzDtBqw6FmWZ/KDMqOf1Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748975394; c=relaxed/simple;
	bh=M0h0pOpmkrcJyrt6LtO5eCShWVUjQ+lLtq2zU5FluVo=;
	h=To:Subject:From:Message-Id:Date; b=ZQme6jFUJPctsfpafFO0gQHTWeXQKIAYy285AUcB2C03hTi7A1G6c/e9kbgz1Pzhxixldjne4OsOYhLE9Y6+eQ3Uxv6r2gp8RqdRqXG4EnNkil55BnydriyExWCIgAemOY3gR5mgqvej7K9vGbAubJZJdN+fUHvzmAaFSRQeLrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUzt4rFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUzt4rFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EE4C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748975393;
	bh=M0h0pOpmkrcJyrt6LtO5eCShWVUjQ+lLtq2zU5FluVo=;
	h=To:Subject:From:Date:From;
	b=qUzt4rFKhZ3dkR5y8qZ3KYt3BWMVQoK8P8+80ojSn8v46g/sfd4wyErjmXc1tvror
	 A6JncIbcp5CwwiMAdPhHDK3lr7kKv9QJ+INlXB1wdv8nx5CJobhijI9CEbM3cU/w3v
	 apJUtP2LMX+yaZ27jjAEomTFvWdUlE0HQajpGL6fACXdlvdVbwlZISJZ0M8I+1HFOi
	 Y12aV9V+D/5tMhZWnwv1XcXn0ZPCJXWqLwQPI3uIGPm6CO29jKL7Im9tJWIn/mlkuO
	 6yq4JIPWzxPe5Sniq8B2D/IY4EHryAIYAUT2pjkTg0YFjQ7Wb+VNo5u4DlVibO63jt
	 KFmPEopVEu2vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974F2C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174897539361.20185.180665840338792055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b70d5dec4e0515136b3c03d79536c4d43a1bb589345a570cb783b3dcbf91fd
Date: Tue, 03 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748975393
