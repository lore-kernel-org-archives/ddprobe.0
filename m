Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABFA34A78E
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791737434; cv=none; b=NnBB2xcnko6V7ENKYFAQhHyTs+I7qVJ8Tlks0W8xATOImBLvIO9ZZtVdh8sdKjtENukk+FflYRLQDAavrjrMVuoHzypeQSlo6PSKYuiZCqyw37eLD0iSgXy8Qnjt8qmdbX1UTKQ/mquXegI3HyZi9HtfZZqsj5PCXSp9Fs8OQsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791737434; c=relaxed/simple;
	bh=eKnEEnWYkI6bogyjOco7MvhNNKQ3xh2i7lps/Qsf0h8=;
	h=To:Subject:From:Message-Id:Date; b=hZYCH47lSPgQSrSV/+AtZHZnfaoUDX+1vbHa/qaBjfECJoBJEy6+nt/Jp8HgQ/klH/PHrTDhsYfS/NebPJ+08SvVn18oOwQrO2NZ9sJeM4R2AZ6kzJWAyFNPLouijWqa5OxMPJBEJJcGTC72kLSdgoacD7Egwf0HbHapSKnry5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNj0OwSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNj0OwSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D124BC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791737433;
	bh=eKnEEnWYkI6bogyjOco7MvhNNKQ3xh2i7lps/Qsf0h8=;
	h=To:Subject:From:Date:From;
	b=TNj0OwSFZZWjKlSkKnR/nvtk9L7lg5m+ZwRQ6Fhhqbekj1wb2QaTFsgcp4pAiZI6S
	 7uGi2gBLx6L4/5PdT/E7MVnMKCHxicKu6sF47Qt4xkLmKS9mpQnfK0iu80jpYdfhGl
	 K6JrP+mjH0PQGfwqakaQVno/nr6sUiqXTOfqwwGCJ3ATXe90mj3sSEVq4YUwqVuXvD
	 zO++Bu6fPblq1NpaRngqZ8ooETg6wT8+C+9OsLfDDqw1RoiNt4hiCG6vWaOwNKWntu
	 FboOXuryOhkmS/z/Ql+3vtH2pgMBLUDsplESRV+lVG+hSKmWWfzb05VAiwKI8KuBJJ
	 Gnh/YSIoictTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD94ACA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173743368.13567.12370670223534617736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e84fdc45db656f36a7e1031d746b8a3d07ac41d0b12b5c8cc1ce66eeb432db3
Date: Sun, 11 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791737433
