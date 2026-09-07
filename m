Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6960D521216
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788804634; cv=none; b=icqO10TkxVsZkBIBSsx9ZygY7dZFv5SzuolCQ2l66fxFItBCMSS6K9Onddn3Ux2qJtqCxBvK+TABKaRUYLGCGH8jPkiyx94b/HjuVF2nzqcCCvApIJzJti/pQFoYi/u3po0gd5gVz4T0CaZhiJVI/lRBEksvEhUbtLOpcuaTCu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788804634; c=relaxed/simple;
	bh=1lZRaPD8X40IflX4o2gZy6rHc+SGTzPsAudKjzAlPso=;
	h=To:Subject:From:Message-Id:Date; b=MSgJ15vnMZCbzpR9cDZti1s0NOo2uOcB2Jq1nTviIZ0vl7msqJ+Wc0B/oha5kD5BomthVIjaWNb4HMD82UWQEB7wiBIgmb5BmxPXaerDqDWz2Zd7mtOx7/VCePUITrKLMQ5o6QUjYp+h0w2tbY7geJHLq1zY3DTV58XQA0LaVmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RciksjCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RciksjCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD47BC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788804633;
	bh=1lZRaPD8X40IflX4o2gZy6rHc+SGTzPsAudKjzAlPso=;
	h=To:Subject:From:Date:From;
	b=RciksjCuYDIcexZEqOUPYR1I110+IIyDHKDpGV6Kv/j9p9n9O/ukr5H05sqeegxUC
	 rr2BHpHHQHRrlHkN+X+PWShii/4i7SsHPSZJ4NQTgwVIKyabIJT2W79PrJVzp9C2sC
	 2jLUWZfsRaANY5PU2YuJwqOCoxGaqarGJ3GJaHgWOwSrwV8BldV0AP3vSU1mQk3siz
	 NlDwl3va1kH2r1xLUJlcKfXcoSu8RgUlfhWAAdYjbZ5gxT3Y5X7joFuIOS5qSJlKn4
	 Codn/qwb29JKh+h3LN00i34lbEniAQhomEZl8yE2k08D4b8TFsjSzDwoTJQIlzwZJg
	 EuIvV1np0tf3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3A7C79F9F
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178880463374.6054.17771248269847658749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f7efcc4bee55359ef7a284e354af5b2595edc5344952046712fa5f1b40be73
Date: Mon, 07 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788804633
