Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1112028B4FE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767829434; cv=none; b=n4J+CfoIBc59otsjI/o133dGBG/M5ehJ30s+awRdaV8bu/7sDIuL3LhPb8mJP+YaKu0NBiXJ6tqy3up1axlMjohv7iOaLhIhlpamPyUldJBI5DNVvjUR7EK9bH8PPfeaKSKpfBUv1aQex7EnUzV0aXDZTJxImSZT9h77l7Mo3Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767829434; c=relaxed/simple;
	bh=aeOTjTLOsE3DICmgJTJYu2Z9CXypljKONv437Y9SZkw=;
	h=To:Subject:From:Message-Id:Date; b=Aw2tqjmA7tLpa0xmmZ8Han+htxyiTfYO/EeEriFU/Feuq8SeVzL95Mb4IwyMnN1muLybz2rgNY7WuUz+1VZxA65yA0pA4gH1AFrQh6+4WHmPaUy/OGiduLyoWfd4+ZaHX670htnpAEfr4R+aEQylgH6tkMqTl4kuOBXzXdCvNdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqVyAaKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqVyAaKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C74C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767829433;
	bh=aeOTjTLOsE3DICmgJTJYu2Z9CXypljKONv437Y9SZkw=;
	h=To:Subject:From:Date:From;
	b=HqVyAaKPFYo2BVf4X9c4mBSRIDzroWb6jdUF3yyXchZCHnHdsCyrXVOqe2Jcd8mbV
	 gK92SpD0JFtK1lwH5jrbhJjuvXO4/DsGjq16qlP1YdkOnOJRBOIYrn7oVvhacChzh8
	 Smu77DFT0RCKcT1C7TRKS4UQq9sqllBgl8tyMVTbH1ANTuJd+dubEgs3wPHi5ZKs/x
	 FYAVhh5WgwK5jpomkzkc01qhANPZUO3MJkK86TyRg8pJtfCZmko0RoTWsNS473hrpc
	 2WxS2B2KzabeW3yYWT2C71bx7g6QLzW/WKMpQ1cK88wdWtvAJT6CXqblJ8Vv09CwJp
	 Eu6ekHIHzNP2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920BBD0D17C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176782943357.11982.13121562415416429768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03334e708cc00b257e7eae6835af510db9cb632757d40ca7cb5f74c7bb52153
Date: Wed, 07 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767829433
