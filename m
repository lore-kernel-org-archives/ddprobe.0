Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F6C1B29CA
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722431754; cv=none; b=QR5owCSEwyid1+iFYQwoQBVzT/0YAF7YL8TCfD5E1IpZpNVWP/31OBfjVJNmTdWLnddvfQ2YGVTnbwXjqKnb244/dlzMo+3WbJKTgoftAd2bf73cAShP2dl0Zzvg2WNbQjcl1K64ax9Ib0ZlaHkz0KNEmj3TE8UCiaWoNXpzu58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722431754; c=relaxed/simple;
	bh=NMHVOPmAly8YtNzwguIK1IY2MDxa9iUumO+XFA1NTOg=;
	h=To:Subject:From:Message-Id:Date; b=mQfpr0FdQflyUIm0D4J4f7iDPRHvU01C69HH3UQnpXYiQbTIl+MF+fOoUrMzer36VTsZzYECEOPBqG1d69I7VaHogKd4hhZwPpEnB23Wepa2ANKiYgyIVjsbfOiWNihugUlPPob4zJbgnPFz7h6vV1F8REpV10RuWhutzZxZLuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePcJGqCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePcJGqCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FAAC4DDE7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722431753;
	bh=NMHVOPmAly8YtNzwguIK1IY2MDxa9iUumO+XFA1NTOg=;
	h=To:Subject:From:Date:From;
	b=ePcJGqCzmI1AKkyjI7gFJVwlFB5ZbppysgcPBMqtZyr9jTiQTLzumaqq+TZ1GIho6
	 SEREcj8f73I9qOS+R2wNTNfiNwICFZIL8yrw4LpvSnrCsg/+65TD6EYssyTSNIATIO
	 DeTEIC6qPBmmDvSC697tRCgO4CnN/Nd9Rz72MHnXUmKrYWkePbcBx7GfMRFUwwayXs
	 FJXgPWKEUh4x/GKgsMydPe5VT8zeyyI5pfHRvhYBBjwYbnP6qBp6OJ4iEfpL7Kxco9
	 Q18POJ+P9afy/2lljeIvlY3Rf3D0+TB64xSG/OiBqKBo1Q8MHV8rpG/pfJ/5JcQD58
	 tw/Ng+juTpz/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92952C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172243175359.31218.13232705420734169390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c5e7e27a8739e2da6ef2aad8a17b0671f62bd6e79cd51e4b351de1c1d2960d1
Date: Wed, 31 Jul 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722431753
