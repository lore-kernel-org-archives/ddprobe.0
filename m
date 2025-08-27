Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A662D1920
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756262996; cv=none; b=oT+SaKsvwCLHeyEKRNZcyyF3zKVgYle+0asOys8HA8uQYgSERl1wpQDm3jxX3i0ICLZMjMKoAhLkmfe5BAVC9jnVCtHFPd3RIn90ywd+LbhjmKd1se4qJM4zu25FmUcdVZqEigQx6R2uZnN+Txpsd+gZLa+HjFP2umuF4CfdCg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756262996; c=relaxed/simple;
	bh=CLl7k/+7eUAl2XPU6od1socHumAsEZIitEvzKYvmhGA=;
	h=To:Subject:From:Message-Id:Date; b=LS4kTLoYXQpkBHL8+R/wVM74RR9bbDqCA8kslY8CBp81uUzhZd712xVh4EGu1AbmeAxIn21eFApvn/5UYf4bzH2e9NC7jBDbj606cagKPzbUtEGMHqRKanKxQ9XdYgTWxLwt0mwTw7foYvXVBcWy1ZdMgQyNc5lI9atXRaZwAsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXnS5upm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXnS5upm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0665C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756262993;
	bh=CLl7k/+7eUAl2XPU6od1socHumAsEZIitEvzKYvmhGA=;
	h=To:Subject:From:Date:From;
	b=oXnS5upmzhC2xHEi/iCrE4cvpkvFZsiTgLevVI8fiwWkp81AACq/B5re6hRyfASit
	 VSY61V7uBhC+9fa/GnZ0CJqOaNjlLk3eFjX6oosTa0598X9gmMzKi/F6Kw5IPVXoCm
	 DCsmD9vi1wz1fJU0U6an62ZYtni+OyADzTvBVoYvA0EfkZbJUwEZ/SoIDoVqph55wV
	 ZLi3faHwdnZsVny1z5uwu57ymyjW19fBCmr35GLNJJxpx8ZolbyWRx0GG5PVmgXpe5
	 NRNsvwGYuT6fIkSMwB9V60mXgkE2dQiuo/9b0OqfRHQwMqdbqjoEY6OCLCsJMfpvhs
	 YCk+LlOI3OEow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E134CA0FF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175626299357.15257.16271310032656268859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e886ec34718764c76e60af062b20491cf9e6646e1a4e77b6f75d43dcb8ec1681
Date: Wed, 27 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756262993
