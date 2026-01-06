Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E43931AA8F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767697434; cv=none; b=rkUYC2bkWItGgEh7QzhuxdnRVnHZGwbOSAJYblPeuVp5sfv57lig8aXOioVbS1Vxt3n+lTmH41qgdr9pXnXSFoh9dlrVtESAOZYgKJzLEZfui1g3E78FBBx43OMB9bBx0zA4m5ZudqKJvxGJLcgRC5bp0Kq/06aqiIaARSVRZm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767697434; c=relaxed/simple;
	bh=YcU43xL1SMyQx/7GxMDKBnlZl3SLDf8nCbvfPDGKwKo=;
	h=To:Subject:From:Message-Id:Date; b=r3wHkF8kxZN2lnE12r3lXP5WjEBol1fCvDRZbiGyyaE/hbX48d7lZXagIS538x5zMtWLMYeYHPlpKQ1m+9eHDqtc3OqMMbNp/Aa+FWHgAgfrovxbs6vu2hLp+QdHoKMKINBDrEBgFa+U9mvHaT/aQcJm/nUG67ZOhrok+jxUalo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2To/fCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2To/fCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5976C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767697433;
	bh=YcU43xL1SMyQx/7GxMDKBnlZl3SLDf8nCbvfPDGKwKo=;
	h=To:Subject:From:Date:From;
	b=K2To/fCmn+mUwbtR2eExsreXQUU0Cz7oITDEVcVlJxIRKcVSxm+ozevc07/vKE1By
	 pCUymjcve69Z+0fXvs4k6crrym9AZ6G7Bxvig9Mjs2zvBt26302yDD6HbhkWG0oJvR
	 xv+IZw9sRoxg9r/XYpZFQBlSGjCC9311URrrArYFknbYaULRej/aveQv81FAO9ML16
	 vivR5I0XtdxeXa3I2C18OOTNG9lhGZJmvj5jEwhB2zDZ/nIUzdXNRWGEgUy5JMqoN9
	 lUJ93aurlLF857TkTQH9jmwqd+TLw8ZlZAFnwZ8KAfy3lF0hF/9JvYzDeoBs+2Lca5
	 nFl5H0cIfptzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E4FC47BE2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176769743357.8876.7042147075738257270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d295dbe8a713cfd5e6facaf17bf941405e830edb8bd4f857f526d5f7af57a394
Date: Tue, 06 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767697433
