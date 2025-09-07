Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295A4248F7D
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757252394; cv=none; b=M428zhcZxCI7JLwZUuefpbMOt0SQFaTLMl7iYuRoBtGAI1sZXUklic4OVviwmvd8GXMMau0OICDiJtcQRUNC8OOqVOdHLcfa6/eP7M6ndFG2bJEzIkr5hbM0QG9HQZy9ItMdC6ZLe/WnrMaYPDmWvGxPcUrstz1JM+snuQnQs6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757252394; c=relaxed/simple;
	bh=8sGrYk/Nc1Wk30e0oJ6sAs7MCAAswtZY5cFdALqULxY=;
	h=To:Subject:From:Message-Id:Date; b=cWMBw+4CoekjvU0cWXeXIB4shvqOLdL+7cQtHPcKObYf1GthIuISQS4Bok+c/cxAIZsfQ+5SJkZfuIBG8WZ2o82Q8qJeWvsWUjRQqhNIdyb3JCj+3nunQBTb6jPDMVB/s1/NERxYyaxkDY/CD9Wx9ohkVUsuPJFwcNbjvthPdow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=per3pdhX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="per3pdhX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BB7C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757252393;
	bh=8sGrYk/Nc1Wk30e0oJ6sAs7MCAAswtZY5cFdALqULxY=;
	h=To:Subject:From:Date:From;
	b=per3pdhXAX68Ph+Pp8YAE66CP+gL8ClQtOKclamgvedt8HEJpte2Xm5M0aWcN4DDO
	 EfdkPNockacxGsg1IsJe/2P6eb+xZnG6umAP2c8aEx6RQe/cXpX1EsZ/hJDqeiY0j7
	 TY/f0E82DKIh5yTLEX9TSQ833+HM8sSZ+3ejkkyPoUW8efhcwnx0+XwNTEFI7RGHn+
	 0A6J+8rDl4Ev1ByAck0oFRn7Pv/PlyU+uD9obwh5R0wTJwbD6u2eh/d1g/OPt/7yU5
	 eJ/AgKFvi7cxWFrkS/GSBMkjO+jZY+QCnuw338T7HH/aX5WCnUZkpu8EmE1bsuheyC
	 H3Jzft6q7THdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91753CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175725239357.32604.4132157919947655640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2247994c00014e24d36febd40c0984d2f503caf7e4fcd714120aab59005f0a92
Date: Sun, 07 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757252393
