Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278141547EE
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746154794; cv=none; b=cHEsw4Wo6CtywCAXcbRQMBqFBGoSSrU1iTsM4lrRtl+JJzU3gRc69q/b2vz+vBd/uW+GyBUcsdvwCCi/lvpjojRGiu+PvACOQ15Hs0mSHgg/DwmLR3YffT8i8Sx2yRtfsUdpZGV7VncncOQr5j2+XOgJWhBrjkCnrexqnzAs4Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746154794; c=relaxed/simple;
	bh=ZAnRv3zbnpLKW1DCGmsiVaEz3yXpABYBGdQu0H0wArg=;
	h=To:Subject:From:Message-Id:Date; b=OUhpRvVgJLMcXc0hqHGQiWZVwC0w15r/x9PDpAqP4TDDmGyk3tKPYMLLlbYHrocg81cCfXsGz65IcLYdVrnMUssHiWiiEfBnlNG1fvr9pQf8yTPkkrdu1grOnq5sNP+v5OnHkdqEsrjUss9rFiD09iU4GxLbtwKqz9PftXZvDc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fm5uC/xo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fm5uC/xo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0106C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746154793;
	bh=ZAnRv3zbnpLKW1DCGmsiVaEz3yXpABYBGdQu0H0wArg=;
	h=To:Subject:From:Date:From;
	b=fm5uC/xoyTGs2rl1ooorDqHK6h26A8BDoQiP8KllreSl3hH9nb1RBE5QeaQu+GYrp
	 LSvI+lYVcirKiBGcsfp9WzMkrtkYfLzDHVvD0ssNPRtkqLKCct296m4gXInvz0pWZy
	 xeNpuBycM186YlW17+P5IYs0WfYDusVB0E4MPCkSl+7WtdjDscg1OX+B+X92Ap8eeA
	 EiHoE1i8QFlnYBrzE7TlGihXsmhNCvb8h2a1bLptYWVOBTnM8esovDKajZvv8T8ey9
	 puD0mbflVBX9cy+7onf8KDX2EpV4Ko7YJqY/BQFmySfUAnQYH/qJE7dUb/z42dKm2x
	 EN9ZtVMNcZjAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7EEC369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174615479357.3806.12784704833786613048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d614173416fa775b68d0206de5f4e4e118564843914ae697bdf2747976775ff
Date: Fri, 02 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746154793
