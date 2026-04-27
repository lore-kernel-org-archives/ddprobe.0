Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9783AF660
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777280854; cv=none; b=lZAN30KHdkj7zttxRCkKn2Oczkmmxws35IJYFuKSIwotSVxxVnrG2vWVGSQbpozojyzRD6CxeigH2hlXJvcGmEJT/JW3/cewSmbzHKVfHesRNLqf5UZG9uIfas4q/prgWtwVTTKDd7ppDG6Jn/Q44bbHhCjfa0NyjtgbsgxM1+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777280854; c=relaxed/simple;
	bh=PmEPJ51qFH+m2qIjvKwCG89masJ8Y80Cf5Uz8HCy5qk=;
	h=To:Subject:From:Message-Id:Date; b=i7/bnJTPoBHmhgKpWRHvdzlwwIW7bA5DK5j/9froNWVaq3A4XHENYjXvkhjoa8S2maqXg7DCISpoz45Ky6sdmLHP+l0kCwt5TZDspd18UPbj+xG3AnRVVzwtOn3NrqDlYNAw1CCfazcgNzBVsX2dI3HMj/kSuIKf9D3wdspNuY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOpoImZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOpoImZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF9FC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777280853;
	bh=PmEPJ51qFH+m2qIjvKwCG89masJ8Y80Cf5Uz8HCy5qk=;
	h=To:Subject:From:Date:From;
	b=BOpoImZO7u1oD5XiYli9O09h23MkGK2Lc6Jn2xZrm5hHGnZDzDtBr+CpFINZcYxgv
	 De2OMHxLDY3WN39y8wIsv/t8efEMp+n5O5tLJC0G9MUbrwi5XiZhOyIJsgMF920vTF
	 nkqBh7mxTYzgcpWOsFyeGzu5LMD27hAb7g/IpT/NywEkN4yKZpII0g/rg0YQA85quY
	 d5kZNxJzoZeonuGQjch8ZUfNKrVBKMxSbRdaFA8MB5Kyfm7q/NkidAeBBu8Cw7CaWM
	 SAnAAX12nys0us5ozTkCL24R6fjGO1ZCMjL1j0JYUjvp6VditUWEq31epyvGR+XSsR
	 RDEWKTRExj2kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1843FF885E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728085371.32126.18197382747018556884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe71099cadad72b97c181d0ae621df6887a49f9d3cb976245f00a6c986eafe6c
Date: Mon, 27 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777280853
