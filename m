Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E42B23AE93
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751665194; cv=none; b=adda3BfJ8qQ5kE3KuC8fS49RVDQLe+4cLe0dihoI0yqV1LYmX+xDP8xucmjnhiOkBU6b4rAcd1dc9sSheqmuDynp3ExRCMXtNCgS5UKU2OJ3PbfFlemjZBS+o5Vp+MT3a0CRaRKrJfSfC+LkrQ6IzayXViLUEZ8Ug+D6qwzYVpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751665194; c=relaxed/simple;
	bh=o24Xia8P+Pv/YKyFVRpNAihdvePk0aeAvlTJ36c+jqM=;
	h=To:Subject:From:Message-Id:Date; b=T5jLh/CaFEDz8Lt2lzkWErnqGL5SREUvvwr0aA+MIbhSy+ZAPzKb1EcwjOlgcBlhLY925rhvTUzt+4q20gH1eqPias3kF1/iocY45Pz2ZYdQN3tDtwmuBrjCv/OlEn12gULYc/1pfYLmstO+RAZI+AZcSzBS04YbPabOjBbNlCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVLjoeOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVLjoeOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AF5C4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751665193;
	bh=o24Xia8P+Pv/YKyFVRpNAihdvePk0aeAvlTJ36c+jqM=;
	h=To:Subject:From:Date:From;
	b=eVLjoeOF2TVDKZ8GDyTbuiZFwT/lyxbnXng1B/z9TWYwEFp6/VsFn9tgwrg06xakm
	 6FqH0McKcmI6+ibaxE7qC+mFHvDg5QCoFjBmUuLaqV5t5TUN1IS3LM/Hfb5ZnB+G5E
	 4VGswoH7gf3ek8PIrMSS9iAE9Rmh3BCpBueb1Ymy4VQA7XQFdRQZykUSwOnYrXCQmy
	 +WKtDqqEx+eOIDF1cCTu93ZoratBTYF/4/msVzQ9e0rQdjcxrRbOajjUQKxoxf0Huq
	 iznCJ5zxdB18xndnzVHTt/mV+wnPP3rQwf2Sv/rgX5MuH3xRAudwtqeW7vdbJJ6iKP
	 ZsJdXpeFUFdLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6AAC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166519357.31022.2471849285882079351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe1781dbde1b26721eb53dfe5b16deb7cafce0ba7fe282312b16a143df6cce80
Date: Fri, 04 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751665193
