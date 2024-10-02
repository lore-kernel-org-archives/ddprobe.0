Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F936D2FB
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727836554; cv=none; b=QM+l7IrETRKEt7o8rET8RT6m3OV0SE3+r0fNYN2x86R2IiSsnSoQZJfQGwB8zF+dujlmtym7pp24omnw57hRSa5GwTDb5t6ff7eKk5J5171OY272pEQZj7N/2s9QXcBkTn/rKR8NCN5yzgvRT2gipMHGUJn+uwem6qjS/CMToCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727836554; c=relaxed/simple;
	bh=i8f4n3PLxntinxP956ugHUToUovDnvMwKkP2KSdPCQU=;
	h=To:Subject:From:Message-Id:Date; b=tOfeDA1amaWALYs+cY9s4aHnajE/j+eCggT78EE8ms02INR0h9LGXqLPOUGa/kEWCsacjskzho86p40aXabsYuV10ohv/ayZ1NEXvN88nTaIx+8z5KiG5163US/eXFjoJctlaj1wzcZ20I7qv12hhICyfKtTQ5Qr0gf8GbEW06o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MeJ7573U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeJ7573U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5101C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727836553;
	bh=i8f4n3PLxntinxP956ugHUToUovDnvMwKkP2KSdPCQU=;
	h=To:Subject:From:Date:From;
	b=MeJ7573UHd35fqZ7alCyvDjnywnfmSTvOUW+Febej/hPpndI15lx7zr1Lb+sn2bxy
	 10ZrznFqnXO4uK+FmPqJFr7c693VsbUGqmHrW9CbMty3GZhdm++zP2lg2KZs0qAjaZ
	 hr/MWYsDn7v0Eq53qyc0+Vr29nrH6WSJaW+E9athWDZ1Gdcxd5e6jzom/WsskeYJJC
	 FNQofU6yk/RvcCiazaXPKcg81xdMzR1EPVnBUnBDTtn9UB+7Wd6bwc8p+I3LhyxqkE
	 fm7Fw/DNu+mBM6W1favuIMoalhGCvJ5PSbBjEECvAFo2INXyfNIgN1moEGx6ZORMup
	 T7yzCiUd/vvzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9858DCF318F
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172783655361.532.1448860590741618986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 224f19d8df385a58db25d685d34e6167af162d93b490853d4bdf8ad94a7b6cad
Date: Wed, 02 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727836553
