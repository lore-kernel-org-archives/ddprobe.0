Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2B1399CED
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779543754; cv=none; b=KMVdwv95/f0oG9NPxVSaqSw95EwzQeiQBRZCUWP8PzMblkVgI6gqw7Nqj7g2DdvQ8BGPl/lESjhRoFxz8BbXEZ31B2D3rIZ1+4eUYd8dt968Yfng6niBZIQ8l3fEzp0VKiTbJwbCTPruFgvLi+gFw5J5uhiJE9pMjGY+C5aZQeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779543754; c=relaxed/simple;
	bh=dzvuPkCxGz+tRzTOmg7fNUvAnwdcfreecjWlW2wFAn0=;
	h=To:Subject:From:Message-Id:Date; b=UsMBzjSxZUUSX3tJoG83/lWN+Qi0YW+hCi9ZIHKhS2AhSa0MyUd/8arzYrsaFLArtrkuiXAUlKTTmR5cgoYq6cNpJ43DOLmooltC+QKpXV3y8r0C4W01bzp4scr7dMdEWVProSdmOh4GjkjnCp80/XXiEqhZrc8Wdr7ktELToaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsXxA74e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsXxA74e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4277C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779543753;
	bh=dzvuPkCxGz+tRzTOmg7fNUvAnwdcfreecjWlW2wFAn0=;
	h=To:Subject:From:Date:From;
	b=VsXxA74eard01LNYA12SYRGnOgXA7rVf9o7mwjwR9h09yBPP2KvXeYoy9VwBtweE1
	 UliulmmI+bCuFR4D7PtCwoagFKVCDY3+q88R0sHyTJD8s3bQM72Ur8SPWr4VlRHLDU
	 /NgqX1auGuC7Gtbgo9+IgrK7a/aG7P0XaNZuXMV+4Vgj2lu7oBeK0vS/1qPFcyFaNC
	 DHQkVKM3QUkGosfcSfx560+Qw+lOHPP25GD1IIqhtxyJZ0KBC/o+PmZESI9c5lfDl2
	 TGDaxozxAPseRwOXKqlOIxlah/YsMAOyCebKv1rwCmFdBkAF/qzUFIdBjE70t25/Nw
	 9fKPBj4hCKnCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACAECD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954375368.26921.4835149081020705936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d14d809acd596bb0ce6dc0b683dec1129ba3079bad60f3c5d0f33e26f4a7a6
Date: Sat, 23 May 2026 13:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779543753
