Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B8D34846A
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781352994; cv=none; b=SK4DPVHihWm6jBQq3MuMXX2yGfJ67g/rRpBD0GGyvLrmnLyK1xmbSBvYIrCt0m1iaa4rYPIgbLiTtwAzFDnLknMo8ZVZkHXoSYDWGy//ygt0hDm3DLPlNwl5AadyeUGrDrk2jWq8fFGNdyauqReWAqtSGK7xEpnZtAF2U//Y6Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781352994; c=relaxed/simple;
	bh=xVkxPYx/cIKvatjZ7TyIf29lsUglhulSjt/Qs1JQ8so=;
	h=To:Subject:From:Message-Id:Date; b=WTGPiIOWLLE2b+XYuVzsMAN+qV1dao5HPO5ZmvClyxzap6U/xbC8jzpji9+ApuAHyYcUdvIKDx5hwJHzTBEC71naRcHR0V5MtnI3dZiWEr6ci2tlKHo04PS097EDXn/ptEShK+4L8IV8DFbWu8nGJBpJwQB4OfEdDhEVgPuMCWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7O/A7rp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7O/A7rp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF753C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781352993;
	bh=xVkxPYx/cIKvatjZ7TyIf29lsUglhulSjt/Qs1JQ8so=;
	h=To:Subject:From:Date:From;
	b=Q7O/A7rpxnd72Cyg5MNsus/af6joCXMMjC4Fqi+oCFpe6nwxIybrgaRS4KjBH4mls
	 T9H56fh7j4sn65DQwl9788DN4yP3+XKM3u52jfftLdF31OidCSn0vdAKhVf/9NBpkR
	 u8C5DJX0smNNwvnhHQ9UeVPindJcKKA+qL6uiyV0295OU6VxdePf3wiTPrRvnIBMdK
	 wjyODg72BKoTeAJAVm88jeZMOs3+OlxWCeWQEe9cCichXcmTePMu+9fJId774njkHL
	 5JhxnO9TUJdWfzybRrMuIZvM2Rfuowb5G4s27F+6dXT1t3u1yrqIBjZxmoWkaiyNuA
	 3MKrdiHa3bQ5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBE9CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178135299368.22140.2524830713773707727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f853c35baa7eac7a0255280d633e03b12f05e54f34598b94db85ce18bc07b85c
Date: Sat, 13 Jun 2026 12:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781352993
