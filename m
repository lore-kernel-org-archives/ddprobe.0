Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EEF26CE09
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751365194; cv=none; b=s2zV1iEJNExkkkQURpHm9jdBIwHI+u+BSc+LCBU0xa2XZ3ruj6T0ugB3soaOlnSw8FS4RiNVw4KvrYeHHXU++YYv3I6aqMUF3oM056mQzaYa8ZB955/o9YFggbMjyoNTu2t4YF7FsSDCnkAsHsfCn3KYDWPgWbgKzWSFN9YmWuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751365194; c=relaxed/simple;
	bh=DJk8xn/UTgPgPAiYcje4SrQ0GrwjbUGXTHGZdKTNTS0=;
	h=To:Subject:From:Message-Id:Date; b=LBzUdlORAgOg/OnGNhK+PUq9fYVPuswGxqIRWHkf2YhAn6NiLcftZpfy8E6rfwPJCqgyvoQiLkAtczthyNJ9yAZH1t5qUrmSHJCHqsNah2kOvyB1Zsm9jkN5pvCRf9Ut0PiE5His3QMRAKI+4HRpkVtJLmsIHhSFZVcB2LmDqXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwdlWOvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwdlWOvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1507C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751365193;
	bh=DJk8xn/UTgPgPAiYcje4SrQ0GrwjbUGXTHGZdKTNTS0=;
	h=To:Subject:From:Date:From;
	b=EwdlWOvyMnwlurQGZWdcpQ8Of47eI4CFfGIE9wvpLcZOOJ8Jty9dEyNN6cdd4fzje
	 9KF9skGmITzNnKvEwjhpo8j6/peI4ReglkOaLk45KnBevxp6DXdXpQlZHDwYowx8R5
	 lvjwDBa+NAPxLdLLhkYvl54hBkRuggvQapAl7xJDtDTbjwGCQB8Oq9lT6RIBC7TjZ0
	 egrJ8LF8XlprdyJi4EPdnvZhuB3QfK0QDWDT4CrztRuTlQs6lngAu/TGAq3WygahKm
	 KY2T7ThmNLLs6keym4Hjy3/me67pPbf7uLXnp+HRSrKdY21RfOkfJCcjXCjRXRp3F3
	 6z8RR15fz5voQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DE6C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136519358.27497.9331024973519408765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ceb80035cf3260e1a4bd2347c2ed5c38ff85442e81ae6b41ed2bb85c189d444
Date: Tue, 01 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751365193
