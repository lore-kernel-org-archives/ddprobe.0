Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4A92820D3
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747770594; cv=none; b=KwqctlNlml9LUf4tdm8bz4W1WhsVA4PsHBA0T7bSapb42WgO+tkJ5v9aI2bad69S4OPkmVxDcrDMvXydNNoQhB8nQlUtlV9yLMig9BoN5i345L0LdfPLl/eMlzgv+yxjKkLZ4fROao9WegeZ2vaIaPG6QvfvpDhLZIyRV2MLwls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747770594; c=relaxed/simple;
	bh=Zfz/QZd2y7Ll0QsjLSpBVeNVJKDGOZQZ0H6w29ul3Q4=;
	h=To:Subject:From:Message-Id:Date; b=NrzLjMH8gPHWFOG7zT/YnAerL+jbZPE2zf0Jz2lFtmb/+01L2IKmW2xjopLXmtygKo1nm9Bm1aewjYRtm/shsVOmYFTsJ1cBu7TeYcUASQgxos4tR1DlAIgDellU3PAOGfCcUwg5H04sVK1wN+q1OkdP7w61YWCgE501S09cg4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y91OD2mw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y91OD2mw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8CAC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747770593;
	bh=Zfz/QZd2y7Ll0QsjLSpBVeNVJKDGOZQZ0H6w29ul3Q4=;
	h=To:Subject:From:Date:From;
	b=Y91OD2mw0kuS70tbXZliRIh4DVdgQ+QmT8Y7mp/+liFdSwZY3MBYXvq9AZCJxjzyD
	 7iOcFnfGEqxkngGxumA4TmF1NzJBfIe+Q3wIk4BMLWtdZOOE7hT0cI8a7CWiNO8Azc
	 k54fYXfiFrxkVx1u3RGJhqM2Pqx09lfs3Xb80dItkJEYrajdLSIFwGCagHefwfYkVw
	 judISJpdCqMB60C0/4xpkoSYpPdyqCCuMNbl7MO4Ap1Pv22GlbXcy1KZYnCkGL0uzG
	 Z9DA/92Y7ZOyN/Et78jNYG9WbQKIiDo6hNq9QncolQYmqfwSIMzJUsGxPygYAKRtNe
	 b24lZ/aTtYjxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E653C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174777059357.9890.11403803966674548324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e763a2dfb34a1e8fb7422a9412d1f4d9277be6958079e867f60df905ef1970c2
Date: Tue, 20 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747770593
