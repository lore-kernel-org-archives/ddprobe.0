Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D25246A28
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736931954; cv=none; b=bBre1Kgn2l9BoWFCwKi1Qs8dXyQaQcpCNmTeyKmEgPU3D0MQIXKjeuoNEAmJTzxf3sZ6iOfM1tvR31vD1mGKsuSM+VS4dqlIST1chInOm0pkJ2uqUtLBJr+GXVOL5ECAwTPzr7FA85x+IvyAs7ms9pp/cT0eJs8K74G6FrFNuEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736931954; c=relaxed/simple;
	bh=lPeVOa5dGI/tkwrn9XpCxtjHc7eEKyqvta05CUg7ulA=;
	h=To:Subject:From:Message-Id:Date; b=I/OzzVvqLXXreUhu4lQO6jJ+iS5SyDyw/nXloC+seiDg1AWSQ5r2bO/+b3FXs9DfRhr/CKyC4rcV/DPwoOXlWUt78JO7n8TxmAsyWYVDhanQJ7lnzXivOSx4fzet9eB8aw5fo+XiyFI+5kCMHsV/uWapD8ZB8SZvJQ7QJMvXzSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYaTKIMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYaTKIMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD70FC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736931953;
	bh=lPeVOa5dGI/tkwrn9XpCxtjHc7eEKyqvta05CUg7ulA=;
	h=To:Subject:From:Date:From;
	b=ZYaTKIMzqcXNizMEPfvwOLQWhdYgjNaHU++0NTFulrS0aHf6BlloYMWiX1elcMb45
	 K20nrQZrCNam/aMDnpsx+E8EwyGy5TPf6EZxGIgoFxx13L0DUj1zKoFu+epyUWeDt7
	 g8Myr8s9NAcQp1YfxLJdgVADb7Iw64uPFVROElz3iJFfVCsOROBLNjNjtOZe4s8KLZ
	 RLsg0hvZnmcS0TI/ROVLAGaYkfQQGIem5HqfIaUVlHtV/iDKzNoRZYN1ncv2UIe04Q
	 gLxaIDXtYvyzDDQ9MYpcXJBJlmGoM6I9T9bdsoT+bH3im3tqB6wnrezaFM2+jfVZOK
	 eaIZZJeXwe73w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CB7C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173693195361.11874.12703693056412569694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091b4fd244f89a67968518063812f1be462a1876df9cdaab1e86cbb296b742fa
Date: Wed, 15 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736931953
