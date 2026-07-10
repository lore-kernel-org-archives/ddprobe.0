Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A69340860D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783679914; cv=none; b=EeNE4Hi+zHGZbppIujXPkxftz4jeQ2ozkZpTybqLy2CSHl+Vxwl9Y6Sv3pUeucrX87vb4u3iIa2rgQpDVaF0ElBG9+K3qebP9DZ3JEne0dlGtWH/l4su+wVuH6pwdzSKI2RFE9XMkOMtZV5tn3WDg/9FMdprGZS6KCU3PNzePnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783679914; c=relaxed/simple;
	bh=sIZ2nrgTfUlPUVzJ6nq6p8khxxp6XndjXroLky20kJc=;
	h=To:Subject:From:Message-Id:Date; b=c2+APgEemezKYExRHKvWMqd7disJG/XPEh2wbDQ+5zWvb5Yj3yNPyYEHzMZgLtqIzpPzmDvfCVcjS7g5NoeDBlekmoKfH9JycdT8bD+h1SB3JMaBZ/lD01dY4RzgYLgapTv3jElzQWry0dIqCAFcSZVaoo6xkz12oaH7TzaGMiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9wqA3lZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9wqA3lZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9BD4C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783679913;
	bh=sIZ2nrgTfUlPUVzJ6nq6p8khxxp6XndjXroLky20kJc=;
	h=To:Subject:From:Date:From;
	b=B9wqA3lZRkO4TzibtAu6yV7wxkKwDDat2q1e2YAjWtgEuRLkkR+jz5k+tX4kSaYGP
	 x5OpyLBqeluISt4JCbzwGM3YIPtTSKvfaAXd1ktJwfO5RzktqAMVWO/Dj377Qh4Xcn
	 8IOY4jAadtCVInA9ZzrgQxAJYU0kYYvtyZL0SCT6eavdJkct8gV6Q3TZi7lbI77eN0
	 XeGyN+2ddClReWIfohsFr1E8VII2Op0GGeQQWMeXlaF5ie7M/y8li8KKmRLHIwh9Aj
	 csBpm91DciuUb1HUffhiehRA+EFD5hkNBVO30NSxyjGy4kEDuwAdF3bOyyCIDDtfNo
	 WiuBCfCgLIEaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85AEC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367991368.31959.17963538351092681139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3c366707ce17fd10d9750e9b9dbdc7430fd62fb06ddb5bee6e375acb02daa3
Date: Fri, 10 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783679913
