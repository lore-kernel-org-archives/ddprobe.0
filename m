Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB362773C3
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779651154; cv=none; b=olIJi2+stHjTttQiAhgPu5n8sAvEpK4a7CF7ghXPeQO3jqIdPtZEd8j33YHbssuVpeWuNXNUcBTCmVXPFtQWibu3i49XHTt6yD2VsjJgU9fXzKaguLIp2VGej0tHTkbYgsgQZTaTrw+9fqvvVg+9JIuFJXkUyFp/aRRbrlollNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779651154; c=relaxed/simple;
	bh=NsPSXoMWoC3JifvQnnqDcPcNMmaJomx6UriuE/q8KGc=;
	h=To:Subject:From:Message-Id:Date; b=udQaCBrIYzBiW6MhDaWiLoLe00dUnduN6F+NhKtCyWYobXDG1i+VetgZcJFxUIgQXFKopIsAfu+7nlDKQtNb5RHl/k3JeGcrwIctP/B0I3Z+lNh3654Zk7ydrwCGnLL2lJcYI+sZtbTyBgQnA5HZ5dBDJ8BFAXSJrbhZ1DA8C58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZD6nt0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZD6nt0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C531EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779651153;
	bh=NsPSXoMWoC3JifvQnnqDcPcNMmaJomx6UriuE/q8KGc=;
	h=To:Subject:From:Date:From;
	b=MZD6nt0O1hMNk9Wc1rPje6C/nZXzXxf5uSIndYRz0Jf4fJK9K43KRtXtZfmT3z6jB
	 3seV82lxFS/8DtiiRHYXrSXZpdD8JyDqIgvxyqRWHyQP2fcIxgklRao9k7WQyVY9cw
	 7qz1v8Hq3BEd9XwQw3FTCaWNqSuOAMT5fLJhvDqN1D2HE6eYnst3zASULiY5Thyxmq
	 s2DKKnxX1BIv8l4nkdgBFXBM84i7r20U3v0SypUje/M7rWQOBJIIT+JC1n/H6B2lZ1
	 /fm1OKoMX2brSnDQ0226ydSIv+V7X4iT2SVp+oGAtcF96UKVJax48JxvoCvXBQB9XU
	 OMoMG8MfPLVhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC05CCD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177965115368.14889.9138127273729896138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 466172778657c4f23aabd1c7f99b7a8cafba4f6e4c4e0bd65a7f37720548c6cc
Date: Sun, 24 May 2026 19:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779651153
