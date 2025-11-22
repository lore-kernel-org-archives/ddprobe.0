Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7031AA1D2
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763802114; cv=none; b=lftmv+YScoBBu0qEwmr/LnJbIzr6nSYlLlkq/lk7P5kg/bHRAgyf6sGRPS6driCQSxsaiIQQfSdRbMu9uFP7I+9NMOcSbI/go3rD6qIj6CXFkmll1rYTQD/huYvkT9TUZxdG56pL7AFqSjkP4TVhL/aCxsUHGlFsWaXGEHYy+zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763802114; c=relaxed/simple;
	bh=ugQLxI5C8tonXI+pni5vbAbOBj7kiFz5LBpja+WIuWM=;
	h=To:Subject:From:Message-Id:Date; b=MhImxobUM3bYhlj5eq3Npi2JDMpimyibcr60793LOKK5Yl+tWiqNo8d+HHtQ1S8p7JhiUrcAUXgk+9+f159lmOXHrTWpJGvWhDXNbGGwTqGWKalAJR4B2D9KTeEgzrpkRFHmtCfEtqryWmCAHnvbnEg7SkL5ZR4y7t9bKOHrVlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdQD2gD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdQD2gD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A968DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763802113;
	bh=ugQLxI5C8tonXI+pni5vbAbOBj7kiFz5LBpja+WIuWM=;
	h=To:Subject:From:Date:From;
	b=fdQD2gD5bJUjZp+O6HTFA5AFoUx663KWouAb6QVpgZSKRH1AlgLAIF1Ld0/RpekXv
	 wqLnmiVi+b7gjxZ7p86plnqsdHVTw46QFtF7Ury4otH8wrqL83h7TnmTYlpCrE8UO+
	 kh86OZdoGXq0A/ZWCbBOUGNavp9f3YLrzXfOXuecm5cyA961QTM6OoW8CwQ7Owxd17
	 aoNMc+wK7sW1KsY9FI7bPDlqQg0BKuFDy4Obgg9H5+Dohj0fzq4tbf1cCzOdR/Gkyh
	 94TWWzC7CMktaAHJ2Pxf/ZHaHw+dXsa5RrlAheKlv+nBAQjMHFB++WjyVnegnbTKiJ
	 3Iv0A04dTq8PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9694CCFC51E
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380211360.14735.10807604634601343500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82541777413c2738da6eab215745a7e28af51a1c1bc065c596c91c0dfd9c0f6c
Date: Sat, 22 Nov 2025 09:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763802113
