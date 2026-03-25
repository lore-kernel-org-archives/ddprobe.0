Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E80F3EB7E3
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774461294; cv=none; b=Z3eBi7NhNgQnBXzfBspx+iAamjALKexYZCVkLeg4Eam/5UsKq74LME2gd4rVfE6k/tXmu20H/X6YipYA9LdrxN3JbchSSiGqwX0YFoKc4JPGf7ZEm4oNwJ1kB2bk90JCi3PSVWntCF5EHQ1dHkUC5XoPhclFHhsuqqJnrsTw7hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774461294; c=relaxed/simple;
	bh=eXyonz9uExns0i9OzsCo//9Ye4wYUh/5dCAaq23IgOw=;
	h=To:Subject:From:Message-Id:Date; b=W7OUvd5dNJNxQ5iNBQfPzsvfoYFlUsAbaubmnhbgFJFyMc5yf0+1fBSLYtX61DT1LQxNHoFlY6cgbtVlxvDVnyuvL1BH8fYr1SaeQQaplkM+ODJQ5QLl6mvtOakGp7rxsE0J7O1xbRsoRJlAdTQH/92SbY/kIalo+SvVGLbW2ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwKm27/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwKm27/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DB2C19423
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774461293;
	bh=eXyonz9uExns0i9OzsCo//9Ye4wYUh/5dCAaq23IgOw=;
	h=To:Subject:From:Date:From;
	b=TwKm27/flUzwiEK224VLFRfpjbV5NpeueXTAChE1ejxiR/eTK3417oPxllqhTkRD6
	 o7+NTcDHiiTKG65giL06a5drcpjgVbOMTz/dz051/0c1Zf2s3mvJkBxF0OR4yyajLy
	 daBAk+O0hdMnXOP6kFirIW2PC4UyVflpg4QCV8IzC2j2P/MCls+hWpwKhhy477ohUC
	 3VGoibKExnP+PaV5Ty+1GpPuHTSQWHVkwpHcssi7LEyGILvexDw+yZt+rwD1akHPjG
	 FKnEo0CRErUCX2M/GU6COcKgBmFQmaiw9Jr2byB4zFvWcrgklq0TYC1O/UKxLQdJNa
	 6r/RHpC+8RukQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C4109C04D
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446129358.32543.12714556358864567461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13416153e1234db4278538c73a93670c9b465c324b572434e1e408094cf2790f
Date: Wed, 25 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774461293
