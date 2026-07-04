Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590321E9919
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783166914; cv=none; b=ZVq60Rn20eJqbyWTcDnTdAQ25hUzEn+/CMIfZRHF0dLL23vV8xQdhAI6d+D1W8IDSA93KxKbb4kLrm+Alk01i4X9wuFoZ4nTFHNnJysW0esCeYCKZvd4/pP6azemQc+P02IzciLmSVsGt81CS1nkFLJ4sh0kIWJ6AM3GD6GqS9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783166914; c=relaxed/simple;
	bh=NlNnn5ZbBqHk0qsHMnttJp/wwQgtKH+a2SUs90rE3DU=;
	h=To:Subject:From:Message-Id:Date; b=Zhkk/4J+9zEhoeHPGXSkYPMrVLw30zUVSdUuETG3PLOh4U6f0tKhOzvuJwx4llyrPp2NxuTDeJO5zrgjAsYGARoigYOec872C2ez7XOOZUVg4KHPyUqE6CUHwvVk02urD+/6i1DGXBvinDkUvzRutCot9LEgPZm5anbeitjdWIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0pXy6CR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0pXy6CR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEABC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783166913;
	bh=NlNnn5ZbBqHk0qsHMnttJp/wwQgtKH+a2SUs90rE3DU=;
	h=To:Subject:From:Date:From;
	b=c0pXy6CRaoOijKCZsT0GJaVQTFhPQnIh8RHZPBIw7JhiK4H3jSC0a1N3dA+WOexYA
	 ynvNPxo7p4zsvb3nXqRcLNHEk2UtWI6j4HU6FBHNR1u1YFwZ1E/dEaF7cdfqAkKv2T
	 nT07r667LqscmG7+KvZ8VTMdFNQbC/Z0hIw9G465iFQM6HbhUit6i+wm1pNP4WDFf4
	 VyhpYO01Yp6jZtV+azZImWnI/wLY3G6DojNlbltXA6FbUo6ZpBig8sX51oLR40OlP9
	 A+ECFY8LozEmArJ8FFd43BZ5y6TBlmFk9j5tRSZNwov9LJmP+3EXMTUA2EldtnPEM6
	 U0OBCrW1ybbQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8745C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316691368.22238.11392810421075415901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb3e666d7fdc45af33c699e13ccd09ffaa8214877c3ea8920fa4820c44e89273
Date: Sat, 04 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783166913
