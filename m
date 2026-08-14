Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F1E3D7A07
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786672834; cv=none; b=Yndxx0l0FXyU2G/HBSIDW7t5o/5geBoTXrtGOUYZbEEVJWC6zxTvGwkPxzz80DDiyOb7ZUFwT0sj93KSm8lF/2f9x5qSVyn67UlDN5BeFj9Zc1JMR+ViGvKE+4ky4CF0wnisDpeuFqyAEcUGSuh1NwHFTcvYXatXjL8ybP+DMTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786672834; c=relaxed/simple;
	bh=KAndaIV4NJ2p1SNV0ivub1Tf36edAkU8xOhndW2Yh+M=;
	h=To:Subject:From:Message-Id:Date; b=YDftKSRkyAy9kmtAdZHoIwOvFBVAKj/pKU31ODdHATFz8Qh0UT6pshjo6oCpALV2J5jQRCHDHvxnchYERUf+9dSwqUT2QHywjwB6TDyft04pB+yHHyeyChpQdZZ34dVC7lYE96OMsUhRu4HAXmbhPvyQZWIkXA1VOpI22ONXodw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tORNBpeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tORNBpeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC575C19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786672833;
	bh=KAndaIV4NJ2p1SNV0ivub1Tf36edAkU8xOhndW2Yh+M=;
	h=To:Subject:From:Date:From;
	b=tORNBpeueLba7VgS+z8YIebs9+2pDvrvfhypwfOS5i43kNA4VsVSqmhVw1xVS2YZK
	 vcx39z4QSQcD6W8EC7KbqhTP8OqKIS7xvioTSOtmjPis/s4uPjcIWnlft7YVVnJ+ri
	 ygQ6ApPQklZIYe5y20UN12Jvs7ejkvrtPiO7Uvsd4zXI6Z4rdWzwfeAXGB0JZgZRjm
	 HUqsL32h49BJce455RvxLbnNJ1xHXwqqSbMDPTqSMJUzRiutP4J7hActutKzCJBta/
	 u3wJnliEVWEkxzgYBUEOJuKSGsdz5nPh2rbQskPo8tTcrgEW+qcfTcZr9Z8TLI9zUA
	 JeBqblm2ptpAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81D2C5DF66
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178667283368.21189.18415138078048263073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca5a23a7bafc79f16030ea4da70bd8df98d1441720d12c0c7dc57078046fbd32
Date: Fri, 14 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786672833
