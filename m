Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB811F3FDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737456954; cv=none; b=RSZBiKesRhLkLUTfOd1L93SJlUONDg3qjf4mFBMTn3oyujcmTk+bBypybivXnShIB5Qx7Y4AKow5l5bEc9pfnJoSofuxelxsq2n/jVkKmjHj9Wxi+vtfI3CD1MO7R1mUe2vkhFfcBgTHX8AAbKz28EYyylXqgOpTpy6WH+R5vg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737456954; c=relaxed/simple;
	bh=Hc+tYDtVXexdZQbVC3Ls8BtKYtFgMalk/qUMDzCIf9k=;
	h=To:Subject:From:Message-Id:Date; b=kFmiXPgcu5OAWiCskvG70WW79Ro7Ado45RqlbdgeBWTnYiVn6ljSYqrEInaFCzfMhqWuWHU1kAKBYK76/8V3hpTWXSiPyHT5cNbjroCk1DF31lgHEglh1YxFDvPDB7gtqOu0Ouo5Q9q3elsJ5iu70zuu9x2qMgZlnO/I7MQikCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkWS5SOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkWS5SOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FCBC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737456953;
	bh=Hc+tYDtVXexdZQbVC3Ls8BtKYtFgMalk/qUMDzCIf9k=;
	h=To:Subject:From:Date:From;
	b=PkWS5SOTqnhAm1VZlHIXcI5GPCOr55mHJhEABzPmu0AoIB6yCuWjEdiZC4ecYRuhI
	 6vO+qNHCLF7ZfA5c4kxviUCEikzMIsA0ESNxtUb5PyAzEdSXlo7d8LcqfzpwcFH5bQ
	 T71Y08S7rfc5ARlfbo4HgfFdx1urChQh9oeqTPgnn+nzT20PehTcCS4ZKenz0N9UKs
	 6H5v5tHtTv2QaVgYhiZi7jMqGW5QGvDP+3qOcmUYbTd8Fl92AwkQ03anYXIWC+m1I7
	 j81g1uXjklgX07l9tbBLpfpLQbZw8aehntIzqS5fYL8Crxgqz66+RiqF7PUuhaT/vX
	 7u1zUVuFe9yxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91169C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173745695357.13746.2131284086322331142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec31cac72e3fcfb66419fb0cbdc3db8fe4766e7ee7a5e955397e3701298286f
Date: Tue, 21 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737456953
