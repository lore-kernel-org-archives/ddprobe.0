Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AC81C84A2
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779025234; cv=none; b=G8a0L9Z4mJDo5OVe8/KdnC0SEzxGIiUoWdIdPAlcowVMYU93bjyvNFbGqFq/19NYJb26MIfjTIyJbDd5VeOj1fLEzBP5EByLzBtTJ2u+2zly9TRICCVYW+88SaUYIZNO6ajlfUSHsz1jRcC7UdnWQxO2WhgfIPZEbnXQ+xO6l38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779025234; c=relaxed/simple;
	bh=1dU7TZ0Tq7e7Du6HweNKeIkUNHdiy3LvZsaK4A9HMF8=;
	h=To:Subject:From:Message-Id:Date; b=HLqPIYc5DZs8UYpP0ptFUAahA7CtA49c9CxoeoxyzSt6Auq3rR8kpMCfzp3kUBVniVkB9L1N9LLgxSyTNeHdJi0SOGJ1dZp12VsnshM8DkuIuiUpsGqTuelOw499D3BmdnutJ8I9L945k4jTCX0dSL9ARyJC442WvT8mhYYSvBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uw2vqn8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uw2vqn8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9408C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779025233;
	bh=1dU7TZ0Tq7e7Du6HweNKeIkUNHdiy3LvZsaK4A9HMF8=;
	h=To:Subject:From:Date:From;
	b=uw2vqn8huamaB7ZnvNjoz92AdEnZHoL8960CKJf+AOhueTVTfCgih9SpPQa0waEIj
	 +IHTuVYOpfE2kAvxArH342CXfSPZJDEaYljJUvwmacFCuqGzU1GgWx6Ctz96HD1wyh
	 zk/NLnAj8pyhdAmu+tPrA5/5kTOONVkNFcIUTrZrS3zxKWdNfWnRl4STVpJR6ZCKW6
	 XdGAHwkC8qwCuznDxuajW1LaZrdFLfRw7PfY9HNxTR9fcuJzDkI+PDyTjkANLCH0j9
	 z9Ye1EG8Cra+ugLJWKt7FovZIADh26tiLl8YmiwW55dSsinBhTG29ZDBBhTzWsMsDy
	 8HR52vw7WDdnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3563CD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177902523369.12042.15450680910296287044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e177ff331aa9f44325d85966f5f02b922509b37c2e39233e0d2ac3eede0a5cc
Date: Sun, 17 May 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779025233
