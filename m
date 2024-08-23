Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197061925A9
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724450754; cv=none; b=mIanh6egTQqKlt5rVkRup6MgQxgzOyZrXgKVKa4jkuKpPSQKMKyAHi+5ZhEiAlf6nWE/C92xDQM/+AHFfG1HryLuT506cfozwy9JVKSE2eo4SeMqcC9JwurGH01U6q07xG9eYYjEKDtZK9CxPz0/aw074SG0r3EmL0KsVYsArtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724450754; c=relaxed/simple;
	bh=gIgn3b8fy05Z9oFfVMb8CwfUUMGWkPAW3ymbxAEC7+k=;
	h=To:Subject:From:Message-Id:Date; b=Vgcgru7N7DdaE1DP46HhcQtUsN+4hB6plk2/XiJdNcIgoVasF58khZshhYoXpeq3hv/ehvgOxXgOjaWdDZN9z9Biu6+6jmh1Trp7g+Lo9nI3wZv+XFwSxPrsM5Q9ulrSsWA6TzqSGC+8la0ipu29JEBW8XaxKtyEiLaXYoYHp9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bG9pzFuh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bG9pzFuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A71C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724450753;
	bh=gIgn3b8fy05Z9oFfVMb8CwfUUMGWkPAW3ymbxAEC7+k=;
	h=To:Subject:From:Date:From;
	b=bG9pzFuh3hHlLwdTE72mmkiMfNN1YhmW9Ake3JKJH9ztsIUOgUsLUhDUsHRAYioWK
	 tX0DFDryK3yEtKopTkf080TR0PfX3yDITE2ip2O3KpuYOyV/RxE6WupyL4vBTLGIdr
	 vWqG7J76EKBIC/ntJCJmj1RlZypC0KTx7voT1AwBt3j4Xw202rJCtiMQa5xgtZ9CqW
	 6KK/kZT0Hf+1++VUmD3EGFkL9pKg/HZYXAxA1g4/I5Er85gzNdvHkufGW4hwrOlrYp
	 R7CtXo3sDokCPyISpIGTJ8UbKkSIIXIWSJ0HlmBEPp1G+VUx1jCJ1AxBXO7DQnvfRu
	 Uy3hRUgIYFFiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2DBC5321E
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172445075362.18077.13637524592380236161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25c26b42f66b028f1ccead266b28f1b7a8aff8d2263b92d710f5049626b5013
Date: Fri, 23 Aug 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724450753
