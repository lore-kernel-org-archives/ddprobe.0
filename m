Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5294D14B95B
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723406154; cv=none; b=db7H8lIgWKosKTE+WEKwcDjml1RyIonytaTPqLR7/GqeQQBOdU9AyOBlSWaOLYM9reg1io0Q0dfm2i0RJYr33OoQZxJ2AuP/BiB6HB9GD2KvTHEzGoNBAhTLOgDzYLYDfESc/4Qs2VnicS5v1r4sUED78W7XkRFqlDpXr8pEB+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723406154; c=relaxed/simple;
	bh=d8d5HRAlmGLXwX2TOosWs6kBfOZRryEuhlotZmkFQM8=;
	h=To:Subject:From:Message-Id:Date; b=QczlZjJyqXJCYyNOZsB+oA++xiec0mN+A2BGcxTdDf7dFVajAdL3AP1EaQXEyCnESrGsU7MdkbRLUXqkGhg+VTkWX6b7V8JlVy52Wxe6U+bMaRWShtaeNj9y3YPRHLcMzxbU87Ma+MafXfH12dhXJmb1sjKPrMwQQm0jRZZjfyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGKQk7Z8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGKQk7Z8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E23C32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723406153;
	bh=d8d5HRAlmGLXwX2TOosWs6kBfOZRryEuhlotZmkFQM8=;
	h=To:Subject:From:Date:From;
	b=jGKQk7Z8OiOF8y5UEd8K8bzrHjLroRSrI/xUOAqfSanMOa0RCgN0M2ffxkFWoFx4A
	 byq3u4Wln+dp1tB6bM268DiUN46AUwOxqPeSXJth93njizi0nVlEs9Mx3wsk2ysBCd
	 eygH32JRI7CLG6EkMU/qNk8/AUyQLR2sVif7ZKttizA2v7xbHkewyPVajUwWjfM4qI
	 w9nOUz8FefN/bc76JiijJ1Je4wd+pHloUkjG2fMWmU0c00p+Jpsjh9WvgeTtJmLzz/
	 mMmuh8NWeAOUMjPc0o4rozwbFVTep8AEgIG1jDB3GBE6pOv0XrDXNf2x0VRSF+je2E
	 j4MQ+lq95uNBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32D6C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172340615363.25896.15437921006918705129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76cc499d4206846f24d188ca879c6109ccfaf7a748b15d65020c77b18f6b041
Date: Sun, 11 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723406153
