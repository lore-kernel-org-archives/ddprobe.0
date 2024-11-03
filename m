Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385721CAAC
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730598954; cv=none; b=SP9reaW7p7N2rUKyQ0sDAtb9aiD3VHV1s2N6j65KnA2EjPtnEWsaULVvjeakoWeq+sLyF5JjrzN7vaq0JvsyUvn5EnZKkJGw9pTLdEdlZcwIgTkCb7zsq5CHXXNfUrX4QZ8dScmXEUn923vYBvCLx4vdwbLpklGy7H1ahsptClw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730598954; c=relaxed/simple;
	bh=QesepQEm7vAhkp8/rv/iH4c6QknYj0lUOdS0tUw+Nnc=;
	h=To:Subject:From:Message-Id:Date; b=Q4abGJ4xF+MjtgHBrq8gXp+rIndwg5QkTuc20btDp+Yglf6o129E2Qm3YU1nSjVx+uyL3sIqaoZgVQOkfI4aOYEqraoLYEtZaFdqv7Kw2zVMrjoTGgnsRAI3GBTjjnKL2wQAKX0yC9Yy5Ue6yQRLnLfUOZDI3kCu6si24xlkMKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TkNVWUfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TkNVWUfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6310C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730598953;
	bh=QesepQEm7vAhkp8/rv/iH4c6QknYj0lUOdS0tUw+Nnc=;
	h=To:Subject:From:Date:From;
	b=TkNVWUfu1sc+FSX4j9TLGjnIeV073nleqAfIQYGgF7/m+3qOgYb84Y6b+EeIKQDns
	 hz5OBz8vpyK+d9JmHd/WdnVjwa/fV9Utt8gd8nD65zlXc1gEzknEWs1NxhArwQHxks
	 QWqfFt0REERZd7nSAGUrHu+zmQCtP8YZTDDCVLvfm6Iu+RnHh21+CbaiMrAaslv2cQ
	 AVsOwhwz+hnB21NM55B46LLYPT8Q+/eV9Yel4h1113eGq5HxOUVmMEM1BWActnVbFK
	 +UFTuJwrw1HApgjEvKWKo46zvYr4hNUpLeefhQ5NKUv3yhnvmw7oE7TvO4dL3OAj/Z
	 pM4dLJp6E7k2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F912E67816
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173059895357.32458.11748847569632089170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adab959b9353f6f72c2b4ed323e3bc565fae8ad5b88af84b6ae6dbca9f01e642
Date: Sun, 03 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730598953
