Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B2545DF70
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791730234; cv=none; b=ZqVx8NINdqZBvVi08a3l4VohEHOViJ/qMdPndwAcDCz/JIKxoT2/TdhgIHc+dKKolV6ZOvi2+P6k3cxmnUREbDc/oGyPHZngpgmarns7ZuDDBzGo9HjWFoDvsxR2uH3A6XE2CQd3Hdn3tPn5UsshqdRYHQl/rzlAbezYBP9DoSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791730234; c=relaxed/simple;
	bh=T5lpryg0ARBje8P970r6GCeyQ3JlGnG0W+szydm5Pvk=;
	h=To:Subject:From:Message-Id:Date; b=P9W2uzB8NqnDvob5qEX9z2b/SCalN+CI/hT5o4wBZlKmKhaCpUX5FzHFwxkA1FbrWMBUHAfFfp48DAMqnto1tXGUhSq57mWClQv07xKZKn+LsY9YOhvFpFDapMRTgpDw7Xs+EmAseF92k4zWUciXK4Yft64KsdVxPr7Bj+FKftI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNrpVIEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNrpVIEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB498C2BCFB
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791730233;
	bh=T5lpryg0ARBje8P970r6GCeyQ3JlGnG0W+szydm5Pvk=;
	h=To:Subject:From:Date:From;
	b=iNrpVIEtWKgLb62tF5ZPbc/W8kI3owTbxbPpZIYFwJwl524riF3IIaIpra7EqgO5Z
	 xxQWlP4dbkn9uaLaQ6I0Z7yZ7fYN247S8LRXhktjK/UqRHFgJkqfEhd/cqp6pFF6dL
	 Tmq4HTS+jHTqfndwYmd4zrkQwiSA5sMJdh5DWItaAEgwsDuvRRPuH1+67kVG0C2ZxZ
	 UKtkndcOWrsovitHjGTeriX9+HXNTRMUkxkaDp3khT7RUmDF7lNqOD4W+9G9r4kyLi
	 utMmEA2H/84Fm+VON9MZ+75EGIX7rPAth49g7ejUGkGqBPaoSj6zZdTdSQRs+Zk1Sn
	 PTddq1jnudMWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A999BCA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173023368.2743.17490459527713683624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9216968c41549bf5df2f4c824051a6aca9cf2b71cea126e7042776cba5b45081
Date: Sun, 11 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791730233
