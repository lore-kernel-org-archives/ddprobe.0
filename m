Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1128426E71F
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780731874; cv=none; b=FwVHb6jqcV76QXfwewGPR0SjVkFYIKJL44P6qmFMVTIOm9IscPqpKM1bDI+PeTS4F+PJ2yjHbQiZce3cG0uPR8D0TESH+jCOCjb0cMMnhvupIjCzFGJqMWnynwrCxRa+NFU2t9dSOCc/ccwjwY5BLDIcZ5mx1asPVDOqDAPijcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780731874; c=relaxed/simple;
	bh=imQn+kTyzAiJkOAavGrsxQlCwsCnbZPRsHMdA2vj0Tk=;
	h=To:Subject:From:Message-Id:Date; b=kF2mxcCVQwrGywKYhBjjHRriRdI1juXU8VnhtxapXlGSNfGFNiMoOIGcK5VHKYSlRn1H2aYMMQE6AiKMvcLKMhYedHZif8lHWJNAYTo3KHV5l19KkSy++gdvf3G7yeMCWeseQcZ/kBLZpFo660t6TBEB9qkT7s2G0MvwiF3ybjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYliAj1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYliAj1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66CDC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780731873;
	bh=imQn+kTyzAiJkOAavGrsxQlCwsCnbZPRsHMdA2vj0Tk=;
	h=To:Subject:From:Date:From;
	b=cYliAj1O6h5+V9sg6+KODdeziAGm4lwv5arftf8GWLAYomHfSJkgZPZO38N0jfTLw
	 INnC+XWi6I33Orb+al2Xigthdyb+3U+Z8bZyk+4ulS/RfSUpyAME6y6Y8bSA2FMqg0
	 P6T+W0PcG+0qU015iTrvJonN80+To5bzM2kWYsUO7p59Gj+sJp9lpa3wF5W3X9eZTs
	 wtHENVzUSb4Jp+3biOhkCl6YIk6zTZ4Kif5IvQXNbmxD4wS9zVbKn1Pa7YHpTG4hnc
	 fnh3GVVaSDMJizuZeYQxSOzXrMWNhmK0Z7dB+sqzXrQNyMxf0HUj4s+FWPzYu2G2BO
	 Vzk9N3xU6QDyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60D4CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073187372.29894.16615207755820228029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9703f2b2448521c70e09d69500feaea1033b77c09abb2797210fe69d5cc2775
Date: Sat, 06 Jun 2026 07:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780731873
