Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCDF28AAEB
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771425294; cv=none; b=AOt3IHnBYVe3SPyf6jZuRTTlj3kz5wVVH8sa6XGlwrw4SMcdU1bKRzcNZMeMMmE1XCqyeYeOjqgY+Z1vpgTJa0JRYpgCTV1zKKQZcqOv1lJtrwCz4oBk7gzdx1TbiWFihk1BZY1f/EctVuBrJSg7SZrIkjM2D54ZL0CEE6hepg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771425294; c=relaxed/simple;
	bh=A1yTz4QfVZ7rtKAnnOOitV1I/TDBVL/88PyPdWST4jA=;
	h=To:Subject:From:Message-Id:Date; b=qytQ9EwaRdyah2g/BwDtd7XYe+q2tvZA25fVk95XuBVb6DxIwrRE9YVpDIemBryO6nU09PROJ8GRF9u37ZLdwlkuXbdQzNZHjkZfZfsY2OyR6lWrwhU5a9n3FnylHsSVJ+XTOL3OH57K7V7ZA6FZQzwgS80Iqrz9XlHe3owK+dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoFV/6S4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoFV/6S4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9F8C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771425293;
	bh=A1yTz4QfVZ7rtKAnnOOitV1I/TDBVL/88PyPdWST4jA=;
	h=To:Subject:From:Date:From;
	b=DoFV/6S4lwMHYORrpMQJobVfmAf1ua+b2n+/yJnJsD2hVIuDJNwHUxjrAuPoY4ZIy
	 7K0P+x1WQ7Pv1YOqTQEuggqcgrSGmya3teKS70X9X0szvv+s6kUJha0914uEUyRhPI
	 TaNkRuUoAWi/RDVfcV2zipGpQTUmBfd63LINOynpj2mLhjUKD7ROjUhzEiEmZOdTa6
	 pbK9ictkwp++3UE7k15Z9CQTYipvcF0uh9gxOVMquSd7cb3uiplWjOfnmW3bZGrjHT
	 bkVw34GMi+Za0gmMEG3ZCdf1XhLiH4V5fUqLbOOqmt59tdxd3aT1WkzN7wRJElfklI
	 4FfM5TsHvKl1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9601EE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177142529360.23085.15528817984487588739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bcbdf0bc503309f82b78603aad835741ba2b0052b51f8c488fcf6426c63163
Date: Wed, 18 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771425293
