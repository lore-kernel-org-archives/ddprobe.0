Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3A4364035
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767975834; cv=none; b=FIC7dmR5qcCBavSs0+sDkEDqKBoqvLtQdPpvsAmYDWRiNWZCmKZIhBcA348TiOlFMnoBToMmaYsF3yM9UQIiGKLBleaUwi+b8v/aUJ4G1S5JSrfoXYOf5LUyrHkhbsBryoRGWSbzcEJtdh1qrson68vVFHLx/tgObf+aWbmdUMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767975834; c=relaxed/simple;
	bh=rtKkIw0NuszddjeOL5Jr3BOTRq3YlxztHv+EhbMFw5U=;
	h=To:Subject:From:Message-Id:Date; b=XxUQV3BDk8BsaFgiv6jcVxNkkXHSAVfUbU+kIa9xRkEJSbGlWL5OrhHWTDU3FXmdA5T6bK4nOT5G8g6pjoasWtYsR66odpf5bvqVWVKd9A7t08flM5t/+hJ7g21BSSrxg9cYcZO3svVucCU737DMHF0kEY8XBAz5KAtF/rw2XlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buJoWbya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buJoWbya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB2AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767975833;
	bh=rtKkIw0NuszddjeOL5Jr3BOTRq3YlxztHv+EhbMFw5U=;
	h=To:Subject:From:Date:From;
	b=buJoWbyad3RmIKYAHlQCtFoQ1Qa5y20l2mD0/ca9Vpr53StX4nghL2D8EKaTUYY87
	 WPsUJIqOkIXhO3D/D3/g8uNJEETS7EGrInn+dAkC63MWeQw/P8W7br3n1IxTRT0ZyC
	 efLC7TaErQ2xKLgWjzSYk2V9EXRHEcHGQQBicL0c72oU3Vg3LeL9wxzn1RRk3nAszb
	 /g75t3QGcmJQgtl0bEa8k/28KwFFZ1GvZwqzJKnaJ/5dVOcOiBGa/M6sSVyscGT5bI
	 uOTilZbpKl0azx/HjU8qft+3wIhYmAOrtHpeUBqhag7f4wFYDfyzy5Z58FCrdi162y
	 INO+iQmvllZqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90476D26D6F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176797583358.30482.1766403013855593208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14509662fbadb22736976093b98d7bb8103a2b059593e3c46292d19c5a94bd55
Date: Fri, 09 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767975833
