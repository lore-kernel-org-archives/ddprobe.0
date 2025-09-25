Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332E83218D1
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758839995; cv=none; b=aAE9xskmtaWa4AfM0YZZ7wwz4X8jCF2MaQopYIjhIcVTgcupwTOsHkks+SGq2Ncft8axXXtrQ6tS90Jgz8pxuvr0xsQiamrFkFRsFeiAwgsyTeqhHwImvi1a/oq+tGNpnI6e9P+nuhRag6B9KvMqstub4ziydLtEWkdG6JtEuPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758839995; c=relaxed/simple;
	bh=VoD0Db2umRQJRLDZaseDpm8lHwOjdSx8tbeE3bxjiow=;
	h=To:Subject:From:Message-Id:Date; b=rWx9w2oSSCzTuio/IpcDaqC+KB8Sy0hAYlquBxCgIFYLSDf0iJR9H1noV8Una6hywfhf4hM1C9yI5SkJx05TtR4VQs6HF17c/NDlhOexy93ODnpydIsy7qx7bVg1/OZ6/sXniYei93yE46rhRucsXcU8N41VJZOz26GSDTJO7Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ayk/EPdM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ayk/EPdM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A22C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758839993;
	bh=VoD0Db2umRQJRLDZaseDpm8lHwOjdSx8tbeE3bxjiow=;
	h=To:Subject:From:Date:From;
	b=Ayk/EPdM/r8YxIorDZ2S7FhzkzOeRZMzYvvJT+FdjrEmELcQZ8LS/kLTCFvSkswDI
	 dPJpg7O7Jbu0kXFUmGFovF3kJfJXaQUX7h89CQilR6emsnsiBVJ4NKk+vvNivJQ8wR
	 wyiTdOFoYvJE51teZdjgr6tYlPHSat5Ie3JHN3FdQixpNfEiAr3FbffY/CTaBfIM/7
	 O3xwAPbKUKmwuyMUkvzE8XLOvNdp0J9AWLDx1Hw/6VbttsPC4Dhel/19Yk9uXkZ1Du
	 m2rHezwKZOmgOSOMOg244SGEAggm5abBZ2YWdmeeRRJXh+kNrBf6BNserHMu20wor0
	 E4bEElp1t9yLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9065FCAC5B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883999358.7996.16649693874733928937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9ce06f2f5266c3f437704b391e2d7b16fdc94f5e53ecd98becb2b7552381ea1
Date: Thu, 25 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758839993
