Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2415F25291F
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749464994; cv=none; b=s7TOnrmXvGgVMh0zIWcobnqhk51JKF62mRnP9OBZjp6+gNCJ/L0NvePv2u6/LLgtDqfLZI9YHcedKQVk0YW6exzxFgjRT49Xcot6RZwYTRzcE1l3MaUK+Xhnau27wUFphCQQpDIAzCyhiPRK9hFtV7ZmTynxRA+QoiOKU5RD0so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749464994; c=relaxed/simple;
	bh=DIp5BT9G/FOuIcJyKFZVqZlA6fU9AOnKutSzORxRONw=;
	h=To:Subject:From:Message-Id:Date; b=pQSd4fR/PWxuWnhaKkj8bECbvr/YSI+2UulcR+NZTs+bkHaD1Kl8Ekn+5Q2Im35izJVdeqBUJIRSMCKsY+vS6CLyL3WvqG6maIAVgXYD1jSNY8Aq4LuTFkE7djJf9YJ6BqDbQDU0qsI8Z3X4YUpAcl54DE8pM/hSl0Qq65Pqy3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PypchAib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PypchAib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EC1C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749464993;
	bh=DIp5BT9G/FOuIcJyKFZVqZlA6fU9AOnKutSzORxRONw=;
	h=To:Subject:From:Date:From;
	b=PypchAibi49rqUveZc1fmgzFoZhRS4urCG3x+oNFWsR7ldGERbFcO6iU6B8JD7q3+
	 ZMHkSGvXSLS+qT8LEYegnYMK2NP9F/TMcZtK6c2ycchS7gdW3jLPBQmeshT9tTyRfU
	 cg1r//5oW9VA+qpWWEDOa/Y7JQaatt/y9L8VuXLSSySVbFcWvKv9DFcibWbuWJsbiK
	 fV099BQJeLEplssXkNTSjidE/Jt0Tu7RdkCayMD0NHyla/BjS9utitw7DEfFS3bXB+
	 MGkLFucN0RYspvNSPKdx15b3Yz47eaqRr7yftyb0FT8yGAIXPrNSxNstWQpY/qiXbI
	 bazgHIIVO5DbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3A1C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946499357.30407.7172824804895962176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ade21e9708dca135947e1736ac6b4907a4693712cc84bb9d40edb2a01857297f
Date: Mon, 09 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749464993
