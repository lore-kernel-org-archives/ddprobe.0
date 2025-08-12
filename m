Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25538296BCA
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754977194; cv=none; b=QLRxgYBmBNSQiUrYWcnS6Zv9kmlb8Q8lQ/8AleCqXPluKAFnkXYuGyuxRRf2j3mcfaKZ3b096nugy1wSHmjKnpWpjGaF90yB2VAfVKlU7kJhitRhtWURbXvls0I9aGYAgfQqTHJ6XPbYGNRPuFforkIv8L0zSveQsROQ7Q3E/JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754977194; c=relaxed/simple;
	bh=97KVRWO3gKKz5arUO0LVwfVFOSEV97GpLIUqX6CXgXY=;
	h=To:Subject:From:Message-Id:Date; b=AjRm97iD1UMgOSLAbFesY5vdvN9Dx9OgL4ld3bYp+YixFxMk1xKfdsINsACB2WnSUnEI+qadPo/Exv3KsmFnwKE6s9JDqPLPxed/fAZgWGGrvIfY7ICnlR+ZPWwUr/SZ2WN0s1xQyJgEs06A73/JrpjlhNrp4iWM+aW9h3vTRIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EX9yYjZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EX9yYjZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C4BC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754977193;
	bh=97KVRWO3gKKz5arUO0LVwfVFOSEV97GpLIUqX6CXgXY=;
	h=To:Subject:From:Date:From;
	b=EX9yYjZTyL/On0vGU57oNxWsCNw/EnQaEmSEHB2GTpHnuwg11Iz0WLtVFhcWQ2b8m
	 /itHV6smRJ+BKO6ROhPXDkBvkc4/VCkeDz6li8SIvlVck/cvLlsDwCqFMxnxrDOytS
	 VevBl2ZS6W+lJ9REuLTND8cn3cL9e/B4CGYgXDud48mwZ07fO2zEV7DJAnqVkjgLUv
	 n1A9jql0yg0Df/eH8nRZ7w3N1MvQGhEPInJiiY2/H68iGPefKem071YoF1lyEF36E2
	 YAloDwOOz9iBfuax08ekFFXE23TmJA8rr18scjKYoRcAbR6ap8+AmxTI7YM0awHScm
	 xeoLt7WZS9wvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B9EC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175497719358.4175.12395280513101448991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890e2457b9218b7d2e018c305feb46b3a0ba9aaee03c0825e18369ee3303c8cc
Date: Tue, 12 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754977193
