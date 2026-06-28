Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DA93B7B8C
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782683914; cv=none; b=BfrQ9qAuPld3eePlVxCKqpolqeBqFSE7ihh5vdBiVDbp/oacH6e4f3lg3bBvkow4kEQka4SS2XOhSMJdpM5H8ftnzj4ZLPDlk5rYIB9wTY7dcm7aB1KKJLo7KCMLNkDr4KTQfaajuVfaaaSDCwlpeDLWuVS3azvwngu39CJt1K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782683914; c=relaxed/simple;
	bh=tPfLck5Q5D//Uz8em55TeWjydQcAbt9n0DlA9ZJZ3pQ=;
	h=To:Subject:From:Message-Id:Date; b=OvyVcNPNj1in7v8pYdJkpL3fiL+cheuQmFQRpwvdtLRkjLd5SV1o9egXzhs0n23op5speOqpMMZhJot8j7GQkUk+xOIKx1BsOov/VjduCcf9GpZjkExGe1VUmeip2OLIEQGup4KN9TfFgSteonmN/azPM/VAgLYIamlqlVdMX9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPfnVF+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPfnVF+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1A2C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782683913;
	bh=tPfLck5Q5D//Uz8em55TeWjydQcAbt9n0DlA9ZJZ3pQ=;
	h=To:Subject:From:Date:From;
	b=KPfnVF+tiYY6EgcpWoEHBy0BX6eUZVLg422JrN6Pvn54wb3msi2URAd+ZEG3sGHix
	 vc3BWCfWQ5Zr7gDFGu70kwRpbxQpAIA0lYXVlpm1tjtN+2HIKygbfL3oAcbMB0e8vO
	 1D+2IW+yKxVCOofPlb7o3VcE7ZQoE7W8+MQ+ZJwzoi/dg7cf3e6CWoLqHlY2OOHoOm
	 vDZhjQnH9oIuvKxVGiRBD56Xsibh13COAMt917rw38pK4cf5kTNa3poErMfFBQO4nI
	 lc9UNeC14n8eF7fz/8oR8Bt7efq2ExknO6GHDaCydNvAz9xdKrXq2zCznWnz8WWaG+
	 iY4pWjYNvEj3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B452FC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268391372.6284.10655700059468199653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d090b40601f73557d100aa8260d198a6d47baa78516e138e079235dabbbe6d8
Date: Sun, 28 Jun 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782683913
