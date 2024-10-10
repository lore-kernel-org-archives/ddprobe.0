Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EC31E3DF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728594354; cv=none; b=kmNHnpyjmYrGq13ks2ZOPzXzJIvQgtz9Qb8pR4pf16xRUPZz7QmRMha68chGi0VepmiHqCjKnE+1y5O39pM7XaKusC3DtlLIFh4Rc+v7Px2oQ7VSucZ92eyM82PElkQYStQrKJ0qfQ7h0lQQyWef+xssb8NJns4cRekcGQ2NPKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728594354; c=relaxed/simple;
	bh=ogacStjgI5cBaUeaqdTua+ds7UcUTudJBRSHZxztDYw=;
	h=To:Subject:From:Message-Id:Date; b=ZA8CIR69QeC51S8U6sfLlWWHKCo1Yg98+FB05nsptsQKL/DV/VGAfAbnx7Zh5nRj4dF7JaYCtfTKuwey6s3GV4BJ8jF6RkuMzfyTcRcXzxGgAOHY0f5bRTk0nB3/YCUZMyZsBKQ21gwmZlvGXrofjTmq1tW7kGvLpDPQu0UBgYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMw7fI53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMw7fI53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC42C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728594353;
	bh=ogacStjgI5cBaUeaqdTua+ds7UcUTudJBRSHZxztDYw=;
	h=To:Subject:From:Date:From;
	b=DMw7fI53mqGT1JJ/GC1iHyK0Ak4NkIyLYdnSnUs+cy6Euqeg9Ac/81+KlHIBis3yt
	 9gRzG0vlQDzLANnpZot5jt4GHnnxBGJ6aw9vbF1qy3oAlgW6bUXWezO6SA1lLU5EsO
	 fq/xqiU37d1ibj2jS/yYu2YvyrdOcr+Coyc3+RM8XfUWsRnCxBk0ebVrPvVVaJPrXv
	 HJNXgeqMDycsyMiUHfcVUwzOcwm7aUPUNcfeAbHL9XfUCXbn0SQV+ElschkVUiOZvD
	 Iz/P6yOocbaF+6NDACb+cutklCXTSl1wd9z/kdVsN9Fn7zWqNhqf3nmVIvmD/B51Eg
	 vQ5i4JxkRY/cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE67D24452
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172859435360.19325.8675972986326652082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed72b3301b851870503aff121739629801351fc8f0847f9d21326da3577b276
Date: Thu, 10 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728594353
