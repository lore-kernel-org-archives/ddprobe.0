Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EEB1547F3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728923754; cv=none; b=sAuNZ0nocfx+Hoi+2/TWrqZuJDaHughyoEtc/MinuAX5zqE+EF7+f2JoQ228zdgD1jWDzsoiXp3hDZEZVgib436SPXPyOlif/ciK6kGYNrQD0nC0w+KqXtsz3gYSw/cQWPOzgzdEEwIgJmCsPol8Ls3tq+cSSoNjyWhsnf9vSto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728923754; c=relaxed/simple;
	bh=CetxaC8ryFNPGYkAmvqEY0KUjEBGkDhbk7Ww/0W7RsM=;
	h=To:Subject:From:Message-Id:Date; b=TXwqrjrpqkyisQ40vE5eVNSiPzxfGn6RmUC7GAqv6KD6PxNQ+AEEfP7z6Gb8bi37C1KCYZx7CBsKJTJl3zb9Gxv/gtAGK90krzbzXZK2hsOawjgX+7tOrNp7bsIQZCFl2uONEPmt6kQFmW8tdAeCCJL5nE5L9NwulSYfHeBNbxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niKnuEs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niKnuEs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0F6C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728923753;
	bh=CetxaC8ryFNPGYkAmvqEY0KUjEBGkDhbk7Ww/0W7RsM=;
	h=To:Subject:From:Date:From;
	b=niKnuEs+Ytozb17dJn367JB4fQx1LYhs29rk8f0sux1ez4V0HJb50j/qBCs0jWnd5
	 i2yn2l3XBs8LbZW0CTN9CB/XI0bkP6bZZJx3SQ7Gaeus11DasTkza+wIyJheseLiW5
	 cc0ecYsIB6bjyDFFbwzITFGQq5D9TznkK/NDanRs25N9tK6ef47c34EzON7s9SlSWg
	 6xYeEaPrqs6QDoHQdcK9ycbsy67Yhsu4bWtf6iBEVgbkvZN3PJz1cPL4jHkTGa951E
	 rWu4wGAbI8FJZ6C6p+ub1ANAyZiInuEEjDuA4QS9XKO24oZVxe73xRMXRBzGok/pKb
	 AX2GrhlIk+/bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95570D18130
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172892375360.15056.13769057812202282319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb08bf6eb06c195ab2cab27df6c7db6184e63451dc2d40a94bc1f5d9b29a70e4
Date: Mon, 14 Oct 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728923753
