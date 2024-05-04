Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E595D477
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714843343; cv=none; b=Ne/gZPu2Ff5YEYsEzvjLhVwGUF1JXV/d+Fb7ZoqIyVD6EF3fGs6SDcIMKRfiQmIWXnhUGL0K5I/EkEsYJGMYtu5BukCABHembsNm37hRVphUHY/AmvMZBXhgP0wSvEn8sRHrXLH3O8Jjq5NeGwi+WEgRfBw4fk/8qjUeLWzEoo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714843343; c=relaxed/simple;
	bh=ZrhwE4FJyMKcYO1OzxcezJicibR0fwrFJwAGV4gLVQ8=;
	h=To:Subject:From:Message-Id:Date; b=fA1EZE2MN9dPDo4SUcyX6r7RQ7EkbclAqNbS7JQ7YXzg9OO3tHes0qcj7kbz7Msx3GlSnazbUYxfZjd63XTF1mMhdNGemCol3S22TRgjThSVa4FV4SwSlp6c8/HoB0zO8ItnaOhrMfQPrYH9KTor8BeC8eltj7XKlvAXWnIdBBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vk9LZK/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vk9LZK/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DA9C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714843342;
	bh=ZrhwE4FJyMKcYO1OzxcezJicibR0fwrFJwAGV4gLVQ8=;
	h=To:Subject:From:Date:From;
	b=Vk9LZK/Be5y+cTzyGio0EEI6PKsf6IJrhuP7c0PQQvCroZCugnCnAQKSdrewn+tMf
	 EXDNLS5MvxR/xPAZRH2WiSwwvWn0CiTKMkgJEx578XLLJH30qK72u/V7DnyKJGrbUY
	 QP4BQrqa+NURPtNgi3bcb5y6s3Ge+W/92d2AGkfb4x4HKFwNeV0LDP8Hlu67+3aPP7
	 Vdoyk5GK8lthz9v2MtObiMLaJb55SOxbKs+Fi2uBUg2WhDakkB4s6JT3r8V7bdDm/v
	 q+fGiKbIdU22hrm56/LcM6F5mMzFwWk5RVURB9gL5adMRSptCCUon7MWSdlXyP8CNy
	 gNyvrdohSYaWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD047C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171484334276.9811.17483209587455521497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f707b6fc78e2c75646c899149fa3615740724d12d116b0f61a6fea8ce7694ac2
Date: Sat, 04 May 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714843342
