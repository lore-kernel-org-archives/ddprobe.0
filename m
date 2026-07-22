Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5714D3E8C5A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784750374; cv=none; b=ImSPlO4sl9GXAgIfn6XSLyS7klsgFb+PDxGhm7CwQQxgnuqbBWt8l3hrbfvId8N4ty3A6gdePsKct77F5cajH89krmiMbhuCZ1/ZPch/9NFFFWBynA4A4nCBMWJxVPM7tfiIT9eswWjXo3ExtYZGYnbTmwSnEERvR8BWuvkksVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784750374; c=relaxed/simple;
	bh=GWWPcRraOYnzu63ShdruAIesqhhDyxyc7uVqSutGkqI=;
	h=To:Subject:From:Message-Id:Date; b=Ff+C27oxb0IYvpJ1l/ZWa5aW00ZZKBJbPcYRdA/AKDLdS2tmzop3mSJBjw1rwoRUaN2iCN1IyjFSUFOgWI3UaTe5/4+QJmKiqltaMMkvTFp3FW6y3gl4saUaznqq07b5jcS3j0Wd8VG5Ekki0/XAnbOYI+otcwpv8+kfSq+NkjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ov/hfkoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ov/hfkoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD588C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784750373;
	bh=GWWPcRraOYnzu63ShdruAIesqhhDyxyc7uVqSutGkqI=;
	h=To:Subject:From:Date:From;
	b=ov/hfkoGZ3OQaCVGEcq972FWSzu69JejDtg2x6rxJ4VP/2lku288pOqF7tGUJioLO
	 ikA3qZIwMx6vaUA5LkVrrPZfnsglBWMzc+/5CrbKcQgxZsHE/SMcm35xEOI1ysdtNf
	 1DvYYr/k7wR2000EX9naAa6nXF8LusEmgIp52lvy12+/uvyCjclhiUo3ZeQT7zBCQ4
	 JuRS2ZGr7yTMICMiXY1cCH1q429EhR9l3aRIoqJDJKys3WS6FvxJO9YwGHWQdaFOn4
	 oqARW9vcSkj9iCdk5PbD0thrmNc1+tZ3x0EEL+wDT2C5UxBZ7yC+Pz0S8AoLySUiMu
	 jp/WMK/oWUWmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BA4C4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475037368.11547.8781291132117359061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b597a984f34f6684f2396630406c2ea9a62af51b6bbdba6ee3c50bb995261f4c
Date: Wed, 22 Jul 2026 19:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784750373
