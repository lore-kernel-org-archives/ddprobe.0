Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F2949364D
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787620834; cv=none; b=RO27+QZFauTu5Z2R0SteGsU6eOIL97Q50DUJzlmDrKadcxwb4MN0Z+40G7spMWRUv91jLUjzcJeMBX4BNLybYpF9XiVWV/5PXr5HQKvKGGOeXCGL+SpF4ojRx+Ojse/OjvalvXtRAE6yBpdP5bxXV75egHXATSL1D1mBioBjhaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787620834; c=relaxed/simple;
	bh=x7F41zjzmDEIgtFbBm+TtMtGBdcng8hQhBsWksFgE1o=;
	h=To:Subject:From:Message-Id:Date; b=IRP91kMbJjOTtr8csHD8aXIG+ocp+W3PAhK52j+XhH/msgknxR1evIg5Oc1ee1vafquayNvfs5tZMLD1NFOP2cu4Pb9JnIR2SSKba+BkdJ308nPzezTzvzyfvwzQ6wPcKfE/oU0n+auIGAME28mCeRj0LdRhzBzBPGl1uWionw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wo5gVfX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wo5gVfX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47F4C19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787620833;
	bh=x7F41zjzmDEIgtFbBm+TtMtGBdcng8hQhBsWksFgE1o=;
	h=To:Subject:From:Date:From;
	b=Wo5gVfX7MpOD8cdMysh2e8HpvkT732quNtPTSx2TjaXDLNkJLXIchKpenUHCpQ+Bn
	 1zHQK7NmLOUwkqFQth85SusLzCCQ3H7gnOWz5KeZW/Y72gHW51Te49x8xHRjOF63df
	 l7ELfKhjSzJLSIAePf973ZGu9lSONnZXjljOct93MxoDHNr4ng/U14TgWF5OMM53tv
	 2fhQiUJjMfsrjBQ83reRzncr4cMihJ8XWT1tnwPQX1GBlhJI4DJdiuu3lQZC4RdOKB
	 vKnWbDvfZBW0c122fYGr9Rso+zUS8nLRtzmw+CTwPAnaPdGBddKVWdj0TYO16NqF+5
	 8xJkwkbJd/RWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7CFC5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762083369.11271.12752537717581088834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60a87ad3adf2583d4cf55b2395be9dae31e3388c9d3190897428ae8e686ba11
Date: Tue, 25 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787620833
