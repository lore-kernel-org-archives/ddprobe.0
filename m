Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D1B37D108
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773822294; cv=none; b=igyCFZNqLxgld0saB0uAxNVe0FxQcnaxiU0FGAzDipcFFq8xcyDqAOFKzeXUuchMRWUCtRvDFwyt/RCikucGaouJhzxFj1Vdh03M+zJKe5UZ66DF//Bs0GsD4VWAm931Y/chDxHdifLSelivmOnh7LVbGfaGEj1f2vK8nA7BVSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773822294; c=relaxed/simple;
	bh=IDAdSosoaZSpecsvaVOy2PTm2WtWDIy2j8kJeVjlXLU=;
	h=To:Subject:From:Message-Id:Date; b=YA7JOu0ifpy+ovgsy7ASBnTTmXC/ovJ0lGenWBVNOmRD6dZXHqnkTZuOEY+5sQMHHnz9oguqZQQYHTGdXqgL8R5ioyyZj0jFxmJmYnZGWacjhWC6p/jOp+V2A0tu4VRWYYsfiOj0lR5aGrXFk9C25xaCCH4NWKexsJ8u/vPX10M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gboqH443; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gboqH443"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9FBC2BC87
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773822293;
	bh=IDAdSosoaZSpecsvaVOy2PTm2WtWDIy2j8kJeVjlXLU=;
	h=To:Subject:From:Date:From;
	b=gboqH443+hCGlP5JnI5fRI0x5t392CySATqRiyK7Uu6SgAXeJxzdtGycWTPA4LhET
	 tWoEDWkv6FuOwngr4JcdB1K8Lc9f/2Qm7mrPQDyRin1+9mJXt2TiyhPddudr8kuEMv
	 fofOParvBln8VRL51EYtTkboJHJ0UAabHypkWQ0+NXbo/d1ItcpmqjJ9Oo8dU7rUaN
	 dmDBaHDB8iqsfx7vGJswr238NgtU4gJ9/0C75gORf9QDlxMJUVZXtp+4QdQbvaevLO
	 XB1juQQaHvZ0DuDZUodaZVbjnduMPDxRvlHoYbZV3hkGp0R4dTwgLaAGZo5q9mBVWb
	 wH+VPy0tULSHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF96FCD0CC
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177382229357.23809.14393301122622649681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e736762f70dd6f880c9057cc6436ec1f91cd759bea67ca1ea49a702c6f0e1429
Date: Wed, 18 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773822293
