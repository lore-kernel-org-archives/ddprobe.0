Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D40F25B090
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783831114; cv=none; b=fOTyqzDnexGKWTSap+223lBfz9WqRjQcn5h0KTx6W0znKPX4vCB9WjkwvxaDgh5OlFj6HjQGYxinbB9YYM91BrLVPqfIP9k4dPbPiLxrcyV0xB+gso53N4SHn6t59PMRndTU20bFaqNXT+r5Zp5qDeVpMcfm3UUPeD7d0cBTPGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783831114; c=relaxed/simple;
	bh=AmD4LDVA5e3Z6vnmQtVKPWq30zn7W2BYwBgcyLKnYYQ=;
	h=To:Subject:From:Message-Id:Date; b=HzkhYNINhx9Vn8X2FqaYLbzhyyD8pkQ1aJu3MlbQ0HyDNF/nUgck+AqaBcQK1egV7Mw47ZQOUTVfCsvxnHwWJI6Luk0i8G3qZlQTirKTHCDhX45i7WnAvnF1yjFpsL3ix1WJZyYdST36v+WBvqjXnDOSd583rFflvol4o9+YhzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeWfcMqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeWfcMqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9F9C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783831113;
	bh=AmD4LDVA5e3Z6vnmQtVKPWq30zn7W2BYwBgcyLKnYYQ=;
	h=To:Subject:From:Date:From;
	b=ZeWfcMqNF9I5jX0H6kX0Z3vSjbGdzPlPTytllwNIQDfegKHWh9dCGOuXo9dRuysg9
	 ymhGbUUuSg2ynqBq8fg5Qd2sD6PR90EmYh4dDPnJ6L0aoU1BvcQ6aEA0O5XW49oFHZ
	 QHSNe2wuJcu7UATHgjBzFzCak08xc3mr9Bd4lehks+K6MCjxnCtw9rYZh43DO5rJQB
	 FdGq04vMrnvu74FsI/VajZq2JNTDbPONpMLUHgkAgfE2FSAE+Y0bIC7JbLoL90DJxL
	 Jk2/4DgrFFDBSog3iglK6lHHNw9A9MN/Zi93deGGUMphcyeZgof1gKbK0iEuAZNvjH
	 lgbFeC22x+xIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB537C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178383111368.8076.13685473858883992874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ab22258a213e481454dd35132c49b0503b94978a449d19704e89bff57c3c42
Date: Sun, 12 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783831113
