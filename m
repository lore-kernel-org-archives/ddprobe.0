Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C5E350D6B
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768156434; cv=none; b=QV/ddtAqB24a6zTrgaFRRhXYvQ0vgIZm9jgMUg2inQ7+L7wmeXsL1CgrBn2fiLclPc5sjKOUZ+Xk2vF6FKkOnBifkD2/y/G2TGi17dS0VwuUIXsZrav+/Cs0KQaUdxIXBi0kt8P4qrakGAnPlGqhq0e+KNQnZcdqPpMZzA/ry08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768156434; c=relaxed/simple;
	bh=sdkfhdu29R4JkJc12pKIYUd/iar0krqBeqi9z1LDAvI=;
	h=To:Subject:From:Message-Id:Date; b=J2sABFAD4LX+ykkpj3T9KLYb+5qYBLT8MxDa2z3RsyOQVkqvyoa0VsOQnFu6xoW9UocXHLuBwKfBAvdwbFVO87fMHaKyL+XfxksX2KzhyEiZyRZTKM/HpVTt/eZXc8BLnWc3ssjiZrvFdEJLF+gtGgIOKFYtCh4ERix2o0vFCms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/InBwDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/InBwDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7505C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768156433;
	bh=sdkfhdu29R4JkJc12pKIYUd/iar0krqBeqi9z1LDAvI=;
	h=To:Subject:From:Date:From;
	b=o/InBwDVv7vdOYGS6NLDQo8HyTfe/3by4DrXguFFwNNr7MYLB5TfsBlxtCDZhM9k6
	 1djfx8kRCsrJlMXTbGqLXcsIlxhPoZEarP6BT6GAijp6oTb2cCbL9D8GjRIe2MuowS
	 2HFaNa70RW6B4y/W2bEov+XoI8E78oWM5mrm02ofCHRIsWbnP+74ZgmevUzD5i+ACt
	 CaKoqFykmg8NKwN4jvkbiOM7HUd63FIUoXWoZtu2b8xrAuw9fXhTR32rXhcCpOc8YY
	 5zaM2+/DYv9R5nwIbA3go29wd4PJbnHBcPct/G2/4C0hEWyFR3GsxAFgRuP63dzO4H
	 fV4RVwQG7S2qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962CCD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176815643358.17829.16440112169636729246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852844f050e73d80f49d353e090c574b5b5dd1b10d603472a12ba1769cd17bfd
Date: Sun, 11 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768156433
