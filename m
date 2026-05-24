Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6275627FD4F
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779610954; cv=none; b=MzxbHDCApY8U8SQy6iuDG07si1b2KFMeZi4t37lTnoYnradoguZcpgt37yYekv4VuX92mCQ6vkV7tyQSQqTM8TsTc+aulVP7sXExErSnP1YfJHgCxJtvhJkkKfkG72QDMSoXhaLfPyvkwzfydMi1psNfQiSOl9BC9aM6tSLHyZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779610954; c=relaxed/simple;
	bh=NEohP5oq+LZ4o8mrlSJRqObVwYPpqftYz+bMKg695rY=;
	h=To:Subject:From:Message-Id:Date; b=FMl8Ym9EmoAYFq16pNd9rdeetuuhmLuHIBrphVNMeNHMMvebvRkdXqaIbF7viBb1HNTMFVhjXP/aOZ4GFfLkiKlp2TnACFss6MSyPJEyvGC/DsS+IQ4igtO2CgnWhM02Rogc7hf3Flh0qkTnK7lps0GR+U5eTohBrw/43hzVawg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnTz/GrR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnTz/GrR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC55C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779610953;
	bh=NEohP5oq+LZ4o8mrlSJRqObVwYPpqftYz+bMKg695rY=;
	h=To:Subject:From:Date:From;
	b=YnTz/GrRu/JJKv0j0WFU2mHt2FUd5ylsA9Vfa44GCKnRXCQK3FHzqITzfYl4Kpsrt
	 btYNaLx6esA+WKL9blboHtFTu9io7MOVwtXzZ3AC1nJA4KNP7G9Pr5Ynaj35F2H0zQ
	 UjFsf/DON+Gg2sSMO+jKEOF/xFBpkIXrMROLFzrsVWYBtfT5J2IIhyCfl9vflSZ4oG
	 3D+1e0iBoLrCFCX0OF0ZShpwK2biIif4uAgJ1ol1IAVG99b6oWpKt+Zs0j9v+qRrdZ
	 IaFpCZP7ZQxI+WzKPL1vJ19C5ecWQ0SZv/DB2uhJKIYM2kjDSMR2rXShIZg8oRN7LI
	 EpNRjJH8H/XpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4523CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961095373.7626.13081829879490084158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc525aa3b1f230a08a6ce0c376688b6a61569710dabe7e047fc3a16cd2ca6a68
Date: Sun, 24 May 2026 08:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779610953
