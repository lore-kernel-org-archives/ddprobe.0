Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0662C2836F
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768656234; cv=none; b=bhTdcSajK/21PbgWOpF6Ft4mbwECqPkFZLoqla9MKmIlIYa0gss3mvSZuKuuzVvMomwoLIB9SbSgIxaAO4Dg9/K09SMvpZSV417HqWcDok/56X4fY+EdzkETM/OoHtX1pZmyHNPLcYcz46a82GC2+yp5KcYlqO3hAE/qG0nKaH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768656234; c=relaxed/simple;
	bh=lrPz0I5mRlRBnvwRrYUMfudnKkPpl+vExAO831e1U2Q=;
	h=To:Subject:From:Message-Id:Date; b=ZwvtJo1aNQDeyb5+qDIp7EZzf+vEvGpoFWmfZF2lB1gpxJwji3U/P7J6+a4NjwQZ45jFAYmlRMYXqJAkZix+7c7BxJcummrvaV1DB66aHHwYXOGyPInm8sEf0GM47f5OG4rnAUpDoce4rEbliyhWdMtf+gxIT45GMJ13xv1YDVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2beEzik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2beEzik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0FDC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768656233;
	bh=lrPz0I5mRlRBnvwRrYUMfudnKkPpl+vExAO831e1U2Q=;
	h=To:Subject:From:Date:From;
	b=D2beEzikFIeAjxv+0lKFDHl0qMcJR94OoHl2n6Hlqc7agwU1oLc78wk+8L1oOQzfh
	 ndgx1VavKIRBIxqVkG/9jS1TBDI6pbO4pYqPrWMGn7s3J0l4qdveMKTS5WEXJZvIwn
	 6FM28EH47zLz+fJCNlxcCTDneSk6uy7FbG89kLBnRrRwJTgc13dvKe9BMHoSIMB+7s
	 B7RHg4qHjXsvMpwwotwpbNjdFFwLK840PIcGm3cROlV5nd0OmpjjC4p99zWiHgXh7c
	 7ilTbuQwoPUYvME+wCjHnqg9eI5AwoADcQcs1Qi/Mh+rNxBWfFfIUESB5JTAzN0Vo1
	 Kg2uhpfPjRQPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AB7C98321
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865623358.23300.18153820781392783360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7eae034da3e4869a6e9bd6973829d3d8a703c03086bf466918219ea3aa770a
Date: Sat, 17 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768656233
