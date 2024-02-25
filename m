Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1785317BAE
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708888697; cv=none; b=ObqZV9JiXkpJP43v/gjB4eAUyHiOKVe4IeUETIutpCvIngOu+eJ/nAh+lkmk+AkuVOJMQWji9pK0pf6uqBBTFK/UBYRoOQf2+RuR0n1vNMAz1YE9WNnsAKYiXZL99Km7sf9TSVx3T2PvzdQR+a3ih0yjdisJhNwGBFdNWGEn0bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708888697; c=relaxed/simple;
	bh=WwElIcZHKzx2zBjuiRfdVAnwSRe7W1wFetC8s9iumW8=;
	h=To:Subject:From:Message-Id:Date; b=Ac9J6vo6D/L6A4gQeEJl/E8zzyrZ7DwQudyXrnrA3ujTnEmSfa0YPUnDfu9I2nmzirwU3IeODYgGEDIMOTQN1LQbJiEBrPlUFCpkd3WC1HdKgz5lwGZxgtGvqXNBgjMoW+xkpMzzm1uqqmAexWdTsWW8lisaAIB42MUYICzUlB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkiOmN3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkiOmN3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FCA3C433C7
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708888696;
	bh=WwElIcZHKzx2zBjuiRfdVAnwSRe7W1wFetC8s9iumW8=;
	h=To:Subject:From:Date:From;
	b=OkiOmN3A28l0okmk/JEqyXFmQ/nYWqI2HJ2s0n9UwyAdbUi7Jj7JWWG3wTohDnJ8T
	 ry3cspQWU74Cfa/JjLWCgUYuQy7m4Rn6Nr1vWWiZjpoPEZt7hyx/eQMBMEr99Y1K2f
	 XoxVPyyF5MXveOUHWSeNSI9f8joDdIL13l+r//rSwwKjhCddHweWk1T+Yl7fpCprgV
	 UMRNc4AUqBdrrVrYChAAl80yQRPSESJC2ouLA8/c5gPuDmrZ0u1qg1y8BHvqtVZgXB
	 Ngshzd+bxGk3PxjPXHRuAocm5mxfbzBbizPv7SOEo4NbilpH2Zrbhu6PpYnan1CKAo
	 GyPVoNInHN9rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A41C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170888869642.31937.17556046853416870091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c88c18985e28ea69156891246f2dcde0a78efad7e2101c1bda94063eccd3105
Date: Sun, 25 Feb 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708888696
