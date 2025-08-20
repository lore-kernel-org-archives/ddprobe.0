Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19626257AFB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755721194; cv=none; b=HqGqihr4QFqvW3BUYpcMGlXzxwEYNxKRvPTRR4p9h8t9QnIbE3X+4lYNg7bIx9YxKIVVyWAyQXqq7NY/k03lf7jTmDp6YOwaGlsTZaCZNSQ97Bo2+7AToAsIEUoGGjOYZGHVYZnZCLNxklICdWOKxzjN08XArTLy2A5m0hmEmYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755721194; c=relaxed/simple;
	bh=hzZOYoT/AS4sFar51O3CE/Mgp4Ig/vOfH1la7HE0oxg=;
	h=To:Subject:From:Message-Id:Date; b=BbqfLwqgik2DPqlO+6Y+t+CQqZMBrjzCac0su2W4jSwjJrDPFWyGucCUSA3rgmBrBJ0CuvhqFQ+u6GePaFUfrNjpwiuZXBWJorhDRlvdJUY/pkRjNiR9jbIfpmIARbkJfH3aBfrQl5AoRSozcLeRUbbnwmMkM4KWhIU2t4MeZyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AB/AG5tt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AB/AG5tt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D93C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755721193;
	bh=hzZOYoT/AS4sFar51O3CE/Mgp4Ig/vOfH1la7HE0oxg=;
	h=To:Subject:From:Date:From;
	b=AB/AG5ttwU+/Srd2KNcU+ayjnvXy3UqBcNcUmSR7Wk1Fier2Ae5JCKNsDZuQ3BeJh
	 ixkeC+kzjCh0YBz16BV7cdLviA6Gt0BoOE+n2PhdO3VQC8pzuM9zc6s4dSxBzo95Na
	 yKZAEJ0JTWQ9f6jT5GdhBW/ObxqtUttcQsQLTtWEqZoY3cmfp1z55uMcWQIm3pPRFx
	 jjss7o38Hw3EKW48Wx9OcmOJM8PnmKr377BM84FKu7aW7ivNUo0i7mIrK4+5owNKcT
	 QWOe4l+rA+RTCo+dTjWYBVhAATJLGxIqUCk0upe1DT44z8tSTmFoJYdSikTSHCdKre
	 KiNVqGdss6VQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F96DCA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175572119357.22926.11358863857208043002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035ecbe45b310d7cd0dff5db89f054b1e7c1e4c3038efec316fa6fc94b48149d
Date: Wed, 20 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755721193
