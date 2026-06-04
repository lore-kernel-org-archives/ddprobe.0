Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB0030D3F8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780611874; cv=none; b=lUDlphGym8Ll+U6PcHEzWw7Ttfmx6QUgu4t89W0RI1OgElSKBfMD95CfVdckRQsC5IxsR2pCtLDkonvIZD3zfSh6gtQI3AuuWu1SsxKIZqUqUwLrl3j5/UnMenkLqGk6z2Vmzqb+IeU5nnw3hr6BM0YAVVFoeBGJ93jOr8k2RLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780611874; c=relaxed/simple;
	bh=dBgduPWx7prh59BghgX/S7hayQPuDrJ7ZG+odI7nYPM=;
	h=To:Subject:From:Message-Id:Date; b=OZtklcd7fkCpdj2Y2as0DeSRb4sTzLm4n+G2HumYnzaiCAzCaWPVdZUmrZTNJB+AW/77MFimBOOvxqPCD0M5BGpIvvKWm7yTPCI9VrcWcT1WBHfSIZZ44H4/+CcouW6lmN5ZN0tKjI9q/OAKNU4HQC9ExUVv8e0hcnHuWyAsFz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1Eri8XS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1Eri8XS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0E9C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780611873;
	bh=dBgduPWx7prh59BghgX/S7hayQPuDrJ7ZG+odI7nYPM=;
	h=To:Subject:From:Date:From;
	b=N1Eri8XSZ6eFtkPv3HsRa+HhZY1TgMHmGMSOQiBjNEddD8yiPeZhmjod0G/GZn1Fi
	 zG7PZG3dtvtoXRkgMFcrOEmT9sRRidTrFXENaqm8jbCZd/7B+raOMU2iExnkKBfFov
	 LeGlQuZma24D9yHpH7m91S8kYYiJFyabziaAoPNiDWkTR4PBfs5J8pDYCNuwdCvOzY
	 yWLv9KGXgDzzEK/YatM9eUoLPXFhJ/bWAIAZNNQyps0m6yL48DoGIGnXd+/Js1tI83
	 jtcdxTuHnR3fkqkDX1Hb8tAynnUTY/s5Oc1/8NlKLdnq4azHI+FGoF+ekV28nYLpqo
	 0KqjHahw/TABg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0813CD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061187370.18767.15766107607381970505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4edd68c631ecea1ec28b33353d5d9f89daca1fd9ce7e97e2a2f5884bc5bbfbfb
Date: Thu, 04 Jun 2026 22:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780611873
