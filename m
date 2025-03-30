Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664F6AD39
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743298794; cv=none; b=O9VUV1UNZ/iQa61sWfK34UVhVu9JAGBJkQbBurEoGH8L1ejgT28zE8BEeGKHUQFn+GPCZCGzBwdIKNLizbXLoupRDIIVSnV+Os75hRNNWjjM5wpRv8W4SxJQd0Mwjt4wXiB42v5kr2hVByGbjNO2XczATrVzoQGpdVYbsMHq+1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743298794; c=relaxed/simple;
	bh=DjqGRN+8u0o5lPpw44miYLENFD1kYgym3gRVcg3DcL4=;
	h=To:Subject:From:Message-Id:Date; b=f9qusle7YpmhFbKLXVLUWgqmbU3UeIzGLFEfObezkzCa/RXhfjBsEjcKQkOqODr4BFH2MviuV1aVOyxZ9/PUFkR8wBO0dqCSbLYjYzmLAvEUqS25RENwdmrOyF34qaWyLsZZc8yFqRGEtbeNx7CHD34ifKL9jpWgF7x/cuLTX+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5LOmwJe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5LOmwJe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA75C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743298793;
	bh=DjqGRN+8u0o5lPpw44miYLENFD1kYgym3gRVcg3DcL4=;
	h=To:Subject:From:Date:From;
	b=K5LOmwJeocaH9TkTLNQEKv+hXuT9CZ4yyxjq/riaRga7K2u7qstATWpdH+fcHYsX3
	 TKhupeLeGQjyw0InGVCvQ61WovvFV8CJ6iSYR5sYsFeq3fA2vAJAz3H+al4d82panv
	 Id4PbFBScpt4l0dDfCdKA5P/GL9Zc5AQPwAAjy9TfIMZok+J67iXPOp2cVVuN38vOA
	 wilkWAhXNRr9jQ9hvfjWm6YP/BqTGmLd6nIRer1mw3OTj1DnpCbvl9X4oH9dn4Og60
	 EZc7y7WJ7BPO3Ox/lWjHpIYW8j+ayuKN06tHIQ+cfGbwiRM/umjySLa56TCl3rLohm
	 QEwjgQVSTWXbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D44C36008
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174329879368.22891.11311361452142063188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c13b3db684b11afb80133deb44a705ceb7742daacac80a6e9d493b36364e91
Date: Sun, 30 Mar 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743298793
