Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176471C5D7D
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767096234; cv=none; b=Fh3ltqy1/DdTtAxvJgqiU74qW9xqq72kdSQO9uDGkpvtsemAfvmcw9vPsT9EYPy1wKpkVo0FKVi0FDsARm2mcv7b8qV/ZsaBmh3OEooaC0A5q/+IP4oZu/ZY32t+jAFyCcN94VBb7xTwrhxHE6j5JEe2Pvbyzrh1QOHvlUpAIXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767096234; c=relaxed/simple;
	bh=p616aVr7ERGaM5bK3u2sIatHrHWqqxdCnsu0k4FCjxk=;
	h=To:Subject:From:Message-Id:Date; b=miW+c3cg6PFi8RPq31e4IIWMouTr7qfzb2WudMCm7/W7AeYLyvJK67ty6xn6PzX1q8755Efjd/4sBlnJJlcOKlvQmx3tNHPnYPbcT6tb78IW/k3Dl7X6b2OBiAcWjh5vjbp/qxclhFX107YGjWUgaL/eL5J4ctOYE3VMxRGYgA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPtRG7KH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPtRG7KH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E25CC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767096233;
	bh=p616aVr7ERGaM5bK3u2sIatHrHWqqxdCnsu0k4FCjxk=;
	h=To:Subject:From:Date:From;
	b=PPtRG7KHmM4AL+8GgpmVeD8a6nR3il7BME4iXTgAEap+5b/ZyW9B3gRVJkFVX5oPY
	 lDrOSIcr2Qv+Cdu+Wbeclv5OJ0NQqajmTjWPgY/irwmXJYcIAQAG5b8ISqD6J2dHnc
	 kpiETuPTnzz3d99osW+MJt1cbNCQfP3OYKIjPaZlZwLu+m4sel6/vf/mfvbqHnSwn6
	 LP7uH40J9pnN7U8s92diINZSeIQO2Fhip8URO7DLCdEzzG+nXrDCempnMS7qpUztIX
	 AEH+T9bjklTGX72ZZeW36Deb2h6F3QNkcTABV4BThwaIQr7uYHnnLC/TxhcuB4WfJU
	 qlJInx4PTbUIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB2BE95A6C
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709623357.22258.13457056600127022277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a9c35dafe086a0814516497167f3bd2789c5cd6e8d9148f1f9edf18d912a28
Date: Tue, 30 Dec 2025 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767096233
