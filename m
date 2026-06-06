Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A5222652D
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780758274; cv=none; b=ceX7yqMTDp2BPHv27MzO+KLPPuaEyNAxuq+wwGbO8n1BIbINAJzPge0C07S05NbYTCAjiU/zEo0D8nusoy9ia8SS7wBqZMaDHo1WVvqRmhpuA+sLYi6NVGLzqLV9PTQZVw8hPZWBY4hwA+RdOHxCFYx2ThM5/z8EpoWIpp/9F08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780758274; c=relaxed/simple;
	bh=4/SPE/W6qyDxgsIbBwhEmWcuehwHeMm3tB2bqrLJQD0=;
	h=To:Subject:From:Message-Id:Date; b=cuZQdExhK//XrOQkmMotF+JyRiRj0Mg6wMaxeL7O+WIXQvNeAk00nIs4Ji00SDC2PeOV4FBC8UvoIm2sSF7WMnF+LOkNkb+xdizkHCAI0vuIpyJRiNXvfX7d9th+zKQ9JKbcYoMtsnlczQHKcKqw3kfJ+iXydWc72pX/mrLqzbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NK0RMtF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NK0RMtF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A32C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780758273;
	bh=4/SPE/W6qyDxgsIbBwhEmWcuehwHeMm3tB2bqrLJQD0=;
	h=To:Subject:From:Date:From;
	b=NK0RMtF9X6pyGeiNSqMhrPu/e0iMnzIC/cB1NdoQAnA6K8olijwbr5hD3wA+HdxHh
	 nIP26w+C/ziU/p7l67JsEQY2QOkpCLW9cPZnbArGvUsv4aKLYxgWVYOFi9G4ebQv8v
	 1MNb43ZY8FOcysrv5+2OR9ttRT5IA/XD5/O6lhT8ErEZWbrkjk7PmDsTaaj10TCA0z
	 t3VdHlLNSUMT+r88C2gda+m/MaWUWez6xj2Dpbqb6beZTc/UiVElbhLN3lq9g6dPX6
	 QCP2Jh2lLImDlAYu9+JIE1ZDx6OeKVAxS61PVM9tbleUYcJDK5wFJJtnyB5YVeKAYN
	 mF2kTFZ5nDb2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4F0CD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178075827368.15330.8865668323742564233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e0830c6f83c982b18e6a61eb57d214222abfc087ce7036013bdf534332f0ff9
Date: Sat, 06 Jun 2026 15:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780758273
