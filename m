Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F1724A04A
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764633174; cv=none; b=Ers2wtzl4ruELZyCgDaPDImAIIDUVnz2fpSbkvJZT8/e0xkJ7WBsZFHNOtLanfGHhIPHbpTasn0tqE2L3GTwUudZ2WZdjzk8BqEchhT43mAe5EzMCIAtNfP1bmXMz3ci6gc+kr98v8t7taEu+vwBKFUJ+u/etctbLDmekwC+Y0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764633174; c=relaxed/simple;
	bh=gtXsvjn66PNDjEVE2UyXb0nFTOuURkSKmqW3hPbROnU=;
	h=To:Subject:From:Message-Id:Date; b=Wn5ABANMePXCtLHphXjYShgtWJScF6cq4DP8HKnpgI2Pqexoy9keStEz6iLvd2emtqHKs0AZC2M1byz261u0eSqkpFdRjWdjN9+rJOqI9u2UMv8lLaNGVLTn6CvD3Aez6AP+Qr0HpQudbTP3DfDgHOxrgIOK9an7f86BugVNIko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVI90dqm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVI90dqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB12DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764633173;
	bh=gtXsvjn66PNDjEVE2UyXb0nFTOuURkSKmqW3hPbROnU=;
	h=To:Subject:From:Date:From;
	b=rVI90dqm4KcdDv5LAAlZx7sKGCMONCUJEOQnu+hgokTPNDbMLFPrvbQZDO2Z5oQr5
	 QCfrZtlUsBXcGKB+cgmqFh+Dk+Tl7uaggqSIG0KQNgHv3Zo3GYPNzq5aA7fTyazVBn
	 htJCkRrHQot6FnZHDzJGHZAwcMUz3TBnzbjKnWqiGd63TLPxTpPdg5pstnt2CzXGH8
	 qtutUMkvMT8LQpjgyRSz+F7WZZdWjWpht9Zwt8NDNDyzxy4IxG8gUJ8Ryi+76pLy/F
	 FEqo8zYXbVGD2u++xC7q3Enw8XA34zqTu/jT1yCLevoBoFEoH5iH7RbMifjOMhFVSv
	 RDCUwdy8jJSiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D81D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463317359.22214.3447711999917745104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12109bf81860b63dbd75c3fe523da66eca217697427c1c9d701732c2fbc9fd9d
Date: Mon, 01 Dec 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764633173
