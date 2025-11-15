Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B072302752
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763228454; cv=none; b=RRTVgVaysophf6nMzyDU502nukqmRgovzdiQdoCdh9DpBWjvvPqXCELWD7WWB1ubkOCDPRsGwaXtaDr2RRlDKA1JQJNECO+5CNi0D2TDRFezleAhSo4Cct9eAAg36OZBMOIaY7LacTowhvaLJgS9L/0XRQLaacE77BuYOGyFA3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763228454; c=relaxed/simple;
	bh=qDqFu4eXXM8FrnlAaQ/HaZewlIF9WsQkW7u11USWQrI=;
	h=To:Subject:From:Message-Id:Date; b=hEjQJjVE/ER2hBLOnCPXnn8ULN79UAwnmzBsHXIcDSTYi4mLJzGKAex4ARgyws6G/C2lVUcuFD7p47YDPVe8YdnDn0k9QTtNBBlBvyVfCtStBTjTIWfzU1YflPHcWhfUR/QSxmmH0oQgsx6pe/kwY5jmwE7YiR4dMHz7k98Esbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4Yeni1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4Yeni1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FC5C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763228453;
	bh=qDqFu4eXXM8FrnlAaQ/HaZewlIF9WsQkW7u11USWQrI=;
	h=To:Subject:From:Date:From;
	b=m4Yeni1fi0K1fAz6h3jbJqTtxvXyWBixXYcrWlqdL9ISw+NnCpL8GdxxqeweZwXv0
	 PU/UPd1y4RuVa9PRAQjxzCnqZPkYDQKRJYnY2DbMSqLGxh4uBJ4Adug5s4Du1EHpoo
	 3PRIMzAN+0lyl4uD/7GC7TbWDGT+EzEXJPLo5T/vmKWe1tIQxlPvY2j5YKHmE2CqnA
	 C2n7mKTtP1PWm3+aPwIKTdJanQtem+AOdKbxe69t6040JuJHStAVCAMEmpUP5YL77H
	 1S2dg7+PXoQL/znSDRlZXAIjzSxYJIgPIM+I+QLhMq3hfC1Pls2Yk1GeD168/AqdlK
	 xA8y/Ias+yckQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978D1CEB2EE
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176322845358.8904.11563287845290570329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42368ad6721691a007cb5429f344e15408dbe2280fc0612ebf17fea9054f81c
Date: Sat, 15 Nov 2025 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763228453
