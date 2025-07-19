Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F141E3772
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752964194; cv=none; b=fFNLkolMN45+xXlGfOd6k2/WBSJ5aM+WH1w9qPBVXZ8oVVpKbq+bcNuDHzHcgFX58BaliEZRZnDHuW6UTwhBNeXLAqUW8l3DZtk11msAwNlmynbIYEN/QzMfIgxPQhQRfIy4Q84QcZyzjj+9iTVFl6EqcMC8mTIaN3eU1Qn6SM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752964194; c=relaxed/simple;
	bh=uQsmErp0JL9dpqNFK3/LZual/cpvwKVXqhEUdT709BQ=;
	h=To:Subject:From:Message-Id:Date; b=DZozYDKYb4nUc4bvxX9p3ednaaNRsDOIuvVgOKAxCAq+4Jsx/WJvqnXw4/9onCp9u1WJSsqm5WnTytCBtgMYa4YpzaEkwZt0QWhaWE+r3h3bmlzIceHo2Zs+swNJzjW/yfluYPfFvTyTUCXRi6ZxXpEUSlufOhpEcYEm+EmbOow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZvk4frO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZvk4frO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD900C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752964193;
	bh=uQsmErp0JL9dpqNFK3/LZual/cpvwKVXqhEUdT709BQ=;
	h=To:Subject:From:Date:From;
	b=TZvk4frOh7tSIICdr7kfWGum6I+2bU3Z8I6n94JoUFH2qed7kLfQyxvoqrtwQozly
	 KSkQeJ94QV5IPwnYs1F9nbtMKloJmjEjAiwtfJgDzMEBNirc+of3JoRzRUlbApSnBb
	 /MOhU78tiQvn+AOsE0jYgtW9U2MH3Ef7HtZoWEoAqENSJnkLedPSvK9ZFVOGDldibE
	 X2qTFjnz3G/eYUX9Tabz0qDk3uVe/C4iBeWmwyk6i0qSZ35S87I48pYcwl2OIxlfAs
	 QsLMnGsVEArAkbsbVeV6bJ+Knbo9zKsaPT1yWFc3xXWZsvxLax3QXPUawTNEgc7SmG
	 pAc/0gR5djR3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9350CC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175296419358.24313.18429093101786410955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead598e3be43fa20454e372737e84e89293d5ff7e9ac589dad4270a1d2b34aea
Date: Sat, 19 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752964193
