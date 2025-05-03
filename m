Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288A084FAD
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746303594; cv=none; b=fOs6QjwTiNOXORLD3vrfPkhWLzstOth06LjXpqyIV+c25oKHgnSgQcL5tseEH5bzEuIAKPTacH/54u8kDdSKSqhC5aR4MX6F7JEmKmeWxE8VP2kJArxMwxWdYP3pGHyJ2xHr+KTireOsmBExUnJDOegPLcPzeRxG408WLuhjmS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746303594; c=relaxed/simple;
	bh=RdQVl+zphZLkTKVyGGYR11BcWs+yrJHQ7l5fVUzH2WY=;
	h=To:Subject:From:Message-Id:Date; b=hWPO3EhYzYow15c0Of/cnGiPvXgXo8ocSP9gHPwJ3+tqx9SqfzA49PYW3h4hbEYE4vsPeg+gWz35EnajDBA7pqYPkydfkKCiNZHaNOaHAs7aKhCLghl6gagrbno43lTuybM7MEcfQ1dIlMAFtbNMznKzZzK5Fw/Qe/ddcM6TDpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8r7CTYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8r7CTYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A61C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746303593;
	bh=RdQVl+zphZLkTKVyGGYR11BcWs+yrJHQ7l5fVUzH2WY=;
	h=To:Subject:From:Date:From;
	b=K8r7CTYp4La16tel3I0Y2dtqmbBToZRuBKaj2nC7yAFhxQ7N1GypOOFjEORoPJ4b8
	 fWinHt6Qz0dTILpKyMcui12gXspybXwODyDxmgvxl791AmvQAG5qc7GSPSALpZBQVq
	 4Kh6g53z0AbxWYV46UI3b+f3YUjEe7vQg21RYTxMP8Y7/0dmI0B9vmTZ1qAdfNMRhi
	 tdiofesMdhWDiEdUuULZv4rf/uzX516V3A/FwSV9YnkLWQl8jQLVGQW3On0O/yhoNg
	 kEMxvUw4vSbVpPKdpKGCoBjUFQDbPFMUOvoGJnobqr0IHYxfE7yhE+udIcemthFqaU
	 bGLhyF6o9jaTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91966C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174630359358.5946.16013606691144548622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16165efcb7b4addfbafd96ce19f46c0b12d36f1763b85e6c09cf8b24b71bd88a
Date: Sat, 03 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746303593
