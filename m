Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCF11A317D
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764810774; cv=none; b=tS6gIFlNDILF3elT4+DwKZyIblEEtlT3j2mIdo7Uo76vj/bid8ggwzRO1Jdp89mv3WYDQiMX0CsCO4DflHAppPQLqnfnNlJNfvdaOOOvzkFWH/FFbwigud/le36Q/fs7cNZ6HC7zJGwSPqBjeSswr47cAljGvwGL3T9zqCm2YWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764810774; c=relaxed/simple;
	bh=Efa2zppnmZeaySr8FeiS3x7wxS4WvDWVD8btwGOSUKw=;
	h=To:Subject:From:Message-Id:Date; b=Gl0DXt5P3DMYhuqDrq4DxjUT044PTH2kWMIRAikQv9KXh2uUnCrD3gidVYG/Q001zAm9Cb4ZrC+MEzfNQhzvkCC57CwG4cBfYEahKCrO2sOOyLvSfvVyvFNRrgcJBDY3773QFyk8yJBbc4u0gm6l2c4X7WuyCbheKAGVqZJOiHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S84XE0B+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S84XE0B+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C34C116B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764810773;
	bh=Efa2zppnmZeaySr8FeiS3x7wxS4WvDWVD8btwGOSUKw=;
	h=To:Subject:From:Date:From;
	b=S84XE0B+1liESjkVvWdhWV8UPHPv/qRfFXNPva+J8a5VsnCn8uk3dUHJMqHAfsJRX
	 7T2Wx//oF1cJFH3N8b7hu+cQdkiUbTtqp2mwTF7W3kBi8+LNQ6fAMcfEdHTWH/VFpA
	 ZyBLM0Zz+qXd8UW2YsOqawP6piwo8IXgAvTybBBqWCSWPyTpC4Sg96FGdRWjJsppQP
	 gViAOzZzN+pqVFpy4q63MD95xBcGFv8HdI7VbOEpQZss9aja5YqSlldXrf7YYb1teS
	 y31KjY+lieRj417iodDYxlTVh8Tay54N5/euQhJ20An0TEn5MjZ8icNAqWolZ2KnJ3
	 OThow6/szjaVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9312ED1CDAB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481077359.30497.12980011244887799873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4facb4f79c638f9783d82e38834c8e16860f226d016c144022e7be2b38474f1
Date: Thu, 04 Dec 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764810773
