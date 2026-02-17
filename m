Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2EC36C5AF
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771343094; cv=none; b=oa0F7XZi1sqer2Pce7pg0OL5s5jNCAt8UrqZHBW53+3+CWyOnttV8y83oWKPpL6jzt5ZE7xZN1r8MZ8WQBnXHWGuhofS7B+e588F1UkvbZP9MZptsn31heM3UlMn9bICwqBf9gzVsPk4f8nMcI7oJ+TLboplmo2kkv6CU+EJOQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771343094; c=relaxed/simple;
	bh=MhtFBCBApcVad4qMKx47X4JdIxjp2OQEBzxn2ZVAgCQ=;
	h=To:Subject:From:Message-Id:Date; b=CQdDIk7+ye17y1whEK1yN3VavL9ywx19p6J3uTlHZ/hwVN2DC0H/j3+0BMbhDFHCP9+JC5lE0emgVa7aZIVhg5FjPOsI2dR4V0yz97nMbUos0PsV/OfPzOV1NcrU8+nVbQFHfYC7cyJTQ8LImVttqYedkfv1KSZMkvxkHkx477k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ittagblz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ittagblz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A142DC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771343093;
	bh=MhtFBCBApcVad4qMKx47X4JdIxjp2OQEBzxn2ZVAgCQ=;
	h=To:Subject:From:Date:From;
	b=IttagblzyzZqOm5U8EgT/J458WlU0w8/DWoMn1zneuES13Xhw/O5GoD1nz5+RZtm+
	 J9U/zC00kubFFXKLh9DfSF3MrhfgQoapdZm6ZLV96GeXKSy2Urr52zmgGKMNVWJeJL
	 PqK6xl22N02euBPFb5rKciTSRHi1CHLjTN8IDX8NPW3NyghQm4+f1nM72RnD1x0EfS
	 WGXPAGIuoDiu/5KlzXKZ3qriQ6mb+NBKTMBbLXvz/5XJSeomPtemWAMCCkdy41ifih
	 hTW0bbl4AGtRqxREiK92x3fvA6iSQTv5/FQ/OafWEqvmx1G0tj+Nklu1dB3bxdrjqI
	 Dkr2urz5s4ZAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA6E909C4
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134309358.885.8095027320538323760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2076f4a937eb9804cdb3473d6b4430cde26627827d4d92db871c7d67f939acca
Date: Tue, 17 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771343093
