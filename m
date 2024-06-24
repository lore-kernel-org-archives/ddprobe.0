Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A5B19E822
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 17:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719251543; cv=none; b=F+o6Whf7IzWWlZZZJ0i74NSDongrCo4Y8Jam7CJ6FeEmM5GGFYQDLM+yn2vGt+e4zyAI62bXzIIorYasU/n08tiI4B0HwhXeCki0B3lRsJfAWu0RtJxtoQLI5k3FkynM7kbG0HsPvJMcrU3WJdDJzQ5FiDPpAMsDB3qexTTftYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719251543; c=relaxed/simple;
	bh=fVFuEVnbfjGPS/qYsr/eBj5jpxX97oHCiO1+2gA5YJ0=;
	h=To:Subject:From:Message-Id:Date; b=bRTcViKC/88gXvNEQkwQbLOA6ONgJrkIWsOwIJuTv4OfMTvLPXnlQTdAFwVHFmGA49+CB3FHtWTukbhgPL9FuJnoQGRx4PrQ8oDYdwudwAFmWfSO3fSywnyl6HgP/wX955MfKyjVdXe/ujKYKhJetf7DxoqKGcOHZQmqx+fMyY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcCU+jKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcCU+jKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6688C32782
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719251542;
	bh=fVFuEVnbfjGPS/qYsr/eBj5jpxX97oHCiO1+2gA5YJ0=;
	h=To:Subject:From:Date:From;
	b=tcCU+jKGqoGg4fzP3rAxddk3JMjR24ZBCRA9Nyt7JzXJ6wO5un7QBtiesS2OPtcL/
	 XMYAr11UNQl+Ca4xqZnb5TFbIStuXo4OXLgTHXvFdWBl3jBhqNqcRj3mmiOKe+B/EF
	 deJdJ4QShDcO1osCwcY/pbMBbqbp3v7nMZ0IeUF9MTn/1xmH4gIYUy0PpIQcnLzoIN
	 58e+O+itaX9Iuy77NXz9cSLp+GbkQyMkxpGT4lDW60lRfmwVrvet3O8etG8pibmbau
	 e57AE69XQbCrmtK4wsqbk7WhUnqqFepIW5RpzsnL2z5hRBgVw/ZHOhokqt8WVGEkp4
	 jkwqjnNKKZPLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5589C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171925154278.32293.13999540422133686020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e38a3468f9d251968f5b32c440f67afeea9722e6a79cb7ebdc40765b9c2e805
Date: Mon, 24 Jun 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719251542
