Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D763BAD95
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790136634; cv=none; b=U2ZKkMrutXe5Sw+Zk23qgPlJbx0cbl/N1S2Zk3DNYDxUSgVEuzLzXZjkGVkxxVjpfGRcUErDO4GGsHfhgE21/nuRfCmCgY4+9f4Zf4UTgVoE2lBxBc/sdkzme7h141iiB4xg4DtkdB3RMY9PlxMZUlMe9GlVRNpZ1T3Ww82wglQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790136634; c=relaxed/simple;
	bh=PPTaRr24KYXKE8RCkAt2VJQzINE1e7HTMwtrITHV42k=;
	h=To:Subject:From:Message-Id:Date; b=kDapTcPp+KphNRpQGU/WTusZF7fmlvOnn7crDeV2eKg6mlLi6lPghoDnBKg4kDsTvzdJciwOu6h8Lb/FJOmcEVZOLQftqK7c2+rASNVyLrXEaUsDtjPdSbStHF1MiBgb7NHsvnoPjwZSY4jr6SsqFqaq320mqKfHYXqn6ghXnEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdRH6gau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdRH6gau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C465DC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790136633;
	bh=PPTaRr24KYXKE8RCkAt2VJQzINE1e7HTMwtrITHV42k=;
	h=To:Subject:From:Date:From;
	b=hdRH6gaupTpDDFEMoqbNphgdC+JOV0NKfcwLZfAdiypdtNyyGdpaZluPhYq+mVKdN
	 KRLdrBjFAjdwusQMk4RQzOnRJ9a7CmYN9boSIfJ6QE2L2qUlGrgEkbQBl53uGpgckE
	 EX1vrTen+ShhQXxx8Fw5MSeAtTr5mQdrDGNWgn0IQB495t0LNuoWe6KRTdu30ZBZ53
	 7bUaTUuFTHr5S3QDNzBN5yS/6CObGJjmVy45w4du4z4LPQDAAuLTm7cf/82LLes6zA
	 VnFGHULkzHO4HSXxLgw5y6aiKXGy98ey9h0oVN1JX3r0coligOy9Y5oTY+OaM8mpLd
	 SEBxp9M9I9RdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBB4C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013663370.26390.4611716844075689866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e8af06989e8b423b911404e635bf4b8f1adbd4fa7617d68bbdc82de0587104
Date: Wed, 23 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790136633
