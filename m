Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176CD218AC7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749339594; cv=none; b=SnQIIoc9Y9QH+muIrrs6mDvFgrddWQhtUkPT2JNSu/BrIia9Hz3NXLWv/KQDcvRws7F6V2jtAV+Cz2yh89ew6/W1tUjlo4oCgKQhKbTEaWcYl6B/DOK3IwHhBkOCLNZYJ+Zi3CKjDotEk7ddjfmo9ED0aOR+X8gt7DsYgVPn4Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749339594; c=relaxed/simple;
	bh=ckc3O4O8bK4a/sOZJQXGxqKdO2Zw93BG+XvjcYrA4n8=;
	h=To:Subject:From:Message-Id:Date; b=h9MhnArPMK/qjShUce+fHp5dv7jLoi5a9nmtUTuDjeuI+pXE3SehsVxc83EZ+lbUQZcNt2SUbd2AjGq2LFCyz/8IFr/OP1Vo7OXHvPsb8wKUl1KOXmEKOnbBtkuWVfntp+z+axryNJlmaIOGDI9FSd46ZrUQXIIjILMet0YhiSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECm0cyiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECm0cyiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E67C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749339593;
	bh=ckc3O4O8bK4a/sOZJQXGxqKdO2Zw93BG+XvjcYrA4n8=;
	h=To:Subject:From:Date:From;
	b=ECm0cyiDcnEv/Ro3svNlPBx88v9iSrupYKywGrcXmjbtU3MIlhgmXD09YevvsKFGh
	 dKOghbB1kpX6uD6sRiSh3pYdcvJQK0oY8C4INwJb4O7fPb9a+1PosVN37kLiVB4z1h
	 maA4EAA/TfBmw4A/nuuTYUvC1CBtIOzeJG8tJL8eXY3HF41Khqh7ZwGBBV8gCQSrq0
	 QiNSlsOMbS4V/XBKBhKHgYzEgKOmK2iz9A7oJ1l1Bv52KHDwEU/uSgy1KSTz+uIwBf
	 MCS6tZFRYaqI5xMuhrJ5EZ19vZYmhBR26MifDMD+c+2k4hQ3bq659ydLJwultTK9zR
	 BsFle4GNVAl+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F6FC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174933959357.30321.7550569110828976573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2664e582d792f0ff5246b89dba9e509b4ac57f5166dc99a125e5103d3fb6085
Date: Sat, 07 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749339593
