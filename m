Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30894272E60
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749142194; cv=none; b=tIeFnl1pzOejwzA4j4gesLSd2fcccG8zfIWy2JrvWEeQCfImr6TnIWeNuF5mEjvjhTftqHHHeRbuxW8VZwhz+60jYrS4Dcpr/0kNKDqOFE2GTjiDqkB/GJfvaLMqdYKVqd7LRskNL/wFuiDvSxMo9nrHLfVdnpd9INMZzfbqEZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749142194; c=relaxed/simple;
	bh=qoNzD2LmFeT9KzQifU+niQvITRhisMpSZMEP8Xk9HzA=;
	h=To:Subject:From:Message-Id:Date; b=D5PALdkyuc4eeymskcFbzL/f8ieJuAQuLFfUJKE/KJ6TQOXeHxIwSk230kfp1X6SJSvOq5kHHKEJyoPaQsUpAogK5eMZkfvZrWoZXgUMkV++2dGnQq+/bsxdQlVFQG3d6biokoRVBpkWVrG6CBZBMluMCat4secSGLKvutLlfHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FR+h+DY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FR+h+DY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A628EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749142193;
	bh=qoNzD2LmFeT9KzQifU+niQvITRhisMpSZMEP8Xk9HzA=;
	h=To:Subject:From:Date:From;
	b=FR+h+DY3+1y7lz+kSIgg6pkfWgAUbp49mHD1HgtVHdyQXOJRztUkWS4GRldp5/U5A
	 hH7wiqwJv/gsxcrQt1oiepsZ2z/SlyxHAuHo/xfOZ5y3dw6otojHX2wGmDElD7FQjm
	 ffcvmuWPrCbv6WXp2VAm7/QZsqN6kyAwNVtNtBuxZ9X0oGg4pG8fFD1WC/CVQSiBXO
	 7M5O+fYkC2NU3fOcOec2AEFiaQW47bsPaCmdQjWPLzhwRFBPQdD1H/3Ov2i+xRgYxB
	 S4PDbXJDQFUR7WD0HtKAzsF8kItuSiFsfNESQj0BiD9g85lqnTDCfTSP1aoCagfBpD
	 NALik55MjHlfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5F6C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914219358.6429.9814233368067768271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 162635691c48072466f094435c2b93d8d5ee22fc3ac61143ed2c1795b8050f6c
Date: Thu, 05 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749142193
