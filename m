Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178B42F56
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762316394; cv=none; b=pOKvWgp7nZUgYR/0eUAS0o4DZIa1iK2/Zu26rt04VP8gzK6zBtpbAzNhE03WjgLVCzsVWKIi0FEv94X6Ow4R7fPT8ffaMwSfDdrvEAKWjkuFic2+tU88iq38F63UT4tK60oKyy8HFdzKKkT8dgwr/rbA2NIULsd0nK1408vtvGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762316394; c=relaxed/simple;
	bh=uFzlOcpHJgSlMZebbWhvqoy9FKhBh7hTY4x6eUjXVQ8=;
	h=To:Subject:From:Message-Id:Date; b=C2lQHY+Qg3yYi4paPhXy39xqzrLvswN5JdbScVGOadswwIjl6oDNEO47GrdNhIfn5sJav+lG9J2gq/C9tNjBUD/vDe2R7KmsUisKc29cGHVv+Y1MSRVRPbpOkreN5NZHO6gWQ7Nk+ADxnI+SvMboJN6/s1sSVbtNeUucngXDSdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzQ1i/TQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzQ1i/TQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E61C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762316393;
	bh=uFzlOcpHJgSlMZebbWhvqoy9FKhBh7hTY4x6eUjXVQ8=;
	h=To:Subject:From:Date:From;
	b=rzQ1i/TQN38iDLOo+TJm52AraevggMrpKUTHU/MZny+a9tpuYSgw9/ZWY/jtv8ghf
	 Lw6lHSOEhVbsoii66exeY91LkwS6Y2ecEJLI1QKjQO9A9d9AInwYkW2h/5qNwtwOtK
	 1RFv5AJ8sXcarwkkYF8BGFTd4qC9TY9uC0pcZeEuTs9tu+iru0knNfm56vlAEo5gFv
	 lhnh8KkVUPCPVTKzAF4SA2P9RiYUkF0TqyHrEtRqvMd8Wd70FALZqOSYp4HFeR7TvY
	 4hu29ayXOugyeUB0VZvICmf+QGL9yJGqo8Glw5F/qghE/+j38BbE0K6pzWfU/OzdTw
	 mH5TObb41oF0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916BACCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231639358.14473.8058269901693165019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7a3ada7ce75cf24e9a47ac6bc23d78fe5428d79c6b8d0f2a24029f75820ee9
Date: Wed, 05 Nov 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762316393
