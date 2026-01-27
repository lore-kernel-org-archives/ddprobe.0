Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A6D3A1CD
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769540034; cv=none; b=IPsmM/KoU9wtguHD3gIDQ2MpjoRV7/2na4Vm3drROXpJq/UuIxmI+f7T9VOzJqCThor/SmLrH2Evo4uuAC38DVVpNyKJaF/K9xAfHRM9sqcY19UvabwW+eKkOQUmROn2fstAoFxXZFqYqpzUATTkF1BcSTHHFPblz6TLrhYB/eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769540034; c=relaxed/simple;
	bh=/kT005Gz4sjnVPJnCftSpaaHWRRJ37C8VGWBCn4QH9Y=;
	h=To:Subject:From:Message-Id:Date; b=K2CMPDbDnO6EnU8RUXzu7XcZfRmk8X05TaPxYqGLfxlCQiBXxEmbUJylh3wxckNdAPVZtTWsftre+J3l/UxSk591v3jTHcnfDBEz/8TgDcSSYpSdY0k54qCfQkY8atPe7bbW7lF4x2MevhnGG7VUEPgsJWPkvCy10MO7B1S/jKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrzMfxnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrzMfxnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A012EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769540033;
	bh=/kT005Gz4sjnVPJnCftSpaaHWRRJ37C8VGWBCn4QH9Y=;
	h=To:Subject:From:Date:From;
	b=YrzMfxnIyA+Jz50+xx9vePGlsBHEmZbnpS7HEcWioZLEc+9mitct5Nj5bqqPVbcP5
	 r+RTbNmwI+EixrMY9FpmjxX0qd6xo9wWvutmbPZkQfrZbYlyfEFUv2JyztZBYOXy4c
	 WWTbEh+5ie+RYtOAfI/OBfe+nk4nJKBWJCGXyGs3pAvE6aGXfVHZiFQqIfINjnotyq
	 CsCXdT/5IYq1rH1VQcmZStqNeHMOZ4oigegT5OQ6wxrZ9o+tKj1SSToVf/VBsuFuZs
	 OlrEDjFzFLDEVzX2Y/tp0yXlQ5jU6EZ+0BV2v62Svgic8oUUF2jAel621O1ljwbAtQ
	 ueA5m8Y+69Heg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9114FD2FED2
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954003358.5986.10505591429608965695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3014fa00b06aee66464999a72b911d6d1a987542af7ae99d169251f6522c956
Date: Tue, 27 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769540033
