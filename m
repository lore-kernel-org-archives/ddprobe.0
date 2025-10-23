Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2398621ABB1
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761195594; cv=none; b=bx60xjaty4QSwclkTc2dbxOWaN6opgYBDRfsPz5X6nN7Sp6WXWu7gflbKNpd8JNlX+D+DhzCuDXPU1AsAaHLH9y1XiiJ7SQBMAswHf49FmKGv1BPQN67bCEEC3KpMIRNlFLdKFLDya5WdLoYP379QrbwVQA34uTYBkFBmam3X2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761195594; c=relaxed/simple;
	bh=bLVsAh/PaIAAiq0pZBo0B0BLUyZKUNYCg0/3GRcUKq8=;
	h=To:Subject:From:Message-Id:Date; b=WjzxBVvdZjfiDgeQNdq9Z4+W5Bc8PuTUJQWTEEtUcXUP0rYD7TeL3FI7Gk5rUv7izc831nXxMj0yCVWz3j0A2y7UcmeyWSdPTvTvYWlvHLG/KXz3t8BNOX9Y3NPijZU9t9tw2co5HNdPmshUjiDNu0GKDBnZQhnJpHbaSeuI3vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XShd+UMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XShd+UMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3239C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761195593;
	bh=bLVsAh/PaIAAiq0pZBo0B0BLUyZKUNYCg0/3GRcUKq8=;
	h=To:Subject:From:Date:From;
	b=XShd+UMUvvr/ggx88oEhh4ee+moSxC7fZO5C13xqtzGQ4x6wKFmiv4jYn4xD0P/tU
	 /uixdoLYKrq/+a7k5+pgMNJ6AM7frWmk9i5XI3X7/PGE/byTBcdSPsu/uKj1WzihQn
	 tMhGnNelje1tXU9iqYSQFg/druYPlg6fqQeBcWL1WAha3+7FAOyV5knzV+DtpFPp5j
	 7kZRP9mCzk353hhV+BTMunyjDC3so/NJPrv2G4ZVcZXeZoUcWGy98clrwT6yH6dT4h
	 h52Zo951rIIHkR4EinZONmxoMJl0Fv72Z8Kt69Ko68FBfFaYEzJbb6lMr/6PsEHkCz
	 W7fgVJ9FQ24Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B5CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119559358.23938.8681722342324605962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c901167f66c013ad9fd4ca727871cae074bd7a6cff2132518f5f2fac13989f
Date: Thu, 23 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761195593
