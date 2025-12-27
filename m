Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F53A33993
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766796234; cv=none; b=m++OvVXXKpIXv2JpRJHiT5CO83NTsa2COo6JQcDFZw80okWPWReaHmq1eqAA09DywJ41Ow/zMjDk/8Z0ejetPzbLrlogANBzoo5ZiNPfgx20PLYdS4o3WbVti2dBDcEDl5k8icOmLzuusg7e/jHkqInwMAmdfEjXAcwnLk4un84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766796234; c=relaxed/simple;
	bh=W3yy7BhXOaW3HM1sp2I9TBokPGFPlKb5Q2SxjQOPVLI=;
	h=To:Subject:From:Message-Id:Date; b=ldo7FGZtlmY/O/2KoQm8gAH9CyxxynGZr22W7zTtEQYmVAtGd0LF2QxuoEm7gZD9xI08Szg6jQo86jK7dcmPOouhZF0pOWhlsVwl605HCade1tT/suJjjQSydxww0HoVri/WhRJd6xkpLy7cxILLsu7+U0Xeo5b3YVGeRR4mTj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyzaTvkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyzaTvkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99B5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766796233;
	bh=W3yy7BhXOaW3HM1sp2I9TBokPGFPlKb5Q2SxjQOPVLI=;
	h=To:Subject:From:Date:From;
	b=cyzaTvklgvXypHyceqow39bxFVbzfiH0A+6bWTIgHHvZ0kuOqRpCmAv20JQzgzkIL
	 2qfQSS5qth12vOeIbuiyvo+MKQfSgsnGr2dhw/AquI8qARgqHvJ0Mx4rc02IUE9lso
	 sWATiIX6B5OVE6ekOYbCZaE0nN0shu1LWkpUzSqAZUBD13gzw9tY9lNCi9sT7KiSFZ
	 LDYDltMrkCQ7Iit5LcA5KvGV27Q+qa4vJ7sAxabFBKrPZVVDcRoO8BA/kOqR1kYxjA
	 3h5kuN7UURHHk0yU568/bFSZUXWAk+uv/uNIC6NswppKBthz0yiLVbziB2Fo/745em
	 6gj3Z/73pk6ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ECAE8FDB1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679623358.21670.9847889968669234635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b7b3aa45c4ae6e7bda0f65280c568e834e4869c78eb7801c3b261dfe4383aa
Date: Sat, 27 Dec 2025 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766796233
