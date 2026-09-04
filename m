Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B0646EF65
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788520234; cv=none; b=YakoMQXlKzLujdA1Gr1hFRwxpSQ4Yn9fTarXj6iNwY7XBM1V/DUVvItKojjFd82/kFvb4QiMR+puumjhH2WsxVc4W3Xf7nOxF9DsJ9xwmVtDTs+OOLlROFuJYZeAw0XxwpB40SMCWiqyZ6Y68NzqYRwN3jigJ2DwIEacPI60onM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788520234; c=relaxed/simple;
	bh=vs0wFaEe2wtbLgCClhCgurEMewAh7WNFZdlNfd1VuU0=;
	h=To:Subject:From:Message-Id:Date; b=C+7huf0Ym5UOglhyw+16z8UAkIFgnUECm8EOG4uzDPAgZRVOTQWrG8oqnJs6rkt3nRIMeJCyjSQXy5CicjUmHB1NgkjJUhCd1cxnTmGeE+RSiIud2AUgTuUeK+k+FODL6mMJmszPUrZldAVuSJmPxPOC84VMCa/3wyCy6kLniH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5X9Er9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5X9Er9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E240AC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788520233;
	bh=vs0wFaEe2wtbLgCClhCgurEMewAh7WNFZdlNfd1VuU0=;
	h=To:Subject:From:Date:From;
	b=L5X9Er9HvCSYrlii9vXdPB22kLgUmCddG+dALg/Z2lGE1gwH5kxwTCAWyXaEAfxa1
	 D4W29fLY3a5VtVv9nHN9hOrK9m3KBrZUsh4K2rjgQntxxDL8ZHRRDwNPN1/iyEtW3F
	 A3CrJmMm0CEf3yzY5fZpqyxHe0JJiZT9PlG3fMcY7I0EBa4meo99yUVuYCXK5+Sjrz
	 eqdUi3iB6zOkDUUiCHUzGdh6ZK+eygSsDD93uvcjPDd/+nReD4R84Wpj9hKQYmyMDe
	 XAYORw4HOWpC+E6mky/KrNcqnF8ixpw7GkSlWMNUHp7B53DyUglnbcJjOHKYnuT2Hz
	 r5ahumQ7g7uRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F1BC61DD6
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852023374.14201.5997270880471351532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9d0eadf6bcdfe6740e1726d7655ea4cbca70e95218accf91fa59162f91fb02
Date: Fri, 04 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788520233
