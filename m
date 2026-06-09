Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C4D3E6DD0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780993474; cv=none; b=LR+44DrpUOaTuEe68yy3yoSWVJ+SrdKfmcPKUHrXlMpmTE7BmrtgL12WjqK+njmIS4ATE/iz1f+8CTm9dA2Bkn5d8LN0FZUATNF9v2A0mua/RzQCrJgu8/7w1PnVbZENDV+4kAORHNScO9iz4mWKFnnAhjjrsn/whxN4ZAGnhlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780993474; c=relaxed/simple;
	bh=OU6z4RjPONXgZhKABgVt/hxNV0eJx+I5OT2/Sg/Nhqs=;
	h=To:Subject:From:Message-Id:Date; b=QVdLiFRUUmj3EAnU/5AFGW5P0DZuGnbJ4EVtS6/6EpSRH9ifsHzqknv1YHtQQZPyx4w0q+aQ1utay/yi0xPH/p2CJbtqyhA0i3QwiLjdnxJUI18hptCN/axZnMPh6IgDJSlwGCgJNKKf3aS+OfUktwAUMgmvmzSYGMcCW1kSWmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMFn++ta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMFn++ta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 37D11C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780993474;
	bh=OU6z4RjPONXgZhKABgVt/hxNV0eJx+I5OT2/Sg/Nhqs=;
	h=To:Subject:From:Date:From;
	b=cMFn++taluFSTLyeymwVViGJtjvf23gYf9tFTLfkUqk3RGmjKgtv/aXUsu6oHqTuF
	 0wEfdAPG9EbIaPSGuwU/MZiS3+r+AMH/d0T3MdkU6f9Zn5Yf9rmjcXoa64sLh4qa2v
	 dgUWG85QSSSEaId1SMfV15DbrVnCqZGXjLqZznayq6os3JCVX7dOogkjBXKSIGgWNe
	 ZQSU3FyQOGJkyJYP9FKQb8p+EztRdjsSCy7TBMTZjb/0wB5nrXvjr9he9rm4/IZJQ3
	 v51SwV7vR5rPhTlJ32T796A9oeNh7MNB4X9foUQBf3n+ldBKntIlw4bVoVMp63mdNE
	 xHHdLyqX4m3Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED1E7CD98C3
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178099347392.4437.4819450560293582253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d32d6580aefb529f3a98825d23d4577057c8ac9c0ac530d30dcbe9438ade47c
Date: Tue, 09 Jun 2026 08:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780993473
