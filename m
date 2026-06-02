Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD34356768
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780373074; cv=none; b=NdJb6k5FE7i+OFePc879nCsLhfraI+ECsj70HNDpcqjJG8hS68Rp8uyWY9DsAgjm7qJc1AMIjslxwthr8QBhtqEeKJpakMbeH6X7pWAQ2esOFwopVQc8+0K4vlAutBEx9RAKSE8+OfISH2/J0citStLKdVjFGEMcFzaw+8AGj6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780373074; c=relaxed/simple;
	bh=8j1LaUgQEFyY/Qkwp65D6pw3ldZzX5QyisxBe2CYDGI=;
	h=To:Subject:From:Message-Id:Date; b=iopbRuSsLdnejwP/2SMFqQTL8m45BSCqpiccwOwkseityGFeQOoYfLYeBX6eNaUH8EQaN6zAG00P+xl3pewdFZxRvvzhQx6DvsfRPKWar7z8tu3a5qGjXVVUvks2To2v/4dUHRlNes8OdNdKlLY+C7CnAGNjRpZgBaDPA5sOKgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8ow2x4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8ow2x4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC9AC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780373073;
	bh=8j1LaUgQEFyY/Qkwp65D6pw3ldZzX5QyisxBe2CYDGI=;
	h=To:Subject:From:Date:From;
	b=S8ow2x4UUMD3xnc0iLpcDhlFMZZBwZ7Z5YtH2Nz235I/U3eMhXoKOyE7Xk9PmmYmV
	 cnAufO/Upt48NAbyq9w5GBAZXsYuUkymL0ClkeeKDe6dWtiEP5wk4dosGvmW5K67UN
	 aSmQ6FlcBXrpuUnkrJ6w0hWlpv7cwqAU19mYggk56hDmfphd25Ex8jgWXH9Vm+LGJb
	 a33UnBH904ZE9gcDqKbmPAk10PY6QYxZ2QITWldorEjCNvoR0+XiwVZv2ejeInc+iM
	 Rhbx3RzDtwNMd33G+gNJiWfqQKE6tmBhzsdvJpoIOsvh90U3r5eqEYJU9hSPY/kMOF
	 K3ZGkn+ikSvJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82B2C5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037307368.24675.3332605603199956749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5271548c0876c331246df0971f79c8e7805612987eb845bc9f5dd5839a82a91e
Date: Tue, 02 Jun 2026 04:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780373073
