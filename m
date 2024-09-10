Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CE4745E4
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725946554; cv=none; b=R/Iff0xRMuWpwU0VIq2Trj6ULemvtuWBhhEwhBf+b7xYj0Dvsj+ffK3BAuxS9msd0idgGOAPxNuUnxtCpv2s+/YZIKypio/3qoZ4YxJBvdZU8+ymKmfd9AiizqWlZJtyHZER11XOU/mJnEZcWw/3/N3mnd6UPJTdEkf5A26cfiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725946554; c=relaxed/simple;
	bh=kKX1BULdla+rU2txco3ZR5XkRYXW5x6XL9cIQfynD+M=;
	h=To:Subject:From:Message-Id:Date; b=WXeV4uLtRrRWnKUFrWM4UWQ76axg1YpcFyb9Mas0t/xa1MQyWXGdSAtanby9oCeEj+x0+hxEWgjWOZttG1AyE/tSrCwfQmsg3x+HEPk1/gKHV4G4KkECUpDuJH4cZfPCPqaZonObXXRRRtTAYXHsonRUBUScK+L9+mwmVNeOtEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IaRXBsUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IaRXBsUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EDFC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725946553;
	bh=kKX1BULdla+rU2txco3ZR5XkRYXW5x6XL9cIQfynD+M=;
	h=To:Subject:From:Date:From;
	b=IaRXBsUQjz1GgWQD0ketvRC7D9IRnVm+zOX3dduKZuDjns6nLMeKS8szQw/tqBnQm
	 4A/uNxkSEutJlwXxCucutpETaX8i+rYPGYck4mGIJtFOzPdSI+Gd3Zw2jG5CAtRTA+
	 RkyQrhsBYwt1V2zMaBmXBkWbhjDg93o6LRNG9gfVyJNTXeguk1jZFIUqSr498Etw1d
	 EpROFTLPuq8NkFKaHE5EmROrNaEgx0GoJkwQtvBD8wkruQTPQnUiKCcLOUn424Mths
	 U4iPvTQNtiLXwOsR0gEJvxRqaPc8BcNceFBjh7VBQmAfeAh1jC14KrC9m05IKedgWw
	 d+fTMcCeSUawg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B1FEB64DE
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172594655359.30628.10881001123433089762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19842161577c94d14c22f75db091d1808189ec85bd1ef0aaeba7c781e5b374f9
Date: Tue, 10 Sep 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725946553
