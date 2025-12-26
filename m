Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23673222565
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766742234; cv=none; b=py9+ZTCkAlTSJokiGHKub97bbPSL/xwI4fI3ruzBexO6iAZ9m8fXjv63t1oyUUPpe9GiwhYuW8zq4sjAP6pD8XNOr5O4KUgnIBfQvK8N6mUYGFbYXE9UaS4y9aLcFWeHLvjxQjIZYdd08oRWL+W4dSmVvDZydU/wW49aZlFN+l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766742234; c=relaxed/simple;
	bh=Fo3PQBzHixpiESEk3sTsIaf//sxL9vUqveb/SCZkBJs=;
	h=To:Subject:From:Message-Id:Date; b=VDm8+rRib6uPSGGY6NgopyjkJa2CX7WTQP46Bjoc+y3i0vOnRuguFGrZGhZYCBlSmC0LPdK8qsOMoVktzNyWPmjlj7sw2mgrkU6ofytbbxwaD39W5dfD7SzxorkZlpb5neQhw8Ilihj4GRgoX3DNVfTefsW0vgriD+Nus/Qn3co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I11EdGOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I11EdGOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18CDC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766742233;
	bh=Fo3PQBzHixpiESEk3sTsIaf//sxL9vUqveb/SCZkBJs=;
	h=To:Subject:From:Date:From;
	b=I11EdGOdGQJrcBAkwl/c36cCWjme3n92RK+iVydhTiikVF97R/ibCSss4yZxAA1Vb
	 uj/y8/pJCncbOEljJ27ImAvhtvqf+lvOeaF/ZxbIwC8G/ScoCtV99oztA+1rfhQTMX
	 ihoK6pmTwdOzfsshIHsfy3uFre4Hvkl4Daaw+ROJMbBtvZAUWN5eVwf1nMxyd43vzg
	 miirTEIBWkO76o4jOcMHa/6CrRl8yGZt5Md3eQxHR9k1QVNbCyTnDrZ+JHK1fXAGlV
	 E9ORf79yV6/YsJDu1MwrQjxVh7UfdV+a5IMN4exz/5Mv5DJ0GA66mQkcBf9+bTDd3J
	 5Va7dihNI+S/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9967FE8FDA5
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176674223360.22116.2668535779103944286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a18f327b452f049b2184f5f211f9615725f96ac6451d601a2c6eee075e67b8
Date: Fri, 26 Dec 2025 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766742233
