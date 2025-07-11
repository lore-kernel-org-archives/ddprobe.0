Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176F6158DD4
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752215994; cv=none; b=u8OxzjpH7JKQAFRxP9hqcOQqC+NZSDCJrIsqv5OMd4hBrJXWDREBJqyB0QJ+PvCfFGyN5Q01/7cGmkab452uubBgKvFXuNEp9zI1ZTHbFb8IJh/mYRPWQE3+JGk3GNPMQLfZc/QyUOmSYlMkoCKnScxvc5lMkalygwtTiMvRV8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752215994; c=relaxed/simple;
	bh=heMj68gBFnRqD10LFDucffMQuSNqYol2fKNzLFPMu/I=;
	h=To:Subject:From:Message-Id:Date; b=pS8q0Xdyqdt7Y0G9roN+CCAdfIurtvJbBKW+TG6orUD848jLwFweIn9ZZifxw1OUnxpK1BeE21qsy328aeKHbDiOAhgnnEVOfntLgGODvCLQOXRlY7ZX/nuChb4Qe/0kwkil/D6Rj+alJ7Gm2CnfqJopZJKzfq9U/VFRaUi7058=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3Sym8UF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3Sym8UF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD0BC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752215993;
	bh=heMj68gBFnRqD10LFDucffMQuSNqYol2fKNzLFPMu/I=;
	h=To:Subject:From:Date:From;
	b=m3Sym8UF9/ez0rfg/6+cpSlabj/1SWxMYKy7RkfenwCFE9zB2nFYnLc6oFYxrw2rl
	 Q24nCSd7C3f8sw08dze5TMehO4JwTw+qOVcfHvnwdB0P0tMITgprBJ8k9xcpZP3tIP
	 ByJ5syiXQ7Xcf2iaMBjhzn4CsdVqewXu0jrghMozQhEWNXfByfJakl11a7T7bP93hu
	 AfIJ1yVjv+vK9B2mKgz8VvXShI7ZrR19aOLwfI0PtENP/rvpCvewELxrF8Zfduyulm
	 P4qU/koQ+zaBLe22l8xTmABMpamEBWMh4wqmyi1EESuqfm3rbcSjaowFjKdjAEjukB
	 Ma5zjbzu4Purg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D92FC8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175221599357.32719.9613071611522805251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33172437055065e52864fcf0393bb03df3c7098246c5e6d13f06cf4846ccb0bf
Date: Fri, 11 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752215993
