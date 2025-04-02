Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA462E3394
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743591594; cv=none; b=FGWmZDNOWddm+K6fu5hpIPAYjpcHv4KG2GzW/qltAU3TthcUVfePlScchjRwgXLM0CHNkiJgtMgYWbDtVmbk9FpJ9bfpwZqUGB2c9rDw3o1dS1lh2JTodzkSEzW5kf6fuCBFhdsfl8GtxCCzGq/u8u3jI0mzlm4BqlUP8dbb8gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743591594; c=relaxed/simple;
	bh=6/STEw01Fs5LahNdY1stk3z+srQCfL34WvPRJFXJ9WY=;
	h=To:Subject:From:Message-Id:Date; b=Q+cP9dg37oYw4oNM0KM5lD6gUk00DlIG2WRqy359BtBJffz6fHvBbDLSoGgdZGGN1lbigo3/eCyrnszlT1dslJ8vz7g02uazCsskR19J36yvRt6nkNAGjmKSHapLHtWzTOcPLvxxtSwtJWQHasKXlYdvsFBgmiydPi8e1Y9ddNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fp5y8BMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fp5y8BMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C4EC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743591593;
	bh=6/STEw01Fs5LahNdY1stk3z+srQCfL34WvPRJFXJ9WY=;
	h=To:Subject:From:Date:From;
	b=Fp5y8BMl0Yj9ZLVdR+pzuRCXIBOG1JmsYbtytfv4sDkl9KXpH8WS5UrOLOoiWWYiY
	 kOy2ACL5q9uP0VD2pA6isvhwKjolA2LZKK65DDudHq1eSXvafmSCw21yB1GedQ7aNo
	 ZhC2c2SJ90OOCmnB0Q6yTLnIqYjjdQjA0C0x+V2G0y8fzz4RaR5R42VbPPpUgO8/xy
	 KiJRcj89zG9BCRnW58+Zuj/qJOGbx5YDyI5uTNCnYCKzGdpsMDn+I7e0wY2Uy5FggR
	 4xE+KPiTx7HHY3otEHv9O4zH540wpdpoMs/434oaPjj+SHqidqq9oOrptca+EKaLzr
	 On7lSX9nRMxlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98837C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174359159361.10549.12383073123539434889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb48951f5049ec8ac218e0e8b4969d43545dce2f3eac449ea7608383a6a8c3d9
Date: Wed, 02 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743591593
