Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2641465B4
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774745694; cv=none; b=WxUWHyGTkpcA7FY8Bcovj7xc5FVRO1aYhIS+3ZfHTV+rOmNLIZprn0GChzQ8V3UaBuRMTJdDS22ZHa0JH8K3CstFmCt2TIZu98VvQEw8Q3JuYj6A8VZBEr1kv1HZDYBCYg/HxXMRJWWEcaijL++Lzj2qJM2oTPbAgeqF59rGzPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774745694; c=relaxed/simple;
	bh=rhtEwSYLcizkgLaJ18SBUYuonnBTtFHMFuxfsDDjGL4=;
	h=To:Subject:From:Message-Id:Date; b=OoVzPO+LLj9ZPOs9tgLUgqXDAOTucM/O/Q6SvGvSMWqWFGfNxeaisrXCFYCMNTytrfzE6VixAm2d9sdcKY6ersxQEyG7vJCLskA0fSQdS7L8pCeOKDpz5U5NHS6mzpGpFYF6+8Oa9mgK5l0MI5N8jH2jisfkcX2TfxQRsAfHAhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSwZiXu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSwZiXu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A704AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774745693;
	bh=rhtEwSYLcizkgLaJ18SBUYuonnBTtFHMFuxfsDDjGL4=;
	h=To:Subject:From:Date:From;
	b=sSwZiXu0Ha3w6Ro9cd5OtkdaNsf5e5ul4Vyk1MFZe0W+ZrqGrmSxbXKvIaXIqap/u
	 0/vT3gNk5SCOOTUkNIB+CCxonvrcvkFNlgVSjJWlKAEDd7rS9G2gnHlB82F4VMtfJP
	 wb7JPkbcAnrbgzzxWfL2IKHzDOMDJ/B0iNJ0oRHbXYsAiUCpKlXPnJFjT8GwHoKnlE
	 8oRsKVd4E2IQ20RJB0texX71xzW4HWowMYeaGCMtjO9VPtVHCNFNIFqkvfkjNNBHBj
	 5OsZbpqOO1s6Pp+HILpbjl/QpZ2ZdZfOWu0ZWxK3jcNoUKBRaEKnjnlYAz8xGdcff0
	 znMQ3ppmQ7k2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932B710D1489
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474569358.8847.22010629236235895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 785b2b7fbd2609abd9b01104b45199e23a2378fdd69ec3cc5ce494ec6a4280f4
Date: Sun, 29 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774745693
