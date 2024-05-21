Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D34821105
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 18:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716315803; cv=none; b=LxOenUMBdxfeobLlHhi8QJfY9UUMJDqVwhlI5GsQCn5w0c5Urow+oTZMyoaH+nNuj1lgrSkLv0wkYtCaEjpSpraGZvCOqznmE+t+5TsUeVjP2dU8anmjA6cStc9XTeoXrBdHIOmkLBFvQX8OmZoUHHrkqIeKd1NepR71JWDEYRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716315803; c=relaxed/simple;
	bh=aRXaWGilrHPSUYkOfZ6RZxBczX2nXRzP3UHJ21Vpgwo=;
	h=To:Subject:From:Message-Id:Date; b=A9nI+tD0vNBGv1XcXrpmSk50KCxYqha92N4pvuqqD0s92h1Re0f8/jqgB+oncdUXZcBOEPr4WHHzUEB8lwDEs3XUN0Y/4iBicPDo4DubvdVr6Q00fnNZ2xU1up3zA/6BLYb56wWH/ZOJ0Wr4rebFlt+qA48PHuRDL9sj82tV8N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Au14LkQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Au14LkQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E82C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 18:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716315802;
	bh=aRXaWGilrHPSUYkOfZ6RZxBczX2nXRzP3UHJ21Vpgwo=;
	h=To:Subject:From:Date:From;
	b=Au14LkQ0MN6rj17KXtcXg81Y7Aqd9ACwod9mbC7nXFbFuSzizscJHugPRs1eNXFzX
	 nSJVq1EQwgNlBeaawKJPhxouTBI04VcOwrGBXbGYecd0ttHrYkyeaFT6igkIad6aWd
	 juxuAI/b8SI7xhZcZtU7ZdnNRdNvHiIvw8685jq8DfUsDiSWRQPi+WVCQ6wyO6BftW
	 uQSRO3FmX7YZIPJmPrL5hYJ4QCF4I49cOrIs6yDJ6UxEoal/AWXezX2qRtYF6oNNfM
	 +KwduBimqgPKFI5rpjO3EViJsVfdlBxa+2pUcZBWvJxZKvkshRPxC9Syovod3zcdZw
	 k3LOB+YTtmaiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB95FC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 18:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171631580282.26614.3540835584636883938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4140d427535bb0b1f812ae8543485fa819d98163f9781fd85d2ff94fc5d360ca
Date: Tue, 21 May 2024 18:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716315802
