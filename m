Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507C42E62A3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743904794; cv=none; b=Y/4kZlalM0H1cwI1gyux6c02kyHh6ZLMh/GL4o3Gr94MDWixkGfW0NneJOpMC5U46r94FLPlmvj+bE2qeSwKWruR6WfHkgrobrj+aJzo0JFyQb2tUyq/v1FaUKCjFf1ZOCTg9/jrJaMBYlfc50DUc2mc3tHgCdk0Tu/wwYd/nYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743904794; c=relaxed/simple;
	bh=ywjobtR3w22qgRwSA1Yu0onL1QR28EMiMzI1U4mE0FI=;
	h=To:Subject:From:Message-Id:Date; b=LJrWvqSBZix69T7riSyWwAq/q0TOdPM4VAANWYH9Fia7XbxlmQY4yff/0K+jvp4QrLXoAbRMHH/3f5IxpZBHX8UfFf3foIOAzLI9mSblGE8ynR1qOY1TDmeMl6fgMnTg2KpVOOsTnszacAv58Bvh1/BCb+/8inIyx0JUk717Yls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBJHAdM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBJHAdM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A3EC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743904793;
	bh=ywjobtR3w22qgRwSA1Yu0onL1QR28EMiMzI1U4mE0FI=;
	h=To:Subject:From:Date:From;
	b=PBJHAdM4N2XZ46mYfp57J7W2dfG2vTdy1fzaw0FEF/ggto4AFzuaN54uIkkcUj9hn
	 AedVBjRZljo4XkzPH2YfhIwmYN4aHSQwA7Ko+H7CXRfX1zPGm3wMjBLwAfBnCqgros
	 QBFOpPAuyMsQC0mbnNjvMSF1uV3Q+3Li7EtwszP1lKo7dL93/SR5j6dTxro3gAFiCH
	 XkqWEoE5QQCfinS9ilv4fWE9MLaJ2AyCXuwfhWL2YJ350DmsCpUwrh7w7sghWiX+1K
	 9EazidsyYTzb0C4f55HlquXEL5gZ+B1gGN1Gl7iaSdXaPcWHBJzoUGgRkohMH61mZs
	 H2xFjn0ZHmE4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96308C36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174390479359.14529.9948614517169108961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 520ed44f40431ae84d55286e325ceab868827fe7fd5e74112b0edd0433f8fb17
Date: Sun, 06 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743904793
