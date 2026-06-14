Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5047B1B78F3
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781461594; cv=none; b=R+Y339Tx1kJ4fx6RecOEfPJSxDM4HqPBeLp0mkh9b2UxveGYYSdLfdWWWENFQ1TaxflflJd5195jlscByvUB7CUlJu/AVrQEFo/q1s5lHUdiV/Q8l9UzmQKi9Rg4UhxDMMF6gCBHgcJI+F4rI3N4RC2kCh6a0YEI2QGjoagdW4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781461594; c=relaxed/simple;
	bh=p8XXzqzaR7GMboyG2txODTPPoedfbJtdsweMrsXWGJ0=;
	h=To:Subject:From:Message-Id:Date; b=RiBhEVjXhZKkrc67NgWOvUtIe/m4EvSPa0bAkmXsaY8kKaWnMGX3QYpBsqepfOGUN2n9RO05uv0iraDwjuv+adN3blrlHCJ1sb+QQxuQsPuFIgOofIPmi6LqxesVmHDVGXf7/Uyyi8qDXo3vt23QU5g504rPaUKa3uTInPjAty0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnPXQURo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnPXQURo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9765C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781461593;
	bh=p8XXzqzaR7GMboyG2txODTPPoedfbJtdsweMrsXWGJ0=;
	h=To:Subject:From:Date:From;
	b=JnPXQURoVAq1hwU+ffeS2YRParBcz5cqAfXkc/3Ibx/AVRCd183r79EHeIEnCru6E
	 WkF/KaLJOR1iBP6VVU3RJjbRoWF2rUvk5KMSgHm76IPe3yq/BDly7eSrK8tyZ6hUEJ
	 z5deUtA/JsMFuNFzUSHbnddfIcicsw8yuGVjr8kb6fSc1Bdmdg5vBBxPGx/dvcUz+m
	 /XU6PEw9WaL8O7k3VhSid7KwnjkdYWxMxdoO0wCTSVzo0QeGODQMaXykHAQWD5mfm4
	 qyK7kxHWWCXtJIk2WPQepvnqqNpdCmbtm8IM1GjrrQQK9DjkVrtGsCdHnhF6ZNg0Kp
	 GzT0nmPz+YERg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4AACD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146159368.31187.10870586364812056916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d412b258147e2f2640b028a2314aa0b351b6519f3cda67bed80b5f706c3ae100
Date: Sun, 14 Jun 2026 18:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781461593
