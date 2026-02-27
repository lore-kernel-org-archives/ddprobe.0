Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBB2378830
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772216694; cv=none; b=kVrHEiBMVnPfaavgIgPpZdmo/u4FNVryeRzP4I/7nliuAJOcR79BkH+9Nkzbl64pMxyr0JveNb5tOYz7xiME8zZbLDimQntmqy4il1lo9eHmuad9tzpm2pHi6QxblY10L2TdLhPJ2WhS+8edWqFq1rJZtoiWa8Wqox9aPbueBLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772216694; c=relaxed/simple;
	bh=kSwQk6bfgK5898Ve9+bcB422lXrCKY8rngndbXwa0Nk=;
	h=To:Subject:From:Message-Id:Date; b=uGi3+wKWk5zo7rdXXVd9SdYiRuCW0SKRnyvHq9N5llsF7ALWTMw6EQ+f8Axi3u+nrNaNWUqlsn6RfkjFOqj+c53PIOWdgbgNlwH1vADP7z3xOEZOAxGxlAAAZRqn7GMVyepaZwHkDdp/mBvEq6gemBAAa+3+ZNoUrMKt/TLPh1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYJu44DE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYJu44DE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB19FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772216693;
	bh=kSwQk6bfgK5898Ve9+bcB422lXrCKY8rngndbXwa0Nk=;
	h=To:Subject:From:Date:From;
	b=SYJu44DETP1PXWiqH8rxt+0f9zvefLbVNd0HKQynBtQmeUcI77tTAwZTqghLQllm3
	 7vlOcO6xz7koQJRIWbnA98/ZEd7lmz/pgVNEAthl5qRlffbJBxa79BTwTb0uYIACh3
	 6vT4Ntz1CHiUlUKOovRgfZH25GqtgV4zQHJHW4DZvXsFtoJXk7KDoFe/93dTzu5DLn
	 Se+iUCF2P/BB1BlVzzg7yiHqIA+LgpbsZBf043w+ta6FzYT4u9mNE+8vmxlxHFjdqu
	 JsESVYL5mJaAF/hDG5spb1yObpYLrJpPzZ5wP4I6vSwPpiPl3A0b6mPxeTqgoJjMPv
	 /u01Qwqrgfdbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959BFFEFB6E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221669358.4573.16148748787850577928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de209f5c0201b5e78660b1a09a2dee0d3e251907ae2a174a0b0dbf386b1aaa35
Date: Fri, 27 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772216693
