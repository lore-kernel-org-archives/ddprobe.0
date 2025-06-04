Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265FE1DED6D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749027594; cv=none; b=L6jf0hvHhkFwL9FsaTXhxlItsFCv5dj2gSaSe5ocLuORYWUuau6CqfLCA3Qdz1g9sOk45jAyTMy/parPTosWVHuUlLBMtsf9sZPc7XE/DrcAlj7t6keLjXGFZopjSWg5GHrtMW4KvYDMSNJQOwhSYHMyh4zr26LdA+K5+4YKnl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749027594; c=relaxed/simple;
	bh=pIQcDi7zG0mMWE3E/vxUov/jkdTY10ti2YZPm628zFs=;
	h=To:Subject:From:Message-Id:Date; b=QeOgyZuigZPKaIYI6NW9OQbDxkeM1V/U2lyquw57NymkmMzuht0T1F4Qu7xf5Z7FepimXJ8Kf3mvDN5so2Wwqlbk6ab7rc9rp/ChyCwh3drL1/qP7gmxYFeTqkl+ByTTLBCy7NtPDBhDePdQhEF6mM4jLfSeuthPPdQqj/l51io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EW018bGv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EW018bGv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4811C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749027593;
	bh=pIQcDi7zG0mMWE3E/vxUov/jkdTY10ti2YZPm628zFs=;
	h=To:Subject:From:Date:From;
	b=EW018bGvLK+QCWAQxYxPzVODT/3vZ2kPyxIXK6aiZDJfkhLDnt8huK+jIn+t0mYrq
	 37ORcdDxaeOK3QKZ1xilgH97WhmI2TExwP9r9a9cCy/9Ejua0JqBw3ykszLlvASGxw
	 pc+RRyC+4jzmoWrPUDAYIETDML9qPFpMR2clujlCmhc6roS8CaOg2sQBw9Mbq+PBoN
	 J7RTmU4f5C9WgFg/QFJKxReFPA853u+N3XtJeyqTYaG5yd9EeRUQD2f146HUc/7GFn
	 0CL/xT23bN2jrXD8Wnx7FNTq08v8CDgZXSnnrXsdVCrsRPQqCBIhfwzSPl8F9xDWoL
	 9bJH+c3WzPTow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908C3C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902759358.28870.4609698631783804996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f20ffe14b3c685c0c63d1fb143161e3ad46986076bb6611dc9674625c2dd6677
Date: Wed, 04 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749027593
