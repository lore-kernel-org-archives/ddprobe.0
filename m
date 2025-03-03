Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024391EEA36
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741037334; cv=none; b=fIZXBr650HEQMwFbNqR5RfMIUsdC3LYdxReLwIGztA7OJqS6lpExTLOTxZ2+7mx2HorhNSVAhAgPw6d/MECJVAPJJImK8jphr8L8i03Q3PTcSLrn47OyAxp8R+Goj2zyABMz8+z6subbGdq2hpGETm27dwuZcLlKtrWjk/pdbaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741037334; c=relaxed/simple;
	bh=KnFZz5HLdJd+EfZh/JQORGNmhPIwRCAvLIY/RCP0EcA=;
	h=To:Subject:From:Message-Id:Date; b=WxwxdgX9428kVuliAk1egwWGSY4P+Y12Na7kMRSV9H0yNKpm+5dZMIvZ47gJW5IkC619250DQ3YQFqFM079vUorm5UabsexgyTe04aE7FcRwkwYUuoT1EegzVaErrHUTDnQIuwOaVC8qLB9k5AuEYAgNtycX+UCE0HvCtrPBvds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARdhWYez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARdhWYez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD07C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741037333;
	bh=KnFZz5HLdJd+EfZh/JQORGNmhPIwRCAvLIY/RCP0EcA=;
	h=To:Subject:From:Date:From;
	b=ARdhWYezlLocaS+x9AfIDSjUqQ9czjOH8ZxCQM0ofOOmhLiHniCUCsxD4wEXsqa6F
	 BaQ8KRRbHmxvvh0+WociGL3a6TxlBoWVQjsxIf32eqrw0KfMSm5+GGvpsxVm+csUPT
	 ix59Mz+7XzWNYZJjZ9YN/4m8gEgp2s83kyxvJS/PTMmB0PKQB8FSZhEopnyFuhiNf8
	 5AxW8fF1IMqqFPisxmFw1iGzznWcAZSeXFx5ZUZGZmImd38A9ZNsRECOT7hg+hve37
	 eaE6Y+rk+zxtZRNDEP08GcZlaxXMzjSU2LSQtuXpXKbiZEpeDUfxGKnCwtP7BsiBqx
	 neMEEyFt8BxHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FE0C282C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 21:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174103733372.27584.3584130343706984561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 600257d0f33520aa342f6c467a63a9c8b547517bc55e330933bd602dec62adf3
Date: Mon, 03 Mar 2025 21:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741037333
