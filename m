Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DE31487DC
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727171754; cv=none; b=QmnfIZdflr/s4LnpPw02uupuiMrlFHmeSK4SqpoyDpqWJWznS5TnU6FdyiJOGQGL+CHzbfxK3htjMUsIXC5MFBARYT6lKYTRxI+mtQ2OKFKzL2i9PrbjY4BrYJkOEByyYjnkeNF8TSveAxOUkm/GcABPqPEcJAvDTBXOr409How=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727171754; c=relaxed/simple;
	bh=GDza4F12kKZN5Lf+fz6GqzK0RFPRUhX2Net+eJyRAQg=;
	h=To:Subject:From:Message-Id:Date; b=Pm8YLkVuUZN7HPN++EfajYLE2tQGbqb88n4e73IcXTM8rdnkFGvpbQzJI5lh+lelIVd6KoQamtC5LMtcdq+DTuovZligkm40h+gsd09VzXykhawRbXaDqFZm0ng2KJXJazsLtDcw4pkhI0fCsr6jC767zWhf74pz8UuNIKk3EZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poud7gao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poud7gao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF22C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727171753;
	bh=GDza4F12kKZN5Lf+fz6GqzK0RFPRUhX2Net+eJyRAQg=;
	h=To:Subject:From:Date:From;
	b=poud7gaoSqzYmUeG5v1ozfZf56uxojOIySMy+qFhrccDuJujYk2WWoedh/qGTa6ZI
	 IKMJWciBXrdhgqAxwOc3dKjx6VYLH1B4gjGRqktP5+soGVQFaFCJtgpKQOptTvLcEp
	 7gVZQNVj4TBvYOvBuU1XPzzbnaM4EfgzLkcjhKtrH7nWS423FKr0RRNtZjYOMgYN7C
	 hXF5ECMJACCc940U8REmK9ofZpTPkwrBDN3+loL60ANBH4hlN9iBOVdVRGND+GAaK6
	 HgyhHxcxaMOnVJZAcqpc2Z5ZCujY/VXgoaMosF0TGH6MY3EzkpCt9pSVHamQjHwzIQ
	 N8oCaM9j87aPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D09CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172717175358.14931.2540957467533802658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d426f5d10612002457add5288f2e329429cd84d7562816daf98d948e94e73e6
Date: Tue, 24 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727171753
