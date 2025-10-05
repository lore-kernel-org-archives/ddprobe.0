Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369D733F6
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759669794; cv=none; b=sWmBwiAJxjuTRUeXxFz/6jF4cHpW73ogYtXblmqSH0Op7Zj8K/DBEfjmBjLJqhjJY7U/PZ9MNVZ3MmDNuRw3CkBGDdk7igNVAnb41bxC7kIRvENwSK5TpbX6Do255hkLVArApuIjVknF8uAyv64NxdC7GNcZiC8GHtkvujASLks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759669794; c=relaxed/simple;
	bh=gsNPYJvNPOI4avXsqYquF8h8zV7UN0Su4H5rWP3VjZ0=;
	h=To:Subject:From:Message-Id:Date; b=ozgdVQ28vVU6WMKaqR0QbXJDqITgeh/7pVK4PA+g38aukhEAtMgmdF9aWWbKL4o61qPWjUC6m04VLW08lkzimjOjLw6L0lXpXzeD4eVhA0ZH43WEntnGaaSgKzwf2iDeeli0yz4pMiAqulSQZj5fV9cPrwCjJ9mT/lotTtvXhl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2HpIh2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2HpIh2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6130C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759669793;
	bh=gsNPYJvNPOI4avXsqYquF8h8zV7UN0Su4H5rWP3VjZ0=;
	h=To:Subject:From:Date:From;
	b=Q2HpIh2hG/KBVSvbuAmh1e+QxQ2lsYzAyyIqrjtYuczMKp/kNy/U5cUuvcX1IbnxI
	 YOdV5UJhPD4H/eYZo6KyeTZRBMqVs3SFR5Ej7b612wKjwUWXt/eP086acg+HwFlclH
	 DIp8zmjxY3SvvPs5qQ/nwOoJBNGR6mY+U+jHBPctXGWDfBN9mGB2t1q315eAeTeqhn
	 jeKWdyx4cK2C3LQo1kWI1CntK5kKYS2H7oqlpEztnisbViMNLEIRCMPWyJ9/M/7MQ7
	 nJ0z4aSsX7Omq1wJ8H8ZgtEsrwI0uILNMjgBclZa4PCiMW+MyigL+5qbX2YAqqCTg3
	 64yh+Ub4vt/SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94143CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966979357.3169.3160574726302917075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42793a3a495bffd880d4cd176691eb708c604d8aeafaaf536757617ea2d3f2eb
Date: Sun, 05 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759669793
