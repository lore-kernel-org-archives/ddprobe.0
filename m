Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A74285053
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756934394; cv=none; b=Wtp8pvr1c5EXQlv531IHWo9ACl51Uc7KilQq+WpZm7HF9vpSxnE75izvVWte8XimyeGa2swpX6sj9Pvn+I4Pom+fn6N3uDX5nw68i64McB+ZbuySIkqWzLI5qpMxpBKmsTvz8rlUaHaXKj7Ej7QUOPrBzd6TydFHOy0AgeIfTZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756934394; c=relaxed/simple;
	bh=aaxIxh1kB2bwXbchtnSDGWhwWkmEDawKEgq6rU0J0P8=;
	h=To:Subject:From:Message-Id:Date; b=YrxS9t749UhqKi9iLfgVfmavXfNf1EboIbkaqeqnyDRd9pOxeOTzLy7aWx1Xl/W9+Fa6OCWxxlHuO8fOkZAXsDp1LK+YMc5P3wX5ulQNrSWYAm5PfqYxRpAufA5+FeVSlQffOE9+OGce7dzj/DWn46mPZJ+Abus0qjqEpSKtahY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6L3FMIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6L3FMIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4692C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756934393;
	bh=aaxIxh1kB2bwXbchtnSDGWhwWkmEDawKEgq6rU0J0P8=;
	h=To:Subject:From:Date:From;
	b=u6L3FMImvaQu7t7QHNqy7wTwGfkNVGKViVTYDE2490CkRwAKk6bJ/F0SP77190bBX
	 4cfgPcwG6p4B45tzzxLOxs4i0+ySX7/cKAQLVwVIltc0HFtmzrxzvRYW1uIpbmVmw+
	 ildNHyt8rIWZ0u0nVgy606EOWvdHIRT4jt7nPFmJX83qY2d0aqqsMINZOAzjHafx/k
	 u5n1v4c1HO9WJ2A3WH5R86523+fUb5OAAJnlwRUCX727do/PeNK5Mg52uNVXovN8wm
	 fZ3+qDDHIOpy6sWGv5C55QE3TGCvGesrqVTB3hNJc0ttOiLFAuVrO5ZDzkMZXgMJFY
	 kyPaJ6W7oWLcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F055CA1012
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693439357.27552.6003951184085164016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2e4035d1a4eea7287ac05f69bf4d458a4b1a37e7c0612375a734a8371ba398
Date: Wed, 03 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756934393
