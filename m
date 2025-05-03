Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D6933DF
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746306594; cv=none; b=HAYC9Bg5KkJeUVjUoVeyDQuCqf6BuAcRsgYVRhjQCLm+aT1hbmnhE1d42f81QEv6/EgqDX+Ovgsn/22UvrbnSNAoIytzgyziyqW2FEMg8wOlEvd+g++m0LssnNc89WbRBhz+FmA50tDziCM8z9N8Gl72WpDIbLQ68pOklPYiBEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746306594; c=relaxed/simple;
	bh=ED2Y+7Qn+6wsbxr2G5B3bsiYzKYzDT7dILz3e2yELJg=;
	h=To:Subject:From:Message-Id:Date; b=r518HDINt3fM081uHko6ETjCky9Bnf4oWm7gdDQzT1lbyyGcjO+Z0DdUj62JwcasAlJnKy6vc9rPtmE1BJMj+zugGieJODk+O7vLzy8fzt3zXPO+eUUIOPIJkLebX+tYXWmg6aAALXC1w5t9Tv4O95OXTSDKojlMboypDQhZz90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i785AlqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i785AlqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFEAC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746306593;
	bh=ED2Y+7Qn+6wsbxr2G5B3bsiYzKYzDT7dILz3e2yELJg=;
	h=To:Subject:From:Date:From;
	b=i785AlqVvU1cMfG561Nc6nWBVg8jNwfFaxPgnZidDij9YrEBYk7Tj6E3qPDIcD6q/
	 9eCgv8NkP2su0753jnWnF4NADSkJzNIMREt1SdGgVRrwf9vjdLx+eN4lw0YAsTG0Pf
	 fWAkaUpu5CpOlG0Y6QRNcCQdrUgK1cG+MalF485re8cgfL21IuIe3teGDf/xK6vyT9
	 2eUgTY2cJOeE/o0T/8Bax/ks8LLaBVCIYW6+kr62bZrTIsNiyF6UEx5T7+q5pVxNpv
	 ZRWqykrfN2zPAJoJRpoArB+azt8JbL9rJsHtBKY7fDYdyhJrTLZ6A9j/YPuPOlfhXx
	 OV835SC9MneaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7C7C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174630659357.22167.12811142745577634852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10fb523fa0631b60169c54140847093d0496bd1a794accc048091a2ddd5d7d8c
Date: Sat, 03 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746306593
