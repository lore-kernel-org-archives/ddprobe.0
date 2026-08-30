Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47ABA243387
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788118234; cv=none; b=OpemYLAb3HY/LWygPDFrlOXD0sGtuqu9yKJLNx3jLptS6Gz/ryB8y7I2mXwc7luCbTXOSKI94MU9ScmHnfKJDQlY9cM/LS7IK1E8K+dyxWop5sUYw3wmlLql8kWhVcj6d0CZNaVitjeV3ywgxhA+/NWW/c5he2GN7VjZJZIpfcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788118234; c=relaxed/simple;
	bh=33cOt4Q6vz7KVXPHh+zg1cl9L8tRBlEFy6OJrpkqDUE=;
	h=To:Subject:From:Message-Id:Date; b=X/1lu3HG6YORJnXAYqL+EPcOqMP+2vAW0C+H+k3uFePAs5B4xJYDlDleS/0aEHzoR/653erafyhhGwY2AiTOFySvvx1YbNC+bzefqBmKV2HwAfj0scYJmZKKuw+Khaw5qsUh578boNjJGQwxTo7MXtT2pBdHr1cCE0FOcaX1XGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jdv5XrwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jdv5XrwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0F4C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788118233;
	bh=33cOt4Q6vz7KVXPHh+zg1cl9L8tRBlEFy6OJrpkqDUE=;
	h=To:Subject:From:Date:From;
	b=Jdv5XrwVO2PCRqOJoitC5OWmi7GpP52Env/C9pjfw3VvF7QdR1FuUkCvJeTgBTPLD
	 T1Prf7NcqgGUNrulRgoiu1NwD9K7K8RHWYHua1TkSNEGCAR1cpkH8gqtnEJP+SFpA9
	 Fa6XC7rKHrUDw0KagyrQ6zA/Q5aFRtdJ1lUPwc34ELldzXv96thHHdDTBpg4QrZ5bi
	 Co4foSB+8o2Qh/Zoda3Rxo2piv/ShJ/qtiLohgwpCLfdxXqYHAGhLOYrACV9GITQI0
	 L/IevxzG0CVR9a9tFWl5eUZ6FegoLTT6ZubP5lF2b9+Uc/rr+GbrD/T8GLIFwbcGaJ
	 rPhSMJt7apnHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD765C61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178811823368.21191.3514272812487407075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e0e08ca5e0890b3c8212ad1b7a012b072bb4b683db0eb7ed86e470169bd916
Date: Sun, 30 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788118233
