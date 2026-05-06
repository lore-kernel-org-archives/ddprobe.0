Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83D3E234973
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778044654; cv=none; b=ogS7XDU4nm6K2NQFseq8tB7zZp3YfPeGo37jKuKgfO5ME+xG9DL6w0R51hhd6ojNisMGnVzcelHkbAhPaRsBgKrhnc0zp8Ur/tpW3UvEhQgfYURbtzdxMiLnIBd+MV59KzIUrc8+UG0uhuVNfnU9vXdZyXXe/GIAqJoclwsyDr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778044654; c=relaxed/simple;
	bh=V35lVR0z2pgOXl/kKu0kU0ei+M2ts39Bwm+IQo0OJuk=;
	h=To:Subject:From:Message-Id:Date; b=WfmO1Izzpl5J7jH7vk8Es24pTe+ec1kPMix7XrDl9DkStCYWKHU1v+c0o0cX+gNhFHnNm11xH43MqW2grleTO2VenJKJArqI3BsnFHnjUxF1wvkN2oYkGXm9FuI1M6wUv8Zc+/MOnfC2GvoK+NRqoSRZZ0ieqKMjLm02A5a3lMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZLeh4QK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZLeh4QK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24E4C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778044653;
	bh=V35lVR0z2pgOXl/kKu0kU0ei+M2ts39Bwm+IQo0OJuk=;
	h=To:Subject:From:Date:From;
	b=SZLeh4QKTEHko0URBGEQzGHQdiy6u0GnAmo2SdQB6J9tAJJB+HJSzq7o4H795RBCc
	 1YEF8qxJZmewGH02jcJ9MvLSo93j5Vqx1kMnCqGCSQTAFIfTRNASxK1ZQ29hNRyhk2
	 V/R8K0HANWmT6M0OaC0uGBD7y14c9BOfvuWMASiDVWOJdXYUrDCgZnvpR1bfqWlyec
	 MVDiEgRz+WWpC+LnqJRFnHqyiEhCG7xjs0b4UCGWE251tGxUSBo9XKT/OBsfT5J73I
	 0YweI/3zZzfJzxxVEOGyV9Hkb6GLLeRiwzi2Iah0DIQCsIPg+QP3v6PfmeaBN03uz6
	 9D5ZMmOogukbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02AACD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177804465368.19082.5805255028972290641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a4aae1bdd00831dc8fbe02234003b5cf3ab34389cb3c20c600cdbfba331356
Date: Wed, 06 May 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778044653
