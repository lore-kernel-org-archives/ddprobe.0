Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE9429551B
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748029194; cv=none; b=Rz/vZbRH4T33Sa7i5jal11lLovAH/LQyonLnmSEPuZhqtvprKE/77L0d85CQKA3J0IUSlTQgvM7u1RrHCluYOR+SIOesygq8LOc/rbMuxurhCgqz0epcLjPyUqrtKzn3VgzFbN8g9N04K4WorTLDuokaBO1vnU284s7i29jhwE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748029194; c=relaxed/simple;
	bh=UY69UgiodWt4WvZNzN612ePl56tsr0S9SsA/xNr3UmA=;
	h=To:Subject:From:Message-Id:Date; b=r8LlD9Zi7JKLKtaqug5tW+RgrlaMm7TRkeFfIt26HFM1t8Xbstj/dFbaVJAIJdVIwK+7oEPTrXM2iPvMI3DoGsD/2CK2joiLL9+AC/d2vhBPAlojFct93jFo0iY5mUitIr2AWlwJFeek8H9Jd2HEJDxP1VH37rysBXav9BK8TBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJHSgTMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJHSgTMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EB5C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748029193;
	bh=UY69UgiodWt4WvZNzN612ePl56tsr0S9SsA/xNr3UmA=;
	h=To:Subject:From:Date:From;
	b=mJHSgTMQPBMbgDsmis5PM1r+l0AgBigU8aKiqpb/7cXn6CEWHuHgb+GRt9pxpLXDO
	 m1XPKGQHeqnX2vDNmTew31bPL+cLwjD26mXuLMdH62wV5uHfq1EMI21MqJ6rXM1n5i
	 qyEBQfvHglnNQHSyMSvLGsPxRJ8eejFfQNDzKo2QZdewqw/ncqH/dcXt8KqwndBABn
	 DiN95SmPkN2apgW0wmBgjMGqlowfPeedZWfiwzTTwVD6+TWvI+qi4/UGy1hIK7A0eG
	 pZ3L6W3og1Jcgaa8W1Cxrc63P/v3IPtbe7SpqCJ5+4wsvP98SlllgkdTNZYMVhgZD8
	 Qs9I4ucsNnWjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C30C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174802919357.10372.13199478470476705069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f321cf85b19a8deb8a6677c877a60868c4b00dc46e51c356e279da93f9d53bee
Date: Fri, 23 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748029193
