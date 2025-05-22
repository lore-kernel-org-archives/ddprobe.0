Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334CAF9DA
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747885194; cv=none; b=orU4jT3eIu1iuUvBL3aIfzzrZ2bD1jZI2VpJ7Bn18sXOJy//lGY4JABed1Q/G78JvRuBihe90LE+D1DkToc+QnD3XpWUJskz1UC85MyWIg0zP4UWV2wq7VgaNJXPlEAE1i/KwEF7NaMOzbFYybEFYpzwquxwyHRglENTRQRpHDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747885194; c=relaxed/simple;
	bh=BC6SjwngjlLLa2k87iS9YYUzQMacIlEEzoD6omyCBg0=;
	h=To:Subject:From:Message-Id:Date; b=KRyimjX5XqngkKx61mVu1fHIg6S4vd1ErMjJvS+sGqViexiCyE9PCxcqeUSd7e3ukLPLk2JFmcmPWuE+whVhFsXbmj2qpIfTK3lydVphXHX1pr1OoDr8xzPzvhccDl/E+8HYaM4o4QfUFs1+u6oX4Nqzf7oH849OR95LejIFJpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4R9jFoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4R9jFoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3654C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747885193;
	bh=BC6SjwngjlLLa2k87iS9YYUzQMacIlEEzoD6omyCBg0=;
	h=To:Subject:From:Date:From;
	b=I4R9jFoyvG/NUcIn9QrvwENe5SM+nP7amd9oFyxAdwndYFnIxvuZFUiSni3IeDNJl
	 Lzn2QCggQI6L8yP3Up0dW1QjfYmNRYLm/Fze70ba1WdvuEHBusF5JoaKPDwCdXoW/u
	 JwuDfm/ZegIJEnEfU+fmosi49pFIXcVnas7ieSCgtR5N/5dV1UxfxQrtRGDFc1u5zO
	 yddynomMZqKAKhBYWcj9YoMWliUXEEWav3SagV1cmoVxcPApEjb2KuugfZfGQVyK13
	 jjHXKo3dPk6iOwfiGpWdxkpDE0xEWAcd9MrwdUPUdYDd49y+fKX/Z6m+lZenMlN0tW
	 GEIPjz6zahJow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7A8C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788519357.16501.17745958284823549908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfec66161e771dfa45023ace986f292c16042281d9b13a4fd07acdebafb964f
Date: Thu, 22 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747885193
