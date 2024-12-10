Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA87226868
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733856354; cv=none; b=ejRoTgxbXxMfcKk1CRe8Yq8LgbiuDSWgSEPUL1y8odV7ISSh/A6jYzB2ddG1wqYktD8eK36Y2nusskPIGV/yt9mNyFqRXGHOzjqKqGdH8dZg2vkpYvfNCtVhG2hskUIu5DN58TsWglapq9/TYdIt5flyO32nGXDfYPqFq5TkS48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733856354; c=relaxed/simple;
	bh=CBHJ3b47MbJnhDWqoSmOAbyi24i8W5BPpdrQPzuCJMI=;
	h=To:Subject:From:Message-Id:Date; b=JwX7HunYsRx2VBPJG3cIIjjR5FMwznVMUoZC4kIFjLfpNcZ3iDhzrmX0ptyS31kmy3gOnfT+4QyGwm3rC0DKsuIMAdm9B8uaPVNvwNxzGP45jD/lUI3M/JmMj344AfHmpM6jmmtXRVfkb7NnLABlMZVmUEtLZIDuRIAmDXQfkI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cC1yyf92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cC1yyf92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2A7C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733856353;
	bh=CBHJ3b47MbJnhDWqoSmOAbyi24i8W5BPpdrQPzuCJMI=;
	h=To:Subject:From:Date:From;
	b=cC1yyf92uIQUpgCG7aHzC7riDBY92LUlL93h1T9kkZL4mp4tmj1SA1cQ1vYx+BwZz
	 TgmRTJbVadZ/zSMF0jwGJU6bHxzW2EF+GntmxIjmBxk9abvZpkTCuWDFXwks3WjdXO
	 gbL/nT4qNcP6zvFcL0xC9k/ga7hIr84EKjUPmbnZ6dAM/CQwmXeNvlekf6XFEQnapB
	 KWYdPwjbBp8Ub777BNWSRcOYh3vodepJhld9xqsWr+Tr81Bna4P7EnrHfZe0qyh6h2
	 C3PhdjsPA1kBlpreo68JfoXSSFnyfcxTwtQUMX2xlyB9ZAF+UHosi0SkqB40O+Wl4v
	 veGLTwjmnXT3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BE7E77180
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173385635360.3061.8934216414310110964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd8d8a27211477482943c685580ab2101da7c910a60c48bc550b993007a2ef4
Date: Tue, 10 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733856353
