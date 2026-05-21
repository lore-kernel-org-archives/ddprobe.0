Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D151C862D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779402754; cv=none; b=tZn0qh2k5fG9MxmN5WXenQl7Ns3k36ZSZhR4oNIgEl/XM4/Vzml1/zeq/+8nwYLO8UX/H3+q+1PRBX/N+9pBhEDS1xydTv0fczc1sUI2kikXuiNFsxjD/eUypjuaQq6I1GzqOMP14uNDAYIa9QRelDDdn0jzK2gG5vS/QLN0qwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779402754; c=relaxed/simple;
	bh=ZVgjG/yP0gef8v362NqLF6KUz2ssSkz2XBT/sJ3IF/k=;
	h=To:Subject:From:Message-Id:Date; b=Iux6zGYiWElC493FAJO/NTLQUSjOGY9WL9vDNR9HSgJt3pWY7BCVufmGR7OithtYm+He1t5WHlmDh2u5eM97eZXfdNYgbtM49Opfr3R5I21vl7AX7StNYnBWb7XD9cVKZ1EFUCYQ1WdI0w2l4GuIzsqPTnneTb3iYjQMtWGjzwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTjf8/aG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTjf8/aG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1EDC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779402753;
	bh=ZVgjG/yP0gef8v362NqLF6KUz2ssSkz2XBT/sJ3IF/k=;
	h=To:Subject:From:Date:From;
	b=QTjf8/aGkPC6jOcZCgXN8NsaUC+bBfugbkbqqpFzqdA1l2/z+WssnhcasbLmmiWmW
	 dTv0IPzdbkgzyV4NynR6cCy4M9Go2FsoGxG6KYyqgb6AtN0GdINIJ4A4HrVqFOqDHV
	 T0DLi9vQ3RO8a0RWZAkXHGJAqkP4W+MScUerVHMVzYSVLjYZVNqEz9gjlFPxFiVXFz
	 rrAbOd/5h2vWx25nprflTn3vY+r7BNoDxRfrqKuqJ+bfVxNC5ts3uEAIoupl5t9kcv
	 XWwRe6dAfSLtfa5rdeA6dxemApE89Ya3AwzszOMhiSdctTo1hYbVoCTIicp7V3e/uZ
	 9j2cBBlOyot8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87F3CD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940275368.25896.10510989274024360834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2b5fcf4208578b546190db992528c951ba0fdcaa0e7a02068c405d0dfd254e
Date: Thu, 21 May 2026 22:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779402753
