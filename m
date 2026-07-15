Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A56D1A682F
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784088514; cv=none; b=Mh82QqPf5/uLX6XY/4Y/OkG9o9/z2DZLyUuMODpITePbvZVK4R1EWNDPJ3NDXueqM0dRfYBRcHoMgjlPcVMCY09amnRF5snmk6GCR0gupEbyL8xyPKQ0FlyHD89zbCxfesKXc3lBZvZUAIwUp6h8z95hCgg0IivDRZs1zR8TjLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784088514; c=relaxed/simple;
	bh=NXLJmVK0xjJk8s1hGHh+tYwTXlPN7llJUFhDB1CVc98=;
	h=To:Subject:From:Message-Id:Date; b=VhUGB+SgVZ2azMmsn34YI7gzSWB5sVZnTCB9MqBW6rxZxOYHo2hxkpE+URpJZXPxwSkac71eee+1GqiV48n/t/uLiyKNVSyBryqsQ+cd9UKoz6XOSJuZA9wgwXjrJZ4ztWARe+RhX1T6ncKbfYplaTEDx8tOUsjSe6mz9TYJSuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nju96+ke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nju96+ke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0DBC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784088513;
	bh=NXLJmVK0xjJk8s1hGHh+tYwTXlPN7llJUFhDB1CVc98=;
	h=To:Subject:From:Date:From;
	b=nju96+kea4AS+PgqdUKm+dPY205wriN56M7tYZqF/BDxRi8dNmZaH7wtW7wxLyOff
	 vjNKSlM1ufNwOkOe9jTtNS54XnAiUb/ZyWk71AYcv8kQTfyx+Pez8FY97NwUlQP38+
	 2mM36c4jBVkxNNvZLMLFNtsjMtJSxAz3gk3YdDYRsqr21Dyso3yucKUt2GF6KepZZc
	 BYb4nCbYMD4c2BHV4kWZbbdzCK/DI/E6P/+8M0eUOkHq+gZ4wLguPAv+07fgURU9CG
	 XNF59cVSjFnQdc5ZSC8mNVGgeSjqydE941uXat+GhArjaVFfN+yce4rQk/QymfFe/U
	 /PHjkMcKEjAnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB235C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408851368.13832.12880992617362618559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86786425b6533858adfe840788c9f4eae581315320d0197c75efcacb7384f257
Date: Wed, 15 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784088513
