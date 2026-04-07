Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091F0379988
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775592334; cv=none; b=Db6a2ogNogvH9WiELSku3m3yAMQLoGVkxvtcvH6M3TWjIf8ymlNLyAZzsMDW2XCLhjkp6GU/eyTZpzy9GdisSdNKImQCNBaa32Hxwi2jxXZuDNPbq4uWd9iYwNF0CVJ/RrKVjAZLGiCzh3hWOGr+V0JD/vEpI72g0MJmkQ2hpvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775592334; c=relaxed/simple;
	bh=TrqR6YsXCqXiW+S1lvG84GFbBSj01t6S+b5spESH+9Q=;
	h=To:Subject:From:Message-Id:Date; b=D1X/uZ1ryAWJgsgCTxA/qaZVbDuY8pjpFgsCqiZRjoTxOqhDR3zaSbZlXrJM2ZwWXvg2NVpRMKTAPtUoyWjqoomJZYt8y5qeqj7nUN4ijKjlU/uFDjFS/tph0WJFoz7ZoP2XvsDVzXtJkriwRG8+yb1P0QS4J9I5m8WvJbaB3Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzV2NkSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzV2NkSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E26C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775592333;
	bh=TrqR6YsXCqXiW+S1lvG84GFbBSj01t6S+b5spESH+9Q=;
	h=To:Subject:From:Date:From;
	b=gzV2NkSC0pDRcYSqs2g+7lTFTQ6dtEcW1gsWGQZpgccBa4PbofFUkSkqzHLR8HCR7
	 0Nv0cpfg+ZK7AbDCOwTtXcwA3b4fXB6rLOTv2y9DUAT++HfPAP+/ut6Q/Ch/RQUiPD
	 Z7psRloAqG7yWZL6m15DNJY1bDNaaPMR8UYQEi0HDY86DxnRdzytApeCnbClu5bung
	 Yp36q5xu064FXOzzf90eBx7XP+emHqYYQgYHBhtVRXX0NWmt0gZ9HPBrUun7N0+c5W
	 6ETI4NI8QN20dPzeMrOPvuG0ptU8ALYgE+cPlwyZ9Lv/bFpqfa6l9gQCZwmRjjyAcX
	 N0I4j1X34Kjog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96D5FF5138
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177559233368.4449.8063920891579000027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b743023be5c106e4639ad7c7161b4c4dd66b73538413fdce31a92385852f9d
Date: Tue, 07 Apr 2026 20:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775592333
