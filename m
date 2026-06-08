Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E01E3A9616
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780958074; cv=none; b=Wfyu69taZBwccfCOeyhac3wxWi9uvT4VfaCcb48k4VnJV+VpVrwMeI8YaSey1u7jMVJfpJP2kW+zj440wSKH50ZSD2pGt/KRpiPTxM5aqUm+k7KLNw2Vq0wLWbRogvUpWaeigl3BbcpdHbRfdsbpmCCLk7Ne+bqMuSMv/vvXQQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780958074; c=relaxed/simple;
	bh=qBrfwQzC3BaB8zrR9JwAyIX0qvyYoNytA0A9B8brpJg=;
	h=To:Subject:From:Message-Id:Date; b=fydPGQbtmWc7iTg7/z18jsNc0QWxYRItI9pwG4aEGXdvoYg8kkwpXspqHDIvMRsyns1lSKgdrUyD3ruA5R31QuGXkQOwMu7k7hvs9oGXBSf3pVmWcpyPB9Z+UWs4T1kXrNSmShhksVgmcRZ0oR72AIPBYTIEWl6M9BStXjuo/5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCmKsIiW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCmKsIiW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2F7C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780958073;
	bh=qBrfwQzC3BaB8zrR9JwAyIX0qvyYoNytA0A9B8brpJg=;
	h=To:Subject:From:Date:From;
	b=DCmKsIiWoS9BlRQjRn4wRp5a5fLKu03QgUpuY0ykBIiXuamcMmMmHwb6zJ2FzpjIY
	 n1gWBBMxfxMBUHO2ools3HvcQ+b9R2akBfB/K0q+ZNeSls9qK0wTj5UhGGEDXlSRW4
	 q31WkH7ouF3LfSQiW0kLkzRTCjYEs05w392OF278TGVLHMdmz2M+RN0VXjb2juWC3y
	 6n7Ts73DJicgXX5TnGwXtDD6TYAOVlJvWj3tIAjByCjfRT/DxJDJJgJF1GW0RzNOtp
	 BZb+rBPhiSmvPtpH9JE8x8DadsMN+BKKYmmS0e9uKqRawtf8Lcbk3QXKuYki7Ox/N9
	 V+d7xKK4Ol+Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B132CCD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095807371.5913.8931138180020406944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5992628abc64a33a5eb4eb47b1c1427ec9487b710a9cacd33cb227b6e740059
Date: Mon, 08 Jun 2026 22:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780958073
