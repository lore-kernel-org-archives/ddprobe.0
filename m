Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4503C1C8611
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747772994; cv=none; b=VFhkja+Iz7JCasQ9W7W4KQXajsgABXLrNcdGrMv1T46Zys6Z69Vaf5QjATQ1+EiAPXEBMZ3twWhO8v+0jNlhRKTGLjQL54Jl8+kV6yRACWkvyzaNBVisymKAaqiDtf6rF5gSs2c+scOme4Ybt0TC2yKraV8QLAlPaLNhR/FDdTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747772994; c=relaxed/simple;
	bh=P9GUo6ZABmj742k0Q+yZwFyv67oN6K8DRU5qFUJ7p70=;
	h=To:Subject:From:Message-Id:Date; b=gEOXjduG5Vty8Y1Ec+2G8PHmR81NxxWlArIcDnztn2hkxv9QGnAjurG0Dc9PX5XzB5NQhIvMsJC46nlGG28iY50xoGZ+/IY2h/5vo6veoMiQZmKtccmHYY8KeWkW1tMKAOP3GNXGPOEf4nTQYRWtcRMc/wq6hn5FuZdyMxGyz38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAsEikjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAsEikjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54D7C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747772993;
	bh=P9GUo6ZABmj742k0Q+yZwFyv67oN6K8DRU5qFUJ7p70=;
	h=To:Subject:From:Date:From;
	b=IAsEikjlGomoRd/dwEZubAtiG76yCfdNGtYoD+a2V/3EVMvp6dVpFDBoDXNOaX2q9
	 x3E6MfpETGSKytK7jwoPH9oNrzWOdG8D4mBYPYjjC39WTCAJ63s6oP7Azyguky3Dru
	 B/pr0NJvdRUKuXb27+ZH8DtIubPwqgQR1d/PPX/eOEDguTQM0aFdt4uM8yutWILd5D
	 3zPyTqSMAnBM47q7oyJ/RMsj996l++1gleK5nGq04CvtVzQOmmi7B+tka3gR2D7lOb
	 lrmvX8n3jvWEL24EeDA2zsw/lQqkdMCNDF4X8Ad6XdGeRjOO4sp62Cdbbbj0P9WqdU
	 GKG+tytQ+NdwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93661C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174777299357.16760.16346906641000114581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99fc028b537425a005bbb9a2f4c54e5e87b09218748c8d48d5a269709525f746
Date: Tue, 20 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747772993
