Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C2428DB1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705655297; cv=none; b=PoTmUm/c8ry7uhW3yKlLeUJws2ZfFNkTUdQw7UQ5Pr2G77Ilh9Dt3FnZk5/WQkFEMWNg657hW+49VdtjIm7HNfZdTB8WoCx90gGJ1S47FwvSbzO8qHqZIcZcTzzX7LHTE9Yuy90qM1+TBJxnIHyqto2OjWp1WKwo71FJxiip9AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705655297; c=relaxed/simple;
	bh=/psky6vFXXBDwCn6NpLG+mTqR51dqKFRO8Lg2B77k0c=;
	h=To:Subject:From:Message-Id:Date; b=qVwsHMPGCeGLSgs9LvEgZjlXW1KKomNZb0oaiUlnlrGi7vIkOTKAsO6dnW96GoiA6lm0ZAhLsY9f4oX6TuvIYVBALVEprCgVrl6YPP4nzrC7wqhfhlyGLi9IgsiRl/2kKgoOSoFIkrXF/MxBxZBuheRBeEMnyZnap4H0ijEsoDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeBFBfhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeBFBfhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7654BC433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705655296;
	bh=/psky6vFXXBDwCn6NpLG+mTqR51dqKFRO8Lg2B77k0c=;
	h=To:Subject:From:Date:From;
	b=FeBFBfhUOuxoofjqSPrYwBoPbr5t8OIcWFza5vEmGSh+8JCRzKXjQLYoZDKCLf82e
	 X+gDd0oUe0AU+jCoE1PInlQ0UVlDaQ/zottqWvFzQTe39DHxssfX6HKH4BUTUthRao
	 Yc4+nFsu36pWI5MLCbNvFdLDeyp3NrWOp++stcjin3KCwZZGssmoe3BwNJPD5xx9nJ
	 Jp3AqhLBubRzAFZSnBVcPs6ZwcJOlaW+kkfdEeWUo154GRnkWQybEXC8IY/MCBOh24
	 dRS8zy95rr1BvjEJ5FHa2RfTn5oElqmxseDpHYqFxojH173bo989uv81nzf9xuXWP4
	 I6ZZCNhwo0NNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C162C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170565529636.6667.12836716356631848911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4035d22801a72629ddaca342ba1c169de1dd8ec34dcece56096bf9f1abd74f
Date: Fri, 19 Jan 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705655296
