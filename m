Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B04E2DB7B9
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777750054; cv=none; b=YPycZSTuinFqaRVLQY4FUN++iIWHhfhxjlqku5MChLwEq1ennpwwBRIa7TY3tJjAmleKmWypSDBsIXkopS6YLl9ZZLmI41wtUD3IHLCrH9OpuWJNLzhV/BQ3z1Q7zB9pjsgRB/DnvTWX15LQk257zj+D362b7DexnQKn07v6m8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777750054; c=relaxed/simple;
	bh=oTuQD8hQPIKuqy0ULEPbOF+4Ze1Eycy0A8GFnWnGCRk=;
	h=To:Subject:From:Message-Id:Date; b=g1f1h/Ey3/O0hTEZv7J3TA4oasEGJ/Bdgv9mczxQZLe/Fza90RoHWMegTqwymWpCk4Q82tsjR/ywBPY6T56QDnxhfKyWjwQNi8i90MdHPGYivvsQCnm7RVVmiZsg/D2W7xfBfHuZzuG1TbPL1kfQQ9+8lNBPdX7P3Y2hF3GHy9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTxiClJb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTxiClJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B822BC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777750053;
	bh=oTuQD8hQPIKuqy0ULEPbOF+4Ze1Eycy0A8GFnWnGCRk=;
	h=To:Subject:From:Date:From;
	b=RTxiClJbhjJcwGQIUFhNLD3WsIk7Q+pzFobSw3Z78MevoeZcapbHlwSvdK3yNhkK0
	 QRYG3Hl0w1qR23eb4h11hD7Jem8Ibgom14VRFat4ZyRpLeH8PUMegT4umRmTajT2wQ
	 M67gF6qq39ZhTk6AMkCPBx37GKZoA9kADGKZ5rV730eD1UFJ17XdxqQJhgTPPqgM94
	 gYHof8jXbtWJ+sCe8o9NM18oOPNI9ZdFaRnzebBj3hj78ApdDIbxyBas9Mb2MZHieT
	 jLE+F7fX3uqDxOaAxGiFXTfZTZ9BhZg0bTYOCw4p4vJrV3e/Lupdad8PaJC8RMHOMq
	 CPvgLUC+2gStQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E48CD3427
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775005368.25808.17537995653010071226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e179dbc792f967789271a2e9fc43d8a9d50de29f65915369d130118c28126f2
Date: Sat, 02 May 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777750053
