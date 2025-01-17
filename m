Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE8413C82E
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737126354; cv=none; b=QrOE5tmsmb65wdjmOnbqF7EZtrdpwj5ZeIjGQJ8+Ka5VcqRU4uS18bcr//qcP5ck4XEUEqL+wAPJqCwY0qAbPe0nziybvmlUeyzUT/hQaFex/14AwiPoev6xZ72Fq2O7nflTbx7DC5kY6Hy/feVnLg/iqPpXSJax1wSGlSqmOFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737126354; c=relaxed/simple;
	bh=w0xQ7TDSJrVvblplzxflT9Zg4h0XelRlkVy8wg8rpVI=;
	h=To:Subject:From:Message-Id:Date; b=OVleDkgBy2WfQ7vbhbVoo929BS2LDczr7Sp5LZPmttH00+/tN9HMZhBMl1qTXuIW/R0TAUvCsovd2ZKp1jRHifj5gVLIY+eorn8Dl1hhm9L5Tcw8ncuAxee8C1/K73j9quYcFjs2VDOduG59HfJ0hqe6kGuvn1h/M/6kugx570A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdhWVm9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdhWVm9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9C6C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737126353;
	bh=w0xQ7TDSJrVvblplzxflT9Zg4h0XelRlkVy8wg8rpVI=;
	h=To:Subject:From:Date:From;
	b=tdhWVm9paHoLMt7rwWdZmF3gA9/YInZVi/lyIHf16JeLIEgam6oc9mgyf/Muzoaus
	 4qRoKk1RoFtvdIut2lpdKt68vVuKfHYqZxxgabLSUl6ZPgvQafomVZ2jfhPDmuw9XJ
	 J6Rv3/FOFkdNqADez86Rh2wK8/BRXgo1BRtT1DFJUK2/1AxgG3BxyMCXw+DYqjniUs
	 oxeE9BYShgeGQFFr+nvdBqQxk20oNaruQEGpxL+15r0uFx5Kb6nQj1Os44OeOZ9oxd
	 gkV6mXOl0N9G5fCKzGRYLz82SXnWnGsLUeU4Iu5e68Y8gaMBLY3kVHgi5wl30u69Di
	 w5vhBpzD/usDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF34C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173712635362.30686.15583165958427968577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e1ed3cb1f4bf46a1473ce0d26d801300f6ea7be8251508e7eae399b929fddb
Date: Fri, 17 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737126353
