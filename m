Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F181F130B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763922114; cv=none; b=LwPMSddaVAPe58CMpcPx2uGt2S/QyFJOpp55cYCTJePTJ9In/WQjCoJSmssqTMPKYf1/jxP18q837t97tENdeE7IKj2j098maQvcTjc8EDDFEX59WdFtNHfZxRZbMJ84zV+TZyoq0we+b5GLaQtUBiiyXIIJBMT8iKF0jg6T9yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763922114; c=relaxed/simple;
	bh=iK0nLvi3jTaRqtAxz47nF1kq/nRfZX1OSqWy5dZ9T7o=;
	h=To:Subject:From:Message-Id:Date; b=ncSoIW5chjgAMSn8Z1nQZIINUkwuF++/JVNF7d5eS7QM6naZLegasiILcZpnjjPsUjE7a69QSglMgkhSOo4gsTE1ySkapwlYOCNXMwMiOaNT7MqSyK8q5znb65GHMxgMKCGP6rmiTkt0vtmOKDqS+RCzqAqxNeysw9LTlw8VHes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7MbsvJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7MbsvJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AF4C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763922113;
	bh=iK0nLvi3jTaRqtAxz47nF1kq/nRfZX1OSqWy5dZ9T7o=;
	h=To:Subject:From:Date:From;
	b=M7MbsvJJuuHNYY0lFLixyoMdbmBoy8YnnNiDzPoaP43bLD+KqUv4no61yE1N2XHUs
	 YRXvGHk/H2q9Mt1vg1eAje5QE2Mg0j2V4S+26G+8xN9SXh1sTAPkzqmJVTPDKZA4TP
	 sy+W3Tys+hWBVHwfRvFV7djfe1Uw3tNTRSdawaw1C05sJtANTwj9JKGCJH7SNHCNdR
	 EP2Vx4+a7zXwtvhMjAl470g6U3xt1IpIhfryqRQB4lANWPZT2xtW6fGdZXbJL5qSgP
	 cvF0AZJ/02Yl32+bR/C9+la1aW5xybilW3LZGO8hZDTIl0j09b/210d6xFqwOlajvu
	 SE9Vn8QuljNoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C32CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392211358.20306.10767110570687920992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6917ab51301ecb4364a6dc6f0c689e1130ee1e2b723fba5713d7efc422e3d63
Date: Sun, 23 Nov 2025 18:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763922113
