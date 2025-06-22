Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EC04A2D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750572594; cv=none; b=rJu6EXYC/TQBlLEJJveNNGtcOgkk/8S64EkbjJy9qh86F7b1NuPnaaaNyI1po0wGheFZSTZ7IgzDrI5Nj/rWScnTCNyNYTw0T+P3HSYVm4er3H05zOE8jIdJyzJNswQgwjeKDghxdc/eVIypE6vQwjW7WGil/xmRUjmLFGv5H30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750572594; c=relaxed/simple;
	bh=vUhYAzKcFwEZV5okG7xRB2+qLN+jwyrI+66xaNzOSYo=;
	h=To:Subject:From:Message-Id:Date; b=TJrawQATx/Y47K3j7btAW5jr0mgxjh4xVbYYB3D1VmJOmkn6p4bWBcDIAqNFHhlYJ5b0g5bnMmpEFQ9DdOqngsnwElB0fE2uTjEt9D+fHFwD8/HoqqMDsohBje/n4rwVGTAFuEERkifc+kPPpxOODVvr1GXYXO1Fkv43fJ0Rxlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecEdu0zG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecEdu0zG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70ECC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750572593;
	bh=vUhYAzKcFwEZV5okG7xRB2+qLN+jwyrI+66xaNzOSYo=;
	h=To:Subject:From:Date:From;
	b=ecEdu0zGIBAwtKjuKkh1iUgOPlA9pSYG2RKFAgqqKMoiYMCe4U/12G1SR0TJKNkgw
	 tSoj/IwKKdwgr4HKHGfwTo1pguQ9FucrB64+zk8DdVUbbLbcG29HJ1k83nhzS3t7mD
	 bErEynF3nWPKwuwzsZ2Mn+03xHZw4rRQB98Py2Mfbqh1jToxe4xd7KeK8eyHCo/NyW
	 gU3JuQB5HwME3CAzGRuf9hPjOhabVaznDKyxmoq2b/H/Y2fcFBbi2u6NAbAUQD+lqR
	 7SSQKTupoW2DIqoCagTCtIIdLxFmGy2f6sXsmhlHJcTTIYYt7V/df56FfrU5cCgZch
	 znKl2R5eYDGzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949B9C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057259357.9555.14413399650125561080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0135506d1c0f7be264c113e1bb19721319137116fbb668740db5473ce1d8314b
Date: Sun, 22 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750572593
