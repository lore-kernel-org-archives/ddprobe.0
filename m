Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D5022CBD8
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748680195; cv=none; b=LV0HYQ305J1AjYmQhMwiW4xBaZBcynCSLtukcvdQU1bROS4kqn1FUhZXXKbRytDptu1P7A28QWqpezmzpvlCy7dkjiBqQi57VZowdfIrOc5xERKUYZoCKuY+VqNksEz+6FFiZFkTAgkKB6U9a6GXN6LsnwOkBUBSwZimt0qQrEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748680195; c=relaxed/simple;
	bh=7z0e0uVeppbWCqXuHyuKYsYGpAOsO5lVQbyAJFC3xtk=;
	h=To:Subject:From:Message-Id:Date; b=IJJ/rDSKR/zZdCfIVclb2fjYUncd8jCDAs4lpVKaBL0JRsjXE7utXA1zmiTDqADKfaLhwZ4EN3+cl19XAuWFkFlGmTdqtXtJ+cmR18U+aACPDhYw1jFGb+WVH5JaZfX4vx+5m5pmIuWITmnHRPsJKDTWW9m5XweXgEazFxSr98w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNYmdldN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNYmdldN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5505C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748680193;
	bh=7z0e0uVeppbWCqXuHyuKYsYGpAOsO5lVQbyAJFC3xtk=;
	h=To:Subject:From:Date:From;
	b=SNYmdldNSsxzjuhbEEGZCyJ2ZHbOleDeTw+DYBTrN4or1/zQ7+n9osz/6ct7D7EJs
	 OhKvQeCNHZKX+3OW5Vqh9o3kBMDJ0vMgcyxfCZxVsTvAjdEGuaY0wxCqLIZ6KWYmOD
	 Zvy+m6p2bJTJ/E0XY+P0Pqo6RDEV3MNoNSn4qrl2S0VEQOpqrtVfRI2dn5PBcerNtc
	 AZMSZMbQrFT74JjpGDDLPLHMfGK12T8OOlexoZWwp1BI/1fgr8I18W6ZDy4mqr/IvK
	 Bs+wnfoMdkNex2razB/ptXvZ5snhl47pRhX+GgjnljccN5EN0bGqYoPp9FNyNUUEAn
	 NVZ0vBB01U3Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BE8C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868019357.5711.5968630983521944971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3407084dc5fb4e5b1da1c49fba7b9845a94a8bfa5974c8e5475ca5c6207c122
Date: Sat, 31 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748680193
