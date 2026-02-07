Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212F81F0991
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770471234; cv=none; b=oIbZUYTVahH/oO9hkYJe+mEesx2+7pS1ITLE/t/S4LM2Q4qVVTjPPhs61FQaONnlMIBhFsuQkJERMwnOq76s6f8Nuyao1mmrMOnhmyAAYeXdeybLRoK24WGxScrW0tmq9fSX7vTD04Rur/ZfYIQI7QX7e9kw/TYurpmJnKFMkdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770471234; c=relaxed/simple;
	bh=E6/vbUvrmdQ8eztD4bk0TMrcRVoh1HulWM9xc2kT0E0=;
	h=To:Subject:From:Message-Id:Date; b=SY16FcKDxKgeJ/bltTV7gXmhuvkBXOdN3Q7Z2lW8lJZWP6k/l7/w5ELa0OlnaC+XK5coC7s3GbZGuUK7WLxQQ2dMJTnGcf/m/Ql0kAfQZ+Syb9lj/m9eO7gjbqakg6JLe3O2rXUoiaUqcLeKyIgcrtCNAjonroLh+3nsTA8ZcUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsfLFL0r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsfLFL0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0849C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770471233;
	bh=E6/vbUvrmdQ8eztD4bk0TMrcRVoh1HulWM9xc2kT0E0=;
	h=To:Subject:From:Date:From;
	b=FsfLFL0rs7+SVKqVfp6JYBykif3XvRBEh+DVxcU3SxqabR8lYTB3AN20Lh/KcpChY
	 wLDChHhKd9nn0+GrPaRsJE/GnFGRklDCU7f7vEQ+vsUKxfZfCDqBgBmqwH4lPiAJvM
	 aF4uNmOMLaYJ1/AwIKnBMTK0H/MJdu3fQzU0Dtg6hpEFjVWJ/qURAg9ZZtbDk1MdK2
	 5Px6H360+XZGfy/2GUaVjS3NGoeevWT9rsRC61tIsWjQy3arsF6zi9t5CHC530ATGA
	 hYDU45/QTMgBJpqKbSYA3RFCMUf9j9TZhnWFLDiAvHu6fD12f3X79mqdedU9FuBJuW
	 TzxPgPUhCCHGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A73FEE0AE0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047123360.29810.7605982744897037339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01e6b8845c0bfcbff14d2257edc05d70784cb599cf4e239e65304f5072f54d83
Date: Sat, 07 Feb 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770471233
