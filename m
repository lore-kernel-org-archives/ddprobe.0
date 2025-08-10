Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA181F3FE9
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754810994; cv=none; b=r+R/kiMdT3QUJ7tLy8PyTEAdvqkU+bN5tiOpvtJ5aqoagH/oE4kwJL7P7FRmd1bLLb7sJnMBvNsEv39ryTry7hyMhgVxVNeREPTg+5ErZ7SHkNb8w484uefosJK9GJJHISWXbdEKqwvFk2z/W0TdCuOS1FGiZudcwEoSQBfSczc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754810994; c=relaxed/simple;
	bh=snIOVcO7O6TBO9UYh1l3ye9QgxaJi0mmG3htobEyMRU=;
	h=To:Subject:From:Message-Id:Date; b=dTYseQaXHxCcu3OPIKm6mBlO7NFCIQKGAnMo8h5T8dokN/hTNZO7g50b61ddRrLAvD3w+9cDcxMKSQN5ESGaYgj5IhoxrxTKHcOoEtx4VnOsu4wU7piElTvM23Nh8bYrPszh4ulQo4B4mLVGF8WAQSeN/LRlx5U247HYG6+KfyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rC7quHu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rC7quHu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FA9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754810993;
	bh=snIOVcO7O6TBO9UYh1l3ye9QgxaJi0mmG3htobEyMRU=;
	h=To:Subject:From:Date:From;
	b=rC7quHu1olZn2goJvn/RIY3hRk9WU3gG66LdpZYrinXMcFUsfuZNvORuWPC0FyR29
	 agGa5V6EOBLfh3KQ8S9ZZYMNZzS5UcOscyfAeauNCND0Wvt83qHkPRGxWgGd5vNEJr
	 MbpgE27pXnmMX7N/IdAkT0PAAOgYFJgSKauH6aLB/Un+seBH+buw6XAxg+MSb+rV8o
	 hMrNbq9Ie2MqiTc88snvJ6pTVB8d867Zup8kS34ML0ZLLdNFGDnzeZR5XvojFZIcbm
	 Flgwn4/cubGZNSJe7QxuNZ56kA1K/WNVCu3IlFe3mJa2PxSYo2hO5c7+spRXzynRfV
	 QBIiZFR1F+WuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94408C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481099357.3762.16776712241895812189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eef7536eadf6db603b46e8485c01f22ed2cc12ebeb8b427603425b899ba8d22
Date: Sun, 10 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754810993
