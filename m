Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B7941B8E4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789206634; cv=none; b=VEc8n3J/m2akYJI9oFj8WfD6J1kjzJVLftg6zUNPXvOMU9t/01zTue09K4jsBxy7TNkuVBrel8ePBr2e24ZuSlhVVJQRXGt3X9foKIfk+v9VfiFbGO+rd4j219SjJc3wNLQDbXp9MWg3TcFVW5t6ocxaTo7iJDqZJ8Yk/gIPYt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789206634; c=relaxed/simple;
	bh=PluuTGu69N/oKY54UK8L6/CA96fg7JzVbqrxvfKaHt4=;
	h=To:Subject:From:Message-Id:Date; b=iHuXjbptF0m6s6vLnpyegSH80moBNiyde4RdhAWO+lO/Wkv9Ajy9QsRZd+zZphgQB6Zr9xQxLkOGzwObPbtaJSlOEbqmhy/JViy+DesZuo6+NDf32thdTR/LrYEYFG4L+pB+0Z3bQ2zuEhDtkK6btu+762QZqRW/HUFTZ+G643c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/UICPYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/UICPYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1006C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789206633;
	bh=PluuTGu69N/oKY54UK8L6/CA96fg7JzVbqrxvfKaHt4=;
	h=To:Subject:From:Date:From;
	b=r/UICPYJnDKfbMC3VIwJXpW+X9II/8EGgEyvZlExzF9tmFUhztvIukm1O6s+Aninc
	 XoC/A4Zb+mDaBd5PtKegvB301+yrwKrNWct59ZM6He8WxyswBcKxx/qmjF8mMBh/SS
	 +TsUaTtS4EIKXaeHoxtxFg+AQ3ZGU94OjRXjkZ3KTsPUu7uljxBNOgoc59FM39OC+s
	 WPlqo1huZY9t+FoZNw/DlUg2P+BeloKGPM7KbZRcyEmTJcUXvCPi5mX5gPDCwFTznl
	 CS7CRuCkd1lU/ez6iaVqhxN7iuFtfrYlCe4sCfjThhVp8kTmS3FlOshsfHix2eGRG7
	 Yn8e0G46IDcuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD52C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920663369.28929.15554372820857360378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa1691a26376aafe968b67681d4e99374dbf9bbde8da1189f74331e0d327b75
Date: Sat, 12 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789206633
