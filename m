Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288B8156F53
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737559554; cv=none; b=tEzIuahgwWYmU+XOq3wI28LaK2iFbL1wlrSkNiFCRQOW1gPEkAvpK8/5DT+Byhu1fwyAEc6oBShiEUzNCteZPaIbm46rGQUX00WXPNj7IzeevaoCbK4I2ymcLG3CZg38HOG5uiaXxy7dbRf42sNy/YuvmvdpMtnfkldFNWM33tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737559554; c=relaxed/simple;
	bh=WfZ7LPXxKdCpFtXM0yCP9jPsI6jPsS5AQprDhH6doXQ=;
	h=To:Subject:From:Message-Id:Date; b=kftppXCj6pm1tSGONH0qpl5VrHhp5lp/aHtu+G8kaoCIqWXaMAwbbQjOIrLvW57nyXj26aEwM65hykfK9KJgMFvwAmOeK4mw3o5T+m2KJS8NbT0PQaA17EM5hxpAjs8GWHif+Kt/cqxFUbVIhJibgBag32WmRrHuut7We3kO+mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRMq3tQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRMq3tQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05E6C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737559553;
	bh=WfZ7LPXxKdCpFtXM0yCP9jPsI6jPsS5AQprDhH6doXQ=;
	h=To:Subject:From:Date:From;
	b=lRMq3tQHrLcWc1UOUIi+DOz5GvOiE0zdpPiw0JoZMrTb2ljOcG7Ttby2/sF8GnzfE
	 623PJE+AgYk8TrSZsbWzhrIkPrtPGj3w1zLECGqem9WaFhYAUHXxWgDA/yJyV3vi0c
	 CvZzq07mL1kD+k8gwm8wVwYwF+SrW0U/a5v8izLLBTVS63aE6SKmtTHb1enLTplwRu
	 VI94OnPjf0/p+yOviuCN5Wp0nLwe31r/y3lwgOBOjtUfNg4WQ81dqcAgY8vORw/1Nr
	 yQrrw63AZOGoNCkIwgQPRkTJLeaSY43m7GAIgOF9QBdYND973EWXbjsHdxaivxgkHA
	 zmDt0spLoz0Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F3C02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173755955358.15292.4548889167540208170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909d63a269bc2e08caec73bba8cf924393919d7a988c49b6e33026bec533d615
Date: Wed, 22 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737559553
