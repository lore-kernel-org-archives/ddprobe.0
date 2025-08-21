Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F71B2EC55A
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755784794; cv=none; b=gLbnGeybA1s3rPeoFA66hFPK+fLL3l7MODSVuRIj3ots/hA6VcEHOuOsUaivE7o85jDKbeTitxQJrzkr/7d6Jnzr4ei83TYvSMO5Xu+8Iq9lwg0Uja89ebndXJ7u5ZnpB7KHlyOupcOUvZ/PY+z6krCzzJIxjknoIdSu6ct28m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755784794; c=relaxed/simple;
	bh=ovwJKqZA74f2HX63KOMgU1DC9R2t0jsaQi/PgKSVDmg=;
	h=To:Subject:From:Message-Id:Date; b=SrAZpBI3o/m9gSA1KczRetc9sxGyFmGhX5NsQ8Pf8BC0BulwobiEeRqNUexrGZVdz5nPU7K8u4C53OanyUBJYJcoyoVa1CA7yBHH1pc32QxbmMhotUliPytC+6Juc4mzNkuI2AAoLoQeRUdFrlMz40XA0ADWJMeL/JVeQUb7f0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDNBELG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDNBELG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C77AC113D0
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755784793;
	bh=ovwJKqZA74f2HX63KOMgU1DC9R2t0jsaQi/PgKSVDmg=;
	h=To:Subject:From:Date:From;
	b=YDNBELG1HTBTMM2IAApmlcP3G5xY8QCu5RMIefknlGRHf19FMuC3NMa5fME+DRSQO
	 FuAQ12BBu55/xVW19sVUmUDirV+/gBupBDT5blJCE4RdPm/RmT6fPKlT4zqZHVoCuJ
	 H0Jo2cftiqZnN/uYkdFAGVkqZ50DZ+kJm4wZNHn5wCpHuXkVhuLIvOWGrSICaaMjee
	 EH/JxO+z/ux+E571E9rV6vKG6g29hSpnCVSliraEZqeYNOymlfUkyhE7vxe7YkhxfO
	 /oun2veRmKqY95jCLqP+QHFdaVjAPMJm+nBb2+TR3KBtgvRx1nQBdQxBSC99KPV7Lh
	 pbzVO9pQoLo3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E929CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175578479357.12026.15964935163550972208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64570d5c7a8e5dbf450804625c7c6eeb879e0f43573bdc0ac539bdd74d4a5ffb
Date: Thu, 21 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755784793
