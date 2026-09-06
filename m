Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587C819D065
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788730234; cv=none; b=V1W+SF+SRBro82LBdd0a4BzThuPp8bYCXMGXUPPjIgw2aHWQRUuu+ugcwRE8yigep3ul3zyNZUp8l9xg4V62UTrz9M2j76fFA00eeEL3BIU1khvS8rL80Ll2hqpSWbdgD/NT9Ncfe1WDYjzMrzal/NsU+42HQ1GNsq3jlM2B8Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788730234; c=relaxed/simple;
	bh=js1rZ6q1riJgO0HXS9OlexDoYdTVw93Py1GlMbKPj6E=;
	h=To:Subject:From:Message-Id:Date; b=p81kpPhK30WGA2WaSOU9Z+a3VgaCGxqvrBSu+REHLtvZ71qno1p2nwEa3cY+EjG/Yfco3fAP0GXbVbFZ928iSORTVSne/hD4zYwuZe86+NLg4AejolSfknsestakw1xvuHAhE6IjlhDh3magkwQ9oWmIs1idYR0GjjirWWsfvPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGRur7rQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGRur7rQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D2CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788730233;
	bh=js1rZ6q1riJgO0HXS9OlexDoYdTVw93Py1GlMbKPj6E=;
	h=To:Subject:From:Date:From;
	b=RGRur7rQuop5Q0nq8K0oJN+wIAdKAPBRAe9bQ+QKLXflb9ZD2ddFBUMHsUeimyleZ
	 km+STKBI4vv4yz7HxicVCCTzpU8krivoThn+ZMbP4jynnUb9zOEI6vWO6SHTDgq2mp
	 GF6OpNH0wYwZejpLKIl3B6RoIj6dBohRZ0+oUJQ4U17EgR3xVkFS2dWZ1QDBXxMhlx
	 jZ8IkNtYglyIte3+OWwuyOVdRaj6EWK/5OmtvpnKcQNOmU+WShqID5ZYDIW5qqpo/S
	 TK2wgXEvOIR2HJ1fW96BLSJUeJRsGfqOk6JuMlYYmWnnGFa1t06YRQI2EutcaRdIZI
	 qEi7JK32j64ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B562DC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873023370.32360.14925560811700575117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f81a0481c4b9a097f77372715e27e3442bceb11b7b63550fe8654fa2e0888ff
Date: Sun, 06 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788730233
