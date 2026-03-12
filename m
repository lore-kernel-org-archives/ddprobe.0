Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78393822BB
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773321894; cv=none; b=BFrsEdadZ4+keoktcplEbZmvxXPsaH4/5xnUaPWNWTx84L7Bmel1PPxvIc4KYRoPK5qMV0+g/oJlVuPQBKPw4DF6nEfCYwvB2yaB/XheeZACbfCaLo3bYxFfBg94MEzlBDNs9RHlLIN5T18Xbb8q7kj+/2WzNz4UhoTHcubsmJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773321894; c=relaxed/simple;
	bh=QtwTEk37eNE3Rt+34zw0ezLYiCWgFYeJ2vKe54WUg6Q=;
	h=To:Subject:From:Message-Id:Date; b=lyaePuW466DGMuBthTr45Huw56HV7606mrZ5OEWMnBxnxZ8hHX9fuH/K83hMkzKcdB6Zt+MQDe2wF/3WoRUZ1eU0u5ialRp3nP/hzT2STOJlX0XxttE4Pg3dfuvGtq7eDVajXvZfAU5NYsEIhT4R0kJQc5vdjuq+3wt6JZllwno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0gpkZUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0gpkZUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C11BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773321893;
	bh=QtwTEk37eNE3Rt+34zw0ezLYiCWgFYeJ2vKe54WUg6Q=;
	h=To:Subject:From:Date:From;
	b=R0gpkZUE+flX1HXWN+/nWlA6Y2A80DdcuX1a2OORxEFBpyr7VnzPS2fSV5n/JBIzd
	 lNugwZgCe0NNnotu8aE6jGI507ni7NyRZlIZlu3iKarGxN0/2TBLmQVoAmWvTUtZqx
	 uzJlV1sL2ZtOi0DzNOGD9dFamhQxvK+wpLPuoOmZ/4xzKE33jMjyljG/5oN+F+QHSr
	 ejMCj7Z6qKoWNEa7h4j3IXQ7wmqC2ZX2gcwhGBS2XCv0WBF5UqmNA77phJUk0MqMYh
	 1eqfS6jfHoswLUlR1p76INvXYhRteGNwQmmHTz9oSFQVpoY6LuUbOavV3cEYAzbBN7
	 KpMOahAtkrdug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB35105A59B
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332189358.16917.8123722093253427507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1bf354f624c06b0177db5641012d1ad6c7b688cc2529fa0b01718adc7730b7b
Date: Thu, 12 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773321893
