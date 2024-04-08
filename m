Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004294DA12
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712569698; cv=none; b=hM5lgu3qy4B4TGOBIDN4VZyywwGSxKHEDTPqmGvC6oZGbYsaa4BtycjgSL7ae6xje/EGzn1E0z08jyloCPQ9sRl8rTmEI2WPUser6cHHQEMpXx8czfKrdcSHaT6ljQ9nH2jXj3YTGL+1MHAjyY1MKCgf6r7PW8aMGWIVrzSSIC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712569698; c=relaxed/simple;
	bh=p7aytT+ZeCTw9oKEbANu6wZsJjIJePnjCsEl46vbV4Y=;
	h=To:Subject:From:Message-Id:Date; b=PIE6WScXqzqiT+YsZeCFsZsjwFCPNli/T0bK4IG+U4RT94ogvjv4CHCXFkB/efJ5f8T6BVe/g2NAqROspt2m3uzV1IuDbcsmOzqOpJm/yNU8KshNQeuFRktDLKWcYtpm+TmQLVVw5IgCx43tbHhHOeOmLi6XiBmKNGUNr+l5kO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXQlLDl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXQlLDl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81553C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712569696;
	bh=p7aytT+ZeCTw9oKEbANu6wZsJjIJePnjCsEl46vbV4Y=;
	h=To:Subject:From:Date:From;
	b=GXQlLDl/9VxU7i5Y40Dua+RBZiJXPLCtZMhnpNZF6qdb4QPoRKe9TRxXGHUQnLbdQ
	 2UcgPDjI8C2XxVOXk9f2R2q9CPdH0uyuUS5tSXwLNtebz/Hl12Qvew495sS9Z+ZWI6
	 KxDQcEetDz26+ASViqCCIcXyCklz7F5f1e1HFUId9OjCQ0k08YhRi603FWT+5qSJpJ
	 IrZi/cZgETubIyxhH2Eg4psQ8hEqG1hMLqjGu6lMZmcu7M7ZiUl76iAnJK0eLkHomS
	 NnCxmDMi4B+tS+L62cLB83icKebrMf+Xs/vrPNCyGBg3XnEQBJYptsNHyrpEUW+5if
	 KG1r99gxAUgPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F6A7C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171256969644.3188.4271797483118538875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b4f98d54e6f06e1f14f69b355c02deec5d47f3e9d5f492fb54a3c49f0dfd63e
Date: Mon, 08 Apr 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712569696
