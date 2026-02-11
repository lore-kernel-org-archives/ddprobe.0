Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC99331A5F
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770804894; cv=none; b=HKOP77CI+h/AUNZBhiJyZOUJReGszlOjKW/M35TP/LXEATSehxWYQ0HXJ792EgR2LOgbAchDHRZnl4HtX4iZuvAYnDvTNysiIG9ym95nszPW94xLhwE8kLpytneHEcLZo517iGSumwgqFGGBzP2Zvz67X2DDpIL62smF+KKOxtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770804894; c=relaxed/simple;
	bh=Q3Ob6kYo2I9UK4ryH4f8BX0aZ9tb1jD1meyipHkoPSU=;
	h=To:Subject:From:Message-Id:Date; b=Un1jD1ulxliYwOeO4388PtL39ZvSpcWeCbKkZ5hgk8C5iYhTVpRaaz0HJoBH6DOsxnS+iB2EV4fvkY0TnODnAgGgzDhk7MerloTCyE/6oNoqf3OIK1o256n+F9ijgh7aVBvuEGTmguRQZyIFJ0z4ts94j63EW5w5rsLmWacHe3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giaoPKPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giaoPKPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC70CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770804894;
	bh=Q3Ob6kYo2I9UK4ryH4f8BX0aZ9tb1jD1meyipHkoPSU=;
	h=To:Subject:From:Date:From;
	b=giaoPKPgkzgc7V8v1kTCBMbkZCJplWLcaoQZ8uRuweCB80464yqb4uwYw9qekw849
	 RmAWbAhatTXkPRQJ4B+mISCB1oGmraGTwmCwzioRa3MmfiDEjrbyqgu4kjLFphumsR
	 S755cIaOu08lYzW+CFPDRjB2Hz+3prLbu58fjkWsa2ta0hZXd1+8H79FszJGQ7Ekk0
	 I99LVE3eIZLL2oe9Z1BowV36P1aj9tTE2seUviGCLoe0oCtD4GqCn+xQWf1/JRN8K+
	 Wh0rNyXNLiru4A6ckt/8CUZYajA4kQaRJ5bOhyoQeub3cy/F8F6B6UELAzRQ/DDlHt
	 0b0jXEhjY+HrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D232BEA8125
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080489381.28831.4828755994830931141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4d947b97d8e01c8d6b023e971f58a2f9b9267342a12ed80af8190052ef2bfc
Date: Wed, 11 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770804893
