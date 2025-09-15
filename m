Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7FD278771
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757964594; cv=none; b=rlk3Q9p/v574sEj54xLC1iQoxnENJO/1JjVnQT9aEhWsBzsa0sh/9fx22C4IkMDjqr7Xi+GDtRFFx5692CU9OCqy8RBvJiNT5nEEKYAvL9B4HuOa8O7mE5pvGGpN/YAvplmo+0jInbpcIMqYCkq/tP4YUN7ZvMpD4wfBFhdW8SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757964594; c=relaxed/simple;
	bh=zT/i+J6uwyF4R85EZ8xaEOcrBCJmX4WowgHJ1qS1LNM=;
	h=To:Subject:From:Message-Id:Date; b=oUDsOR1QmqL7rNwIFl5Sdg8jbrMObbT9iZZXn7TBT7F7vShIXQvNQohh384VLtEHkX53j8Wyzd0PCZAonJCBmyOh/h1nvbXyAI3uqqecQi3tV+XSIpgKEFh2658mZxWwA6Z2bw7fKiilTu8NiX4bZlnoD3YGbscxnOM1t0toYmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3DHJDbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3DHJDbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23BEC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757964593;
	bh=zT/i+J6uwyF4R85EZ8xaEOcrBCJmX4WowgHJ1qS1LNM=;
	h=To:Subject:From:Date:From;
	b=n3DHJDbsRXI8Nlf/sjlXOg7hH7C8gZuNko+RqNIHTDQFlrrMYMjlc3J9PMAcFl5kZ
	 e/SPC+6RQZ+5MaEmvnVQR/OlBl/zWKdX7twrVnkwAjsrGOUpCJJscdpXQEdgi+sYfg
	 h3p2MbNtBIybHPHXCepIQwa2ewBHy5KJkvV+Uwi9UhYGbBUEgAYlZfd6kqp9xoXCNb
	 FZt0XAPlx9nKGyFBrMQjxVCoJdb4Xfzza6kRkZWOqOIebjK8AQBCCJWG4Jpdl3RrgB
	 fT7Vm8EDvfMZtEab/ljJj2ZJk/bZsFhNH3zm7m+Ij/MvYjprGQUibTZRxvl6r62Wol
	 s6JzVHlihcvsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD71CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796459358.20049.11826536413516951973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ea7104657c32fb5c2fde6f6b71eb39bd21c9970b77d91cc56efe0b75603ae2
Date: Mon, 15 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757964593
