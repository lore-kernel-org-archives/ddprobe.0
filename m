Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0682030B524
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768558434; cv=none; b=Pqwyz/4KMyAHsWs7oDopApIEHbpxaL9GL5c1OVuArzV94HooWQOGhAsSxk8/JexuYBuzG1FrI6a97VMusDJw39kUkWflImUvCG7LbG5hqNgvo/3xc/h50iIld3cvgBzNYIFgPW/ax8f2blTG5YBXVjEturzgllIfb5ZAs059bqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768558434; c=relaxed/simple;
	bh=RgIcm2eK58++/Jn9H3kdQ32maWxzXLGMUlSddLrJxEI=;
	h=To:Subject:From:Message-Id:Date; b=CIPzpDGzyrNhquD+1G6o1lM/pMq34ZYmUwyqdbUpDcaZ/phqcm5+s+EeZnymSiVO82KGihxHuS4d1oZ0dlL5UkhIlrX98pF6QrF8Br89FwYtbcJFpW3rPPrdmKfHJGfNXOFMo6QvmAEjYAy80q8hLWfUkEiNlqhe5F+abuFPXlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQ0WwM/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQ0WwM/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A065FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768558433;
	bh=RgIcm2eK58++/Jn9H3kdQ32maWxzXLGMUlSddLrJxEI=;
	h=To:Subject:From:Date:From;
	b=BQ0WwM/VY3c6NcxmtP7TlJIXcayqnJVHcHq4pd2QRl7/2YLTqUk9S075hRqPv2lbV
	 d/x3YV0mavVVYqIcBCxbh+GdfqZKQ45EtznfN5Ib5YckqO2JWYm6oHmbKNTqsVd7Sp
	 Dg9YRmG3D9Cj5WikppZnYmt13V+aLQUkaCQvBPUaiU5TMZqXcd1JWmwU+skd0gU4MJ
	 zBIEzhDZUi2Egz53Bv/NvZQUEOW0n4QrCDQwS7G+QSOMwMLPE594lYGeEGXQ9p5mRG
	 M/ABrhjvhlkrF311WrxhWKppF4QqHskbv3e82F6PQKd+RCd1AEguKuNMo7QvVDRLUZ
	 1NHurJPsQjhrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F8D47CC3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855843358.12884.8069491090270505231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b4e7985b9c95b03bcfbca2425e4ed1f4b2daa46e4fcd6af667bd84d6cf8141
Date: Fri, 16 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768558433
