Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4270D223DD6
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771529094; cv=none; b=a2l7EG6OFFcYRD/u+uu4Y1vgL8VsKnmZBHKml01t6kZ4lNg07x3mPE502lxINSfsGtukZdAEWtQehl7DlOWf2twXixMQE/IzwOyeyyJBKcMaolk17OjVrJc1PCsBUUwpIXCV5I9LGrX0rojoOVPCok6aCcKvFIWuGg1gP2u8m1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771529094; c=relaxed/simple;
	bh=Qy53yI7AhFKH3PhixXCEotDa7g7+VLD2OcA7VRDi9uU=;
	h=To:Subject:From:Message-Id:Date; b=JF0aKG3uD8g28rH/yxYocu+rigJuZagHgmpyY49PQEPTBLw+PhUVifoMx16MQMH3Gqp8mPbvNaLDI7RRDEAy9NDr/iVzc4ZoOEwfho2iP4pk+3emyPWxG96UXHr14XKQgLS02LbyscohsmhzRJKelLWnKI4kQstwCkXn8veMg4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxM1bqw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxM1bqw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1504C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771529093;
	bh=Qy53yI7AhFKH3PhixXCEotDa7g7+VLD2OcA7VRDi9uU=;
	h=To:Subject:From:Date:From;
	b=oxM1bqw1RpDuCZeQnIKdmxKQfLg1RzxKL5NfSnN/vbGqIGs5SVsr/D9xz++ukjx/h
	 ED28b25M9klMbVCowh14nuE2dpkAV90xjehP9gxZBuQKdtJ9bFens2Zs1QOOj/NHXc
	 juZ7pUNv803eWyp3oV+fvt6EiCsmmeN0AODtnSpUD2+Nz30IKBQIxcZQg0VsRD2oFi
	 jDRyuZGTMCZjwD67+xQ+b2zp963xHgZm9YNLGMiOMPoJ+dYtGWKArhNOjlz29AjSaj
	 twUca6peMvJZv5fBNdFpiJadCyzGH1aUQLlxS9v2aZwCVThHZ7/aYGf4Wdhfpj3mWW
	 K/vqk7n67pdfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA144E9A05A
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152909368.5203.1676709288187659716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c80a71a5e8cebe34faa875f409a82905c62b1f5b0886e21e5cefeda95bfb604
Date: Thu, 19 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771529093
