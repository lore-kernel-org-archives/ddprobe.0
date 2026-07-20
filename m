Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F42623B61B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784514514; cv=none; b=YI6O1OADRmhEtgwzdYXqvzHYOPZbgBXRfvSRnwRVcCslGMxwYSYuRoNHoerlVAORrp6zEq4KUvQ/bMUmA5PkzF/Q5U3ukgIeuhWtMTVEYevH8iaUpv18mc0zEpoZF12BTsAMlCRvUXXBzFGu97GMLjGxJQJl1EAytj46IKjycE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784514514; c=relaxed/simple;
	bh=9XZoqquTIL+byynvE/cIfjuGTouRrU+OUGgdOvrS9eY=;
	h=To:Subject:From:Message-Id:Date; b=CABqR6lAu2m1RxrhfxMhHNhN4dty//rjKtVcDQrDM5wOhv2Xja9dQsum5QNgiy6Fz6lcWVOCC6r7nQ+aukku+O4sR6/dniWuG/DkbxUIDG5t6b1TLA7w5PKNujdiOde2lNKPgrVKa6YxWFVXTAnF5zn4XaaWZ5gTOEJPOFo+sZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRfQqzT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRfQqzT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA537C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784514513;
	bh=9XZoqquTIL+byynvE/cIfjuGTouRrU+OUGgdOvrS9eY=;
	h=To:Subject:From:Date:From;
	b=RRfQqzT5xPZj3ZWcYep5yUGpZWjzbt0CAOJeaxfHOM6LfCjHia+qQGSQI5VAs1aHX
	 mOJm0MDDRd+e3adxESJTRTNwMckisTZtKzSQy83JrMdW2GtsFEHE+XJVeJel+sYg43
	 d5qKiGKKQoEUUohD7csmhUxl/oEdrVZJrajnrUEDWcfXSVnKfXDtCxy3ep8KZs7+u1
	 R7ZgYTrUaOjkKrZiJfmUKYi5cd5Z8Li2v1+nL6Rtphm9tRgBIZIK/bfYdGqYugbtcZ
	 vc4E87Yws0k5rCggHRWh698a+cFV0shMIR3lY3aN3plWYYH5xTS0LpsJwT+HY5x59G
	 /AS4/vIMYz8jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B424BC4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451451372.10783.18248754985915390349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be65592aa58161af496be2b5bb1e985f0e7d6eef815078fcfb3e928d416b38c
Date: Mon, 20 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784514513
