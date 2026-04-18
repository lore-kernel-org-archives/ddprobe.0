Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED1D23D7CF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776519454; cv=none; b=l/ugbpL75As3h7baOG+6v9VOA64AIe+Xe7gGsKsK2yuE4AKKeQwSYDsUtqLG5lh9lQXWXkL55BrSHd3UNs4NYUi//LqrYfL4gasT5BM2cMD6J/xJ2QIyQwmyhJMUYmxrUeQ1hdLpnsb8tEus9y7kYs7uwz7cXBlTFtAo6CLtZtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776519454; c=relaxed/simple;
	bh=N2K6kMCf8rwzJpmUYqeTN931qAHInJtrnmU5mlaIFKo=;
	h=To:Subject:From:Message-Id:Date; b=aw1gjR0YbO5ItWAa4T7LoKI53eRhm5zm04kN8ifdESqydQR3DbQVKk3pDwjAdTR66N9O0AxFLoNofuvyE9m9eJ3WdOzT1frKZTLK5lmFcAN5VkyRzJIX+PIIyZVdCDta8ALJqaQFje5OmDV9hzv/fKSh7du2D5TocY558++xZqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tadiEp6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tadiEp6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19DBC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776519453;
	bh=N2K6kMCf8rwzJpmUYqeTN931qAHInJtrnmU5mlaIFKo=;
	h=To:Subject:From:Date:From;
	b=tadiEp6XkNYPBbuV9k4u/ahi7CJohYDR0sm+WSN/AGn7qQxWaMj2pFA4Ifu11GiQn
	 2bGQ7VWp3xhiL3Kk2bay40aGsZxz7WhV7Q7IRbfr+EewgeuCEYCogb1J3vV8UL+78E
	 npBsjCM8TE5DR72BxNvydplIDbbH/TqdPuEW5XjczHS0iFh/3wGCiSLUnuzFycv43b
	 BwNq+Ajr/aecwq//oeJQg3TOzMmH2vZvfvEe2hyl+bW3NUq5G1d8Rja40YBh1vMQXq
	 3Rf5/YHSbRXFr6ttcOzrEkjhEgrlYq76djHnwbBou1KeywDLPcw/9z+Y5lov5CywzT
	 qgHsnOhU3/YKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF46EF99C80
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177651945368.824.493744449350249499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda9fc526c2f055dc1c28d6581df77d25fb6e5f6334bf7d30a12983a737f38d6
Date: Sat, 18 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776519453
