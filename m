Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402C8340A7D
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784844035; cv=none; b=LqClUMk7FCmLFqiI4CDhnGURC7XdQZXP8c54sX9ybDBCS5tPm+fiI0f7lxQqkGjvE12WbRWO9Ug+AgMKQK45oyOX2NQXKYVQpqea9/ybDjxmf00STznq10ZCL5X4NXmkzMZxenZTOCZexjXJ3Vq9RMzEtVx0o4GKiHu+GGDPy0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784844035; c=relaxed/simple;
	bh=c9gr/mUH3FrT+zT1MFkc/eqR22jDrrtUHKtwsaJ5pGI=;
	h=To:Subject:From:Message-Id:Date; b=RGo+LVUT4U35aKoRoPBPbwyQJdcW4yaEvUvX7ZIbwK/ChpTwGqjuC1o5s3ePGt7NfyzcmXNBmUsMX5k7Nejnzg9+Y0j7cqoorNOHASk7hZYQB/snrMhYxU8Xw/vY0T3SsJE1tuISWvIQUoUpOYVqv2zfKF7HKBOplwofGhntGT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZC6JHOFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZC6JHOFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEE3C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784844033;
	bh=c9gr/mUH3FrT+zT1MFkc/eqR22jDrrtUHKtwsaJ5pGI=;
	h=To:Subject:From:Date:From;
	b=ZC6JHOFnKgeAuyD/TJM8DdzhSyFD7+CF3SzUob37Dz4eu3gFBybuOEGTuYcIb1p3s
	 +KQPwWPPZ/gNjZ40H1etDaPCoVnW27r6CUkq/0lrGr5lVsPpw3/VTfzKp1z6pYgdzv
	 edO6iaz20b9DWzUjoeSP/GVDLzlK7zQREoAZ5DMJdSuD4SyQfrqoQ/5SUXabOD6ntD
	 G2aJU5V6S+yXSy9XDx/2Oh1D6kCNQEZIbLgWUA7IRGZIjnBoVF+oiCaIp/HbU1BRiZ
	 Qc9lyvqZkvdPPx+il+KCXsQpp7i4pYGc7jEqO6TQbXjZ8v7B5RarnA1CD5pNlPK/Iq
	 eGdE3AE3iM5tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE8DC531D1
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178484403369.21383.10286758555983621423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ab4d89790ba78c4b4e8396c2397ffb27cab1165afb58bc84e1305a434507bf7
Date: Thu, 23 Jul 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784844033
