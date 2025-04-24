Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299041E0DD9
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745475594; cv=none; b=j4bDSCyCNjSgoeSJqn8q7opGvO3S+6z6ZJ1gwRSmdc7YyWtBxAXOHUYB19nrJQqBSFEoMXk0doUOTaj1ZuJf64a5sMdBbTGbF3TLvRXIbsoaUKzGMUKEm95P0d98bS12STMaWZywez4d+ivZiPVE0OzH/9tTOqxI02roj7T/1qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745475594; c=relaxed/simple;
	bh=rZK8IBlwvq4f8rDDE5816yKaEIJQ3CKOWQoh5c40z2s=;
	h=To:Subject:From:Message-Id:Date; b=p1QWdCwHHVatJB+QL1BWb1Yhpxg4SHIHSUv1ZWk7R4du4iv6fqZKrCcWhiK1T7h3bENPdgwN/otRvzn/hcki9o6akqxxwVayKooqxAAc75607XpdsEZCbhyFsjv9dOwBsTy0O00lQL9zP0q8UfoVLIGNvATYn6eJMYGUwPQbNs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5gaEJ2P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5gaEJ2P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4234C4CEEC
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745475593;
	bh=rZK8IBlwvq4f8rDDE5816yKaEIJQ3CKOWQoh5c40z2s=;
	h=To:Subject:From:Date:From;
	b=V5gaEJ2P1ah1eQYJlNBdZqQQutGWRrIo9q91St+z9Il+up27/8s6d36WMzjYp1EzX
	 ac/So5WsjCdOA7IB/q4mZGcOWwOU5a8/osSIchbbgYs0vTzvEoL2cjJ/DSxhAZmNLK
	 P6qgAsnCI4OF7RhE92ozcBhshlPG/6C58hqJ7glqDUAAbmsWOU5XaNe0BttAAIBYRU
	 RRNLXHLn+H5WncPSXIL5OCiXQx4gmmbUnf2BnuhIqInvuSbHN7YQczSjAR72ztingR
	 1wl78CV9hEhdnTcmYdMisFT0ZHWHWJlOHhko3SxduW0iqzdt3gs3VcQyL4ui3VShG/
	 W0sd05UidhAtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9300CC369D5
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174547559359.13580.11667699279247372131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760a2b163827f26e20b881b83ad12b58c3a0996a60c6c136786591ea33bdd677
Date: Thu, 24 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745475593
