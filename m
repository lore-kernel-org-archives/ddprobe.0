Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C23E7F
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 15:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720969823; cv=none; b=Qg643tIzzMGySMptjSwEOirpEln4SJ9Yf4lanItOSt9JxAKK28xmUVuVIqbHYHaPXpiRXLoG3rRkipZq0OFWM2uYgnshtPQHa6hqrT+ew04DM/wqIKBonZvvTJ7FHcIeKX1PPo2VoAVGOVlj8KgOK8ujvjJTSINbpT38sP4msOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720969823; c=relaxed/simple;
	bh=wLOZJwbemiyaGut1yKFYAqFvSMfjRHdw5JHWYz5c5WU=;
	h=To:Subject:From:Message-Id:Date; b=hAbAS5FoGQ844JYYR7VA5Pb7CBr0g9qe5ki6L7GCuZYnekMu+RYV7rFcfM9OiwmWAwdRxRKxAlhX3p+bApM9VWpihJqLemtI9ZfVYTTbhNBnGXaDSSWJUCUNpVkjsPVMM4YNEZH3wi4Y0SxAyOzIr+ntSSP6XvrQeH4MvqluQuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjCSMdBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjCSMdBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EC4C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 15:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720969822;
	bh=wLOZJwbemiyaGut1yKFYAqFvSMfjRHdw5JHWYz5c5WU=;
	h=To:Subject:From:Date:From;
	b=ZjCSMdBHJ6W9P4LLPz+PwNS9EPfx58cxqabpgBJWwSccAcOlFY2YUW/XEL4f57UrO
	 7vw7itYlRu101X3idnHTc4JVhAt6ChSO+2ZC8P5gRV4VuRPWuoUW7w77jlS7kJaCYo
	 Sen2kLkclPi100x5fa/0YtNxZ0WFNdzID81LQwWNf74wSciYt6nOfuG+rmK4FK8hKg
	 LbmZagrkkHG4ki+rFtR8Cc1COJAcSJd0WmvX6S0KqG/4zr4sRzuTrh2FvLu8yCw+qR
	 iZxs9fYHwYpbKFPlELg60xW3N+8K/OfyukjEmOglljwaAQ15Tly6PNlBcLtRCGM5TU
	 L8T3RvFS/LEcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD882C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 15:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172096982276.13103.7361400880220172902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce5f87014b81ac118ab4584d36adc276ff72f08bf37b4a9125b7f3c85beda73
Date: Sun, 14 Jul 2024 15:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720969822
