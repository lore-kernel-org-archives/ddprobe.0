Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0951F1507
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745268594; cv=none; b=I1jziesxC/oyOYLR0XGzji6u1TJGfE5spaACOZ0QIeDNAAfy4mUNOZsvvszR/WWgZ6HmncGfWKYT07f1s3SXPRXthEIHzSC3XuUI/9lF5oXi4nhBxoZSzFVgrq9ex5R1purx6uuYygr7j+7HhRlHg9UT/TLym9X1daHG/YhBxBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745268594; c=relaxed/simple;
	bh=msS+lzmz4ZHCJ2r7Q+M9s8Dmb+Ls7HoC0djS8NFkElc=;
	h=To:Subject:From:Message-Id:Date; b=gkXCZL651yrsULRO8hHj6Hm4z1R78IlaotU8l/vmAZL8clWYKWHLOVPD0U/AG3seNiH3/Q5+sP7dVsKhA/wUPgFpRE0iVWzyiA3BBMSZU4I/vdwGTEG40zE7mILR0GWNSjRGjPn2xe7fplUugwlKGXXZ9NthFU7ZfakrIIVKzOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpbWguHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpbWguHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C55C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745268593;
	bh=msS+lzmz4ZHCJ2r7Q+M9s8Dmb+Ls7HoC0djS8NFkElc=;
	h=To:Subject:From:Date:From;
	b=XpbWguHs0o46Kfc1DXsnUpdHlkUiLhde88tn+f/KvTkE+cMErvd8gu6F4fMEi+Sw0
	 wvhVf9SLylVyhvZADaDAZQlzCqI1WUmP/sweTmtT1piTzArCOftxPxSzIXPN5/vU1Z
	 fK/lP+fYXom5EcdqVdbaSP+rQyTvGoBPLY6BXgWnjeZmFCtIVjM7HpWipaYHZ7j6OG
	 YzS5bp5f30HSJSDnWWB6qGW+IBOCrNT9nccsw9pW4K1ui2IsfGNAmkyq7u9YMe3zVN
	 VmZZDW/wbsd+dbTdea0LBe8Z1ErZycSQpGjzXrF550qkr6u5vF9zWcULUegUHlcDjc
	 O/KwWHzjLMH2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9873EC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174526859361.32532.2415020672942148532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a05400f8ec4a21f1614b3ff2ab9004c42277bfe301bc01be9260a1db27a348f2
Date: Mon, 21 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745268593
