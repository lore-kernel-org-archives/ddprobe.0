Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163171F1302
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753215594; cv=none; b=c350P94VzcjMP/ozJVh5LuAJPMjoLcoOOfvoIEgegfW+SS9tq5O62aoB89hckWlA/M4cmlguuw3sZxBlb7DAFiHh77nl6XLV7oT6GprWbWXtJzDqLQ+yajjc6ubzTzL6j4lLwKAIjnzGcV8XSJ4WF3YbiZ9OrJnKMNhZqs4UGV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753215594; c=relaxed/simple;
	bh=Bj6G5mkYCLjFegdnXNt3hK9qmO/8D7WCeebv/odTURA=;
	h=To:Subject:From:Message-Id:Date; b=Qdfat4bHw9lotE2Eug3HrByIb3EAaA3c5jbAJsBnz8EyopJEWcRo7JxnMOzsOiN9FBJMj89geq7RvZQouQdWdSOO4xAjh3QjNTI8Km+ZKYy5wA2fD+u0LXlRev6ulSVgF8KjwmnWxyZtnTBg2CE+8bb6ld5EOS4CJjIzGXECbZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plEi5Grt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plEi5Grt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E33C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753215593;
	bh=Bj6G5mkYCLjFegdnXNt3hK9qmO/8D7WCeebv/odTURA=;
	h=To:Subject:From:Date:From;
	b=plEi5GrtLCQJNEtWiXKDG+yTRpMDZHwtHESWwSU6x38jhEqtK7kHxopGC3pwf2S3Y
	 Ywi3Kiy73mdulfa0pcyQVz13jgE0Vk1aEOPoRJbLGqP/+pB2VUZKIfUR6gOgevdEIo
	 rZGWxAPm50vQ+O3kbwgNV6lWW5YCJruBK1m2AWJj0jtR80YUG5iFY4W5fLbr7VnOzK
	 QXqJ0nMKv6IMouIphxMbdMKOkT+KfXrfDLLPWW2rsbeZVlVW+CykB7HuAHh6iuZCdJ
	 GLckVudQWGODdNpmCYD4Qutad+jy6tOstAzkfbepSomVItH//etaw8A9rtWD5zoz7o
	 9BG0aY+P0ePxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FD4C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321559358.16488.3182468050679786462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6c6726034ddf4c9f58addabdef94f1d69d09697fa6fd7a5c56bd677858a13b
Date: Tue, 22 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753215593
