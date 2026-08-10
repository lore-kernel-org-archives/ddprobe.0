Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4786D346ADA
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786395634; cv=none; b=j60dFQaauZEx7b4j3KcQ1nuvNb9OjiiJUDYskGY31TTrCCQk4bRDCfk3SoGJs14jvC4Rg40oMP1c6KNeU7l7uUA6bxuXMJd8y7N8NHVpTffzS4C1kex6359fY/rObTCWXjjAujfCbWjg6WARE8ELfQGIsejPsO+xPm1sPX7W/Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786395634; c=relaxed/simple;
	bh=Bb1vvqo+fzjVKGlNUKD/sjzhRBK/3xGbVmL0QtHgtgM=;
	h=To:Subject:From:Message-Id:Date; b=c1Q1+NzP7qyzy+epw+cQ3idWD43gjWyw9UErYNmq+csqDUWhd1PMT4gtl7cUABETU/ZQ8d6DoRvWG2MORsBoTP6/g8xFFitvinJG4W6rpZS/L43niGiSaCO0WFUFea43loIVVXRRC0qd+eIQhoHypVlef2u5/e0DQHXNZS6g1fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbJzv4wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbJzv4wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D182BC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786395633;
	bh=Bb1vvqo+fzjVKGlNUKD/sjzhRBK/3xGbVmL0QtHgtgM=;
	h=To:Subject:From:Date:From;
	b=CbJzv4wmhJLMlkq+nEBxlNc36Fla27KxGaM7rDBLTgO30O5e0g9l55F1ykFsmngyd
	 2XywXynJHNp+iHHuJTzCv4n4GkxY4SIDZZ70uUN+Jv1zR6pZ7RgRkJEeYDqyQKkh9H
	 x9pMgma7iLKgRowvkrsT68n3tbjxUqTJgwxttcoatRsFAsN1zgWdjVlD/S5fACjsxu
	 QoFEI13Z9J+TyD8mZHxQD0fsj6zUbZp3EbyivkIRpUBd3/W+aisjslhjOloHG7ar1d
	 51Z0a6QMsxlLnTEnZogjOoddGI/OHowDWYgBQ7G0qXn5SSRcpzpdgDqChnJZ5KkEAj
	 SlngCszl0tMEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0DAC5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178639563368.10111.1031183316270924205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e4590754d7324b77c9f0a089121194dfb91a99a00f0158618643080b9281fe
Date: Mon, 10 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786395633
