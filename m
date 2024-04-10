Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0061B10E3
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712724497; cv=none; b=EASyHuVtzlc31DhBR25iFQG4CGTagBNRl9MAPEjT5Uc+visi/+LaCwQdEf35Vt5Q0pBwgDVc7KaoLlCe5DqUFcIrciFpzjWLBa5INsSjPs6e+g3ftfS/FrD/9ttMH/BHyUB42mkWSNYxw8KEQ5Vj+LMyrT+cfjSzP+BaLhbwjRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712724497; c=relaxed/simple;
	bh=CrT24Zg8d/9x07HRa219192kRgRqJuJ5AXtFCITM8lA=;
	h=To:Subject:From:Message-Id:Date; b=PR7/Mby/lQ8wZ94I5fKB+XvFADK5qw2FhhTFsgfa5cvNF/czCs//qYUW1hh7kjoRMBF7m8IvOyLW8yr5c4gVzZCtMfaQqT+Kxzd+Vd39KdMCaP1Rmb0jz9ySQP9v5+hvkhzRkRRI+0M0D/LDBmxp2f3jj6FgJvEPTASA5QNtwIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPR9ePpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPR9ePpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B951C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712724496;
	bh=CrT24Zg8d/9x07HRa219192kRgRqJuJ5AXtFCITM8lA=;
	h=To:Subject:From:Date:From;
	b=gPR9ePpg5j0q0OS3SbGgNq9Pj1IbCsQHdQiSCLdNQlC0yU1cipvFr2wVI2StOFgf3
	 +svX6ugAUZfGz1TIv/NbVlqQaRUHsV6W5S+pKPR4hY9jLNGDQWUCI5dzXm0CEVjVpl
	 joP2w5/Wax4iV8+Jq/J1cJB0vjjJSDaRMwr8JsSxLqArnSYfH0mhnuM+KN6DMfayiJ
	 KYTlcQWMyzYATmMahmu9EwCGFi+wshHvD+SOUxYaJg6LckiZ69l3qKnSKP3wwrkLMS
	 mh70YwxCxzc+DxDoikn8GdhngZn1As9omWnsINcfuoHLd1mT7Qwcc6IGNRZpGRXxBb
	 Uf6pD06cMxGNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67FD9CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171272449638.3441.13904891109326475675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 171a988cb174bd875f8c54074d6e1d95db59e05ee9b0531898dce556cdca0a2e
Date: Wed, 10 Apr 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712724496
