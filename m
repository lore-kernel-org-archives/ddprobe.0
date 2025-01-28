Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A27017B50A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738106754; cv=none; b=DUlowmYGDr7A8H+/qGWZ28eYZMzQSbw1NZ9GJhln6EOWe9c/0ngTGIUDYobboGaK2bpbQTbQHh/u24fP9pf2uBXUuq+2RqE4tKscJvzP+XE0sIngYc0/kMSqpRSb5UkD61v3G/cKXDqiHDf7mS93eBLYfF6H65d0aewkutp5u2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738106754; c=relaxed/simple;
	bh=aSPCn6gVX7z/FgBzoqIKKiDdW7UYAwnO7AdZ8lJyfZc=;
	h=To:Subject:From:Message-Id:Date; b=XC9JSiRjz3TaYMTAeQG5eX6MJAAUt/aeV+nn+i1KidnWw9mue8Ow5nlfTEk6mIQ2oNng0NawwJkOaaCBRvQjayTqinD5Zu1thmCn8VwKcPGsRTDIIGhFE/7U3sPxicXo6+16k16q7c6PnZYb+tmPupEfZrmAvep19oB61txrVdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXICqQmr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXICqQmr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8905C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738106753;
	bh=aSPCn6gVX7z/FgBzoqIKKiDdW7UYAwnO7AdZ8lJyfZc=;
	h=To:Subject:From:Date:From;
	b=aXICqQmr5qxlnY3/iSy0UrVmXKNoCLQDgTUcK48888jKjdlJPpAVu1N4KIvg4HWuE
	 snLizktwr/1HkDIDv89sQKMo+3mMxfifpGKY88YV/oABvXc/i8YZTnRuKTRtHatoiD
	 dknI9rZ9ZQp+mLdPw5SWM7nzCvoYiWoZLDBXjEa7vYzF5AbP2jgDAOLfc7Dtn9Qmbm
	 9Q2d/OHYv5D4EQJ9ngcTKtC/ZuhbDmjZ38xo+xCeFeVqI2tbk8zkyefgb2ShRupZcP
	 Y38HtcJdMUgcJUyxIy0Mky0fqmAGXxlS+k0pqIYHbSZNVvKrXr9Czmau9GoAZShQAa
	 Tbu7o4J+YuXQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B09C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173810675359.19513.13479070029717691855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a2e1fd247adfc5c00a04437c0e293917fd23229be09ed59676fc9584469d1d0
Date: Tue, 28 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738106753
