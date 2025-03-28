Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4963CA935
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743179395; cv=none; b=pWlAVbWtrqMBceyoEwf5YQBeVCefhlKhu8Pc4ZeLV+WkE1z+K7I6Hnk/RINOTzxOTczUf8ezTGX0DaIMLz/Ggr7zgicmGJ7h7P+X0nc0tld1w4GX1N0afpKqv1Lps1F2iMPiHY80nocPEOMhrrsItz2Vgnci62xfSyFhilHgT/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743179395; c=relaxed/simple;
	bh=mLG8NkvO1hT7DaTV9/szXg+r75EKsBv0AwpqizztlmY=;
	h=To:Subject:From:Message-Id:Date; b=HMQjg9v+t+pmaCJXy0FqiWdhiViv9JzD+lLLSTTksDYnY9HbSazo6Y8eol34ohPojhh/3zcLiBvmGy8wKS8i2Ssxgj/Se8uF45zTTd5CQb4qbyAZrMQ649pstsvZiZmLZyzooGQJcB0l3IP7g3Yvm7O5o631MjB2BJFfnZiKq4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAGVDOAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAGVDOAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07E9C4CEE5
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743179393;
	bh=mLG8NkvO1hT7DaTV9/szXg+r75EKsBv0AwpqizztlmY=;
	h=To:Subject:From:Date:From;
	b=QAGVDOAJA1ttZmnvM+TogpUbtevEVv1yaggFccQno+Z0YoYQHCVrgjzNKGb2Ewhsy
	 fn83wPBiXR2VPh7Gw55Znin7Eg5Z5n4rQ2vBzjhSjg2qoMgor7AAZNC5ek3+0E1DIo
	 rGFLWCy8llCMoDy7GfHNa10VLuB6ub9cOhiWRci50H6JhjpKALx9b52K1MGUrQpSWH
	 q2goUhKFWOlWQfeQn4Qb65kfi1YWSVO4QIrc5dOv4LgoeNVdd4HGlZ0oR0wWft9eAF
	 sSL6WhbiINM5BCiY0+1PSRpwjiNsJbi930oYh7fGd4nlybxVfG0zYbYhVsQ2vTGhm8
	 lg46aftmkoDqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9858C36011
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317939368.15540.17062397479666940376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac572ff949ffe92c2fbd2b9fdec88151999aa6132abb5b713377bb98d927f914
Date: Fri, 28 Mar 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743179393
