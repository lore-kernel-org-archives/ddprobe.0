Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2EEC1D6BD
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705442297; cv=none; b=CP/EvnSzWyaSjka4gCMXzEOAVqXh8EgN1SdrPR1F2Ub3jYJ5LM/W9+3Eq6mZFut4L73lQBXVxAC9uVGBMbsEkK8fHOC5qvRjrM40HPO1MD9192FHNdWCrpYf76MfMzZenSZbV8gTWfWbbd2RVVs+13hX13arnH2dCwmB51DqQkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705442297; c=relaxed/simple;
	bh=nfBBZB7VP37v26hlQ03kaTlVsxuKH4wqUX913nmzH58=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=A7c28dgINEhX619Pws4R1XCjIB3wXo4W8ywBX6I4KW6Lz/eLny3eSXrgzc1OPtM8iDeaULSgNn3N20oXtNHA6sHBuyAZv/fXjhkdW43NBeU7w8PzPJtAIYganjA1RNoJOw6/kZDso+/zLXGq5plg5dazjoEzhzmIWSwyXNVXyeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sie700m9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sie700m9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79CE9C433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705442296;
	bh=nfBBZB7VP37v26hlQ03kaTlVsxuKH4wqUX913nmzH58=;
	h=To:Subject:From:Date:From;
	b=Sie700m9M5U/wk0YThXEU+AwVaYFx3irQRfyVPXXE6BNVnRLI+B3Mj0tK152EAaJC
	 gduFJK6TS/HmUuNnu+AksNxyHZK2JCLN8e8y/chVxZ74t07wPjmpARygATija6wnoI
	 +5t6g/MwhL3rrvj7rR6KFAyjmt4CSC4K6fozKFQXVprABEHPxvh6sZY2+PZ8wOr7rV
	 sjKJHmu65DcMMAx9/m1ONUhSwIRhq+IgwuwVvkOuBFuoTAkfFqiJN/zzEA8AfKKFtG
	 hZZb7myM7e14otfrzmlJL7Dg8RhABcByS50OhaQjkAjQPyXpVda/fWJ79bQxLSQDn8
	 KiDK5v/JTuBog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E207C47258
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170544229637.6181.8487268005758581917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60cfdd1d0e3a2dc8da098dc9d118de801600f7bfc8c7e2bf46b48ecf0f9e79b4
Date: Tue, 16 Jan 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705442296
