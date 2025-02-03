Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B4A2040AE
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738586154; cv=none; b=CqhczaG6V65vLNtuZA9P0lQRI9HuAEyJR1qXIK3NG/2gML8RmYg+0ntF8GUNeYdjNExPBGmnvuX2Vv//f30lyOJFj0XUwRS+Rz8itlbNQKJiwcrG6XMZQmfYK9wSDWYymYTJycUy+zl1C09kLlVrE1whqj04phkboreHYubWMrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738586154; c=relaxed/simple;
	bh=KR1TQTH+vBrtiTu+PponEIDbaj582IWTIefdyCkzEq4=;
	h=To:Subject:From:Message-Id:Date; b=UIPTvSnKdQXa8hgqNc8IWwGbxSCgnrpSOFsUYVeDDgzRZQDgPLhQ/emKQEJD5ow7Xx5mmN1rjPSnH5KcrzTJJPDyZqizpfEBR6U9MsoETl5J9wu3MMyfgMEdtScPUfJc72ljZUsWUmwylR3DAjMFZswX9/XcgRR5Z7RU5kxsAXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=da23+iao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="da23+iao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5890C4CEE0
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738586153;
	bh=KR1TQTH+vBrtiTu+PponEIDbaj582IWTIefdyCkzEq4=;
	h=To:Subject:From:Date:From;
	b=da23+iao5jcKwqXyEZFhByCGwoLx1wiuKOOLT5VpEzR84AJkV75O8+MWyIl1mlbea
	 tZYmBoELmcoBy+zoZYrdFVwbqBkJZSB5SjXErfdcZlnpetYtIbJnCsWA/Z5TtC6l0i
	 fOEZPLHODX6zaiUpQhFRiisL6r5ZxktAO9sCcJmODpXUI6ElW/1x3OG6+0NCiRNaPT
	 WL3lWYpiADJ9D3j5TikyOwhkZfNO+gxKJ7ZXP6k9DBm5C4M1gWFJrx5+LaNGGUw8QJ
	 qhYjpKUKw5XN/fkouVLmisqDk+yn1IzBq7vlFz9DyTBrABhRxXmtMLq4HTxQQUuNAF
	 EdId5WCKPzqeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954EBC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173858615359.19133.4613890733011113942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 553eacfbb4be201b88103fa2c45dec56298621db2606202712341a112880971a
Date: Mon, 03 Feb 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738586153
