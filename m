Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3560F19755B
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746350394; cv=none; b=gBCLzUp/tpF+Q0G+PQ4Ek9EAUDHt04WlzPX8emgl3QN/MgRS5F5U7DGnme/nmGjthqwcqXUMNDpaOe5IVR15Qxl4MykvgpTw8MGvvJlmW1qOryIEkoxgaJweGNPfc5/rfDVJYiBR4Q8EfVBdwxjy/DDXZzsKAWOO94jnvJa/vNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746350394; c=relaxed/simple;
	bh=Z2iSuRgN8sqjrA0OU5A+J5RkITXaCQDH+ZqxamF6vhk=;
	h=To:Subject:From:Message-Id:Date; b=JNeP1mxpCp7LA+tsNDQFSunD3zVwyV4KmMPDLkl5zN5Hb1ABN3RP09nOskfsQBGk4froqs+p/Zjp1w3Jn9DBKxciKuGjf62tI4cGEEhjMcdzklN31x9NNUp0XePLQZRei3M9z2veR9YTU2u9Bq6GGvLNWa92A8l6Gu4gaXVJMv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOxdhn1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOxdhn1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C52C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746350393;
	bh=Z2iSuRgN8sqjrA0OU5A+J5RkITXaCQDH+ZqxamF6vhk=;
	h=To:Subject:From:Date:From;
	b=DOxdhn1MckklaguSLMV9qK6kAOYJoV2Id+c8vvxobppPuPbOoG/s+WlwdyBKa/DHK
	 rMA/edjQ6X9cR8Hg8VNLXD5MrggjvnlxzAbExb+qmoDOfRVXfIS2xg0+AEMaE6VwbK
	 PbUiQcwDDMwOL0e0mJmWB+xBo0C4Gac4APVYZetTqYRxP2hZl303ob/Yk0W9vyp7u/
	 OsbUn2+REBY7HS3BAzohcER3c7V7r0UkWfajeurbnyyXpYIYGBa8NhAM5KfxTgeGhY
	 X4qFNxNe2yOzfrNYA40e/e5LqlGB6ihvO7i5rVP9BoaT3qyqS/NmdvcaYwgMAGHBfw
	 iISB1gynoQA2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93700C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174635039357.24772.16496478199476123514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c3576d3815b1ecca26bfd52e2ad8bb4ad7c13d490a710712e313beffa0327c
Date: Sun, 04 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746350393
