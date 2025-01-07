Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225FA1E008B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736252754; cv=none; b=u7HWlXZxvjW2b1g+sDvyYZCWDefIWO0EO5vLYxdjPmZAqU4TOWaZ7vOd8EueU2gFL3TInifcxpXJEZWaJQ1QJ7Zbe9B4mE59cGxyNEbISE34f+96U+kuUnPngQoGmjMEGbwZFtpaY2KetSX7/wGZPwBD2GYSzyCOFryp7kXlgUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736252754; c=relaxed/simple;
	bh=N20O33ZUZM82oBNQoQzdbtvhTgwKdmNPrr9xkjJ4Bsw=;
	h=To:Subject:From:Message-Id:Date; b=aQoVW6uvKqnGyEv4OsLtkIl5XxPC6WLIvZ0G4TYzfuYqUmhEWjA09Rz04Bb/9U+vFKlK01gu30oY3O3vQ/+atTCDFzE1wfyFXKqhV1epnGO+uLH1jjth6gVyL6m6L+XDnsOv6pgHH2+1bnzSm3SbHmkWuWXlia86ahtyaKMfdic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igZHH32w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igZHH32w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27A5C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736252753;
	bh=N20O33ZUZM82oBNQoQzdbtvhTgwKdmNPrr9xkjJ4Bsw=;
	h=To:Subject:From:Date:From;
	b=igZHH32w/bsQw8wCuNus6B2R0NhWAoKomaLy7zunXG5ySp+jFodPO6RxoweQ/+s1t
	 7E2LDar4GM/OpvfQRWpX7LaaSDk86njOm7VlRHTC+NUywWvuv4/tHjt0ncEHWebc+q
	 mKWN7BVtgfMmoLrOd0TaNnShDACnrvE6KWIC+e4Pz4358j3PqO5WmUdqLp7/MjHJjQ
	 w2uVuqLpXoeoRZ6mXob2AWC4f/HxqDt56sk6iD4AK+J7YqFiWkxIsmVPXCwFKJcMpj
	 7ZY8OpWAI6oA0x9YM7/v9uVonyoywi/3eul+IZ7sXIjy1F/NFHHAFnSGrS29Rge0LQ
	 09cye3iarRqPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247CE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173625275359.11589.7118887048160095373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a740a2a1c0bf510fa966d45a62b70516b1c9e46350b56076387dfc72e55e4563
Date: Tue, 07 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736252753
