Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7771EB5CE
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759467594; cv=none; b=jhbFfaiPWNkfXs9V8Vj2/G7Z1m1Xnp1+xt/hvXx+Hk6bsgBqNd3EeGhzH+WHYLgZW3ZvrfMv1JIznjojx161Mw/dAqZmRCNNUUoLA7TWDFpjE6vK68v+ZhLrqxKlI+KDWzlmzCiSOR1F81mAZnAQVQKMSbQRlCe4Prs7DVHaRhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759467594; c=relaxed/simple;
	bh=ZENKng0UAPCejAgHES9DSVqRjLJ2qulBk35Cx5lSgYw=;
	h=To:Subject:From:Message-Id:Date; b=ZSKU96rFONwFMagvRa+hEhyg2k8NcbQMPTRRN0qc2c7R9Rs7mH7Z5h1pfixas0oEV9pBhzgJtd2p7uV3n/CtzGhEGp5ujjEhNsViANHz05yoRFkw+1Z+/AxwVcOIIqvfuTeLhTFDOmLXTueMntj08OHWXvFN48K1ZE87QL2fOgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FoAxLZb4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FoAxLZb4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B9DC4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759467593;
	bh=ZENKng0UAPCejAgHES9DSVqRjLJ2qulBk35Cx5lSgYw=;
	h=To:Subject:From:Date:From;
	b=FoAxLZb4W9SxfYEbpg5i0SkbpHxEBcRhzkmiVOgKMwjzOQLpCro4104U3v+4zPAPr
	 5Fj1CjwlHJ21kBijWOtiURGtDOrSiGUl1sIPNldLOVeo2S87O1tqvPLydQkEeXigv+
	 +nqlcomyFm9f/iOYfIRYKm9Btj+IWXXEqdw+b2l4kTYCB0SjRBMtdmAYSslzF5qY1w
	 XIZbDDnkJ6D0bpzhhKDzCmtM3fJXIBps4nRZeTtJoNLAGrYL5EjHe5d6fuSOg1ZyJe
	 cbXaE0tpOShCuw9ktlkz/qAbyJuOTTx87v44sdW2dJCUvsq4B8KyPDj4gcXBF6zUKb
	 xpiJ0NrmRj+AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92195CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946759357.32735.16395296698851294901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d422c975b1b4186a2770e712367d580854e3e5dfbe02ae076739666546108e2
Date: Fri, 03 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759467593
