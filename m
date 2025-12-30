Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1480913957E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767078234; cv=none; b=T0TQyXlycRbdw+L6eq4yPmSTpt5bcEVgQnDxZRxJKubgYrr+R6rV2KZ8GSfrKtt7qSSRG4iE6Qsji6bCRd+683gq8KXNX2lAzCQSCKmsOs1SBTdUvYyvKhN/qzlk3gL1zvu5UtvOr8TqsB3ll7bIQSRuMMGQE3pB9HvJuVig3YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767078234; c=relaxed/simple;
	bh=6mfM1qkLTgmGp4VGol7VwcfMbWwZalV6R4PZxiVbAjs=;
	h=To:Subject:From:Message-Id:Date; b=VzfzJZbZ/cCTP/q73j0ywz7jNTgzLAku5C/ys8yxk0ILU9o0bOp9wHXIm2L/FsaaGLn14+Te4SFHNn85uEgZVYuWT11/Z83vyJaxp5x55Q6WgdJE71qL+v6OfUGIYcumAO5rieVJ86QsE2TGOBJIsJz4uF//zrdS5x5IflRKHco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UglT2Tas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UglT2Tas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBC2C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767078233;
	bh=6mfM1qkLTgmGp4VGol7VwcfMbWwZalV6R4PZxiVbAjs=;
	h=To:Subject:From:Date:From;
	b=UglT2TasDzb7mfVHxK9fFOJTt4ebFRKe8nu2DngtG0kluljoe54EN/oLJE2wJV+ma
	 blqWLlFC1B53BD5lURj3mJ3Jt1wu7iWh2eIEH6OE+THLKhkz030kF+QoExVdycTvfV
	 ZVbE5cXGrcqwP20CM1yNoEld/TwyiMNMEAudtEGIEipn1Hf3k5cm/OwODIe+PFhSdU
	 x7A6qxnMmRumwHHtOTu0q1ivKXYEuVeFqI3roYVipUV1FFXx1nU+HND9gp8Xg+GZgL
	 fD4GqU6Ey5z5ROZgjsScRnCoGQ3fixi4RX7tYV1FNEk+i8UGhhUGccT6iNex/6K4lg
	 Dsb+HRt1b1s/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910EEE94118
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176707823358.32032.7210335475075351074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8935b55b86f6eae6cd4e975a94db8fefcc85dd2e321f44b8eebd9768aff09d
Date: Tue, 30 Dec 2025 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767078233
