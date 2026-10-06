Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5483836AB57
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791284434; cv=none; b=t4EelUi9T524TJW89Xbxka9/KZmG/cgefWFYBtzw+5ZQ6pIH0iDh98UvYBwAAb2FvpY7dMwU3djbqNYaRU/iv8+9B1I6cHb7rjm34Q/Wy5UTsr/Yzl1IWACRD/hagdBIPA3/U1K5QfKCv2ANezj4Mmh/RxPpGFLs5i8cPv6iDfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791284434; c=relaxed/simple;
	bh=ohaH1stQqqIp/fDhJ2oSNxskHhNL1fvXL5cPRVQhf7Q=;
	h=To:Subject:From:Message-Id:Date; b=i2s5frh6UDBmyJxOo/tJXmp6IPoshPXmprr+VlLsIVgq900YSWM9zp3wnGzooljvHA/0+bCm5EOVaSBpjJKHWSwsaJcQEqP2w/FmK3pCcxxnqvlauh+6a0srpWyI5HUCwTizrLcXDP0CTdWRrMfc4zKoBJ1becqU5u8HxMgDm5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqPKlBoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqPKlBoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06E6C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791284433;
	bh=ohaH1stQqqIp/fDhJ2oSNxskHhNL1fvXL5cPRVQhf7Q=;
	h=To:Subject:From:Date:From;
	b=SqPKlBoQNibjcpPIxzpLsRn8bMn6es6hW7K8Y0e+3+gGZ+2ZlESYf4bHm22jUaA17
	 RwsO/4AU+c/780PM/A4EJxHokDl2+Fkq/th7I1FethjI9k3wQumVUbOUYFYXfkClFk
	 Aa6wwU6BsqgjFOHzS8o7mSJ/z7WHz1g1y4xunGJ/mZVY2i39pF+BTqXtxcDSlHQARV
	 61Cv07PTV9dlmBWjLjpJ2nrqRkeNo2zWpZJq0zL4zuBxogmx+Ptyp4b7m7yQOVhfSg
	 agFAjt7VtUZdN8FXNIfeCD+7BB9hW3XBYVPdKZbD4dnrALDlGJBWQ6qeQ/qyxkabNj
	 XjJQz2ybvkWAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC67BCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128443369.23794.8564262048288407715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8b4a1cd88d87605399e38cfe241fe07c6edfb97d31faa4de9946479a3793a2
Date: Tue, 06 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791284433
