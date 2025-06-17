Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA32C2EB5A4
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750173593; cv=none; b=aXyUiqeIw26nrxO/VEfNKM0HdKbk43K6puqjLVPsXgG0Zbhxs02WhbFnoRJe3vVMBCNo6SCP5/c3m3G8oC02hbsFLsF4ht9u108Bm0NbXbfKPXD+2Ej7F2reK5ASFVZNkEMWct77Yyewl4sXcKTVTsYzrlrw6H+4zSiiiHsI7mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750173593; c=relaxed/simple;
	bh=zrRgaxefuY6nQBsRoliDH93l0a0JU8aP/dVW2RAVboU=;
	h=To:Subject:From:Message-Id:Date; b=byflQh2dQmRSbVOw5hhxiK28rufW3CHvd87WbRzWZ0yUuNiGbpg+quU3fhCVtD7rT4lVFDXTK6U+H84MzfOi+4oUTsJEoBraME8VFploIqXcFqYjEObXCyru6y3DDDWz8sSwBUToGBa5nOsPJfxisC5kwKibc6S6hRF83lmeLlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNzsUfkg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNzsUfkg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22FCC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750173593;
	bh=zrRgaxefuY6nQBsRoliDH93l0a0JU8aP/dVW2RAVboU=;
	h=To:Subject:From:Date:From;
	b=sNzsUfkgxhzEtx56b2CCgeNSmK3MytPMUcRShTK7IQb+g+JYXEwSlUlveFNSt06VI
	 E/1HiU74WRZuMc6kdqVXZFSBu+QBAXbpBS9BT4wXtvOCemGJRb5OIw+Z9yO8OpD0+T
	 6qS2PHMqDEqlQYdMUHyGo0a97kgnARrga7cTHu4RaonK2O7BQaTsJnC3RCggOb8ncs
	 GRxvPq65Qo5YIJfBU2lOWKu3W9SSlL8z+heJu4De1Xr6QyBpTarhfox9b+D1pJFYbn
	 1vA2SAJvlWx+JP7WBEhUmpN2ZqWhYw6I4PqWwKjseb9Pn7+58pFtdsJGZdrzOH5nLp
	 qQs/0824fstKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904C6C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175017359358.28622.16961036234077007091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8730ce8685f138f9ae9ea9a31101983a161a46a38baca0ff800253778ed26974
Date: Tue, 17 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750173593
