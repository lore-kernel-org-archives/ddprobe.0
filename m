Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239384C92
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767233634; cv=none; b=dXqhzcQUNsOR7q0MF9eMpCVbtHX4VPeT8A55kGs8WzsLkJj372/nm086F8YiUx2j7ybHy/aVdVPfQDuEu/as42Qc213MEaeGT8ihzKZGEOi0n3+SB8m79kWG5eFhPLVIyn+N4EA0xR1u+bR9F72NJMsdyxjcG1We9rfmlvtb+wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767233634; c=relaxed/simple;
	bh=zAkiKyQJL8Lfj1pPkRkEkK4rxRX/GOmYVgprwnzVzE4=;
	h=To:Subject:From:Message-Id:Date; b=hBx5cjxr8JLQqfHM2XFMUcmLs9Zd789BQmTNWPoE1VrIgc/JZ9rTy2GPxpJJrKkkmAmz/nz0TsaRo8PLY3mff30OglkT0DURgklILPKEmYMjYis//Ml92i+6Q3h0Y0AIJCsWiAb8XqIS0I+VyO1EEhu0hNI8Y8aA/8I/aaAge2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/F6sMkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/F6sMkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6359C113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767233633;
	bh=zAkiKyQJL8Lfj1pPkRkEkK4rxRX/GOmYVgprwnzVzE4=;
	h=To:Subject:From:Date:From;
	b=E/F6sMkPxwKC4lXG6rkEGmsiHPaH9anu5QtkThU+ZrlQOSgBQec2x8Rg51zdjnLch
	 UiS1Gxan385wTzymhNQUtmV+OnQQtf2DOpmQoyUNOGBkfkkH9oOyYhtdEXojaMLbKE
	 AV3p296oRAmX5xItJj97/q31AnVdTAZqAx//g+amR78ODzn+XyrZix0TlvWc+fMG1C
	 MEz1T41BNycvBlhdEmT9d/s4mKxMQK6G0essdciFQIaCEACGeCtVLOyP7FNsnFjf4U
	 DlhmzKKIVe4JObtK84p4rTjCVuQsZ4QzWHO/BdhnZ+oRIH9buPhhw/uNMa6ptN3xJk
	 7xt89glvxYQ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D2DEEB578
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723363358.17812.6379745647275694634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46cc09c1de7b59ea07345744622e9c58b98f64001c84ba27124d87cba7fbef91
Date: Thu, 01 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767233633
