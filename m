Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EB9136658
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750739394; cv=none; b=BG+7hBmZbe/Q1Trkjl7e5YzuD6KsNh4mw4NC5rCb9Ha/CHZEBpk0gswZeeZRTktMGzefweSG1msg2C9kCZdPxLJ61+CaTs9seCm3mU8rihu7UTfbhjrO1UeoibdPTbbHvYkGJ0H1Wiyg88tANast2Txmv9sq7KwQnidC3eGLp+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750739394; c=relaxed/simple;
	bh=PL3YeteoQwQcb9BXkO4Np6pF0S+JCUq11s+U9QbVkEs=;
	h=To:Subject:From:Message-Id:Date; b=SM2ncfJZ2iQCPP3NwfzLiyIUREQRRoofTdDkSbh/0dFYFwM/t/q1kms/Z963CSSbpN1Z0BF5n5w80/yPlzOIC3QcVhQmy9AsX7erdF7c+TYBhf+gvwt2cd0elMw68PC1G4tniV/Gsblvhme0ylY3E/vQEcJrAUyO5CtpymQpP4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0v8LzAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0v8LzAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB42EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750739393;
	bh=PL3YeteoQwQcb9BXkO4Np6pF0S+JCUq11s+U9QbVkEs=;
	h=To:Subject:From:Date:From;
	b=G0v8LzAKUgMLqNNaDmfcreLioqnfjr95OERVQKs7pqCEMw+qEQiLAPwUfAe3G+AR2
	 p5qh9U9ppFawKKWY4h5eqUZubzBaRyFVtPW5nni9G4aVk8F1xcTYTCpZfc7StxQ8SH
	 Fe8huNvM4tzw9Akm+ICfJvVQ/LaFlKNgOD6MbYTCMElvaPlNufbf5vqBi+YJBZSVgg
	 +g6roKbLqio7FUMNDQqb7RjS6ppHassLZFJx99S4JbaWjVReTZyd5/enhe9H3eq/zG
	 GxAait2uDAVOsNbQIn4K4yys2waD4b8k3PB+f+Vrvoj71ZfBxWd/nOIUTIp4/HIB3K
	 v8uYpbWAzDRGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970EAC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175073939358.29897.8359528531607507430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4932993da5b614ad67487ef9c7ced6bfb41d285f1b910b5b9c1b049db92400a
Date: Tue, 24 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750739393
