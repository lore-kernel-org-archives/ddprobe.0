Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C1614A619
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720464984; cv=none; b=M7pqiHecmnNzVh4S265Uyeo8r4otuzvIxRX1aX0+yXmTuVi5/44QJDV7gccGbXDgaBPyROlqvmQvQT9JKWqXZIx9ejPokbSso3yDzzHNcXlcvsE8HZrQiez7BgPfMq2rQt6hQYNoZYWlAIKR5HI0SC+1IDqj775y07/k+KkXHYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720464984; c=relaxed/simple;
	bh=z8lS3GImnFy06Kg2y/7mpaQ0dJKqTolnvt6K01L0raY=;
	h=To:Subject:From:Message-Id:Date; b=llazwX++Gjiuo+E1ssvoJ5GL/lZz153lrwXLTW4a4qctHKlzJApAHs9Lai87ejjqFlTcK23esKnOVPHGqF1PJVUvT9ITLIqCdhr/fsenY86NhgXOs5WJGmsdbfBFYxT2C7s5Kx2zmtSMrbToLR8RxOp4x9TpZRFHQAf0YI7ZHqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+IjECFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+IjECFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC70C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720464983;
	bh=z8lS3GImnFy06Kg2y/7mpaQ0dJKqTolnvt6K01L0raY=;
	h=To:Subject:From:Date:From;
	b=e+IjECFJgoLJKMTy+QR+veM1kdaya5bFjyX5E7eM7FFyvd4SAMTrqSsACDRXdAbGR
	 Lg/kZkwMOQD7ZprzowizBlL6OZlVhcsOHXhVikny9f1yUz4Xg5i4zPJ0R9V3V+DRL3
	 JI2YQojE8FRf61+lJvGfcgsMq5RW4G6YmJMjdzsdDRZvQaEAHhFYT6csKL4UPEcORi
	 PAbhoeMoGIsDPa5DL3dbcujE8uyxm9cVwo+7GeuBEeLG5IAuOw16+jpcxB4UUrWQkc
	 V5tbmIjZ+YrSB+dbJY/5DstgIzv/XQVKnC+4mBtqlJ1gnLTjtgFrln+343UH9JFrba
	 VwfzqQ2Dj7/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7FDC3DA41
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046498281.21590.5785717729258765222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94203e9940501ae3a54bc3c88c80e44b9bbd02e9b753ccf6a89dc368430c027b
Date: Mon, 08 Jul 2024 18:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720464982
