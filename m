Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354A8381E9A
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789510834; cv=none; b=t2z5Ii9jxJDv7v6fVdqyOScSEuYMTXCGV+hUjhI7EVV7A2J2/Lgwwyu6uNukPOSuaS3uRaEe8kyYbdH3Stbpfz6TXTkPos6YL8K/dl1rBoxBFGkO3OCYm6cC/QMDPpIxKdXX3WoZIkbjeuDNt34rJgLixIn+lsyEitvAFu31JRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789510834; c=relaxed/simple;
	bh=rJ4pkJtfHVW0kkD/8d36w45or59yqXdqnAuXwS6RI3I=;
	h=To:Subject:From:Message-Id:Date; b=otqR22mm829PHCdCC0pYWpw8xGlg0AchW2/VQrX67deqhnGZrxkbBgXqQJSxa+O/soWcahJwLw1beSJNxRiVq5b/baODoP0FgZ8S+tds7Kc/53/Rq2YpTqqH4cLXFwC7W931Mh4Q0VyVGW7l3SJe2LqSvUUZfgkhMwErQKPcTqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUvXRGwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUvXRGwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB589C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789510833;
	bh=rJ4pkJtfHVW0kkD/8d36w45or59yqXdqnAuXwS6RI3I=;
	h=To:Subject:From:Date:From;
	b=rUvXRGwRnCUJas5rMpBf/8Z0P5rO2vUfxlif+ZfzmDWyAyJBrGGHqrJO0v28VsVx9
	 5AUZmZCkTDwXh7ppZp1HSHlhK/Tq2xW/AVBmZME1ZEEzr2rTkqlwI38soh70R4IC03
	 KLRS1M7BDWZT7r40O0QKJnPxmK7bux329mGaoJscs13jizrC+ikJEnVt02zGgoHqWV
	 XtJ9B2RZPqI4q7P4ScrJ/SZlbzFQ05DEkHKEIn4jM6rtWqucjtPnzttAx/ZTgk1SPQ
	 I/rdzwzYxeziQnK2EmUeljSDMp1jKn+++4xvLpO5DJbTROjT2mvxuCicUH+jDKZNif
	 NXOEgEvGCd/ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90A1C88E77
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951083368.31118.9911074909423701438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca5403ad25fcbf411755769a440b4b6ccb1614337af8551e19aa4cea3a4adfc1
Date: Tue, 15 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789510833
