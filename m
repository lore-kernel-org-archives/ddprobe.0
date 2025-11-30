Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BD928F5
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764511974; cv=none; b=Fe+mjx1RFqvltFcBLwN+BG0GnH90lwQeiWzJGkvvr/2dT2qwCQ77U657sRMyg8WnmHL3ZmeN1YC4JFvmr5DntcnErVolfzXfvw6B7nbdZ61CDXDgdqRbEf/ojUcc951BO0DzCFgs1Wjhn46X8otr8Oo+UN+5tOqYtpDdLyddL74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764511974; c=relaxed/simple;
	bh=qxRX4O4hwpv+W9XJvQ4pTHcEYBsNXdOB0/V1oYQg8Tw=;
	h=To:Subject:From:Message-Id:Date; b=THZTMO9j2ocvQnib3ON+mAgXPY3Tw0Xc/PW5RbK2TxibM6gsS/hLamcvPdiADF1MsCIv+cc/lOE5NI5cTAmylYOcHPBs6kxaG32r/vyfu/UFoXVWlyWHr3pjDbtvNHX+MoELtqIXAMoyzns+lkSbqTDk2ZkKyqPb6pnonEeo7rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHvHCY4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHvHCY4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9C7C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764511973;
	bh=qxRX4O4hwpv+W9XJvQ4pTHcEYBsNXdOB0/V1oYQg8Tw=;
	h=To:Subject:From:Date:From;
	b=RHvHCY4PxZLaBPVIHsCW71m1mvUWrlmQFh7J+G8pzYMSBzOxctNQZbLgZH0kTkc0C
	 B7qcWyblP8ll/9M85N09LU3Uzs6QDWUbliWpJ4Yix/3AcyjW9G21g73P5KlHKWtBVZ
	 DjrxTn3EoJatLaQ6CO4+eGgkm/hYAvFMKf8YPbW1EiRQ1vDdjxXFFiJ3NeuY48/se/
	 57wQ6X35YmtHV1Q1uoDg4/+ohtIZlv3PIFbBIGZkpvgG1LD82vGM6NywwDHaSK92GL
	 NCpa99IDBl3q+XCGN6tztbNr49KLx2K3k0RBfVondNFLbs1LNP41pNcC2g9ckYnown
	 +WFkXMfjg7moA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96144CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451197359.2392.16551076491690853407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003b6a1cf0e0c6dcc74be7789ccb35a1bc33a800dd7f5285da9f5fb4a74bf889
Date: Sun, 30 Nov 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764511973
