Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E701DFD8B
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744484394; cv=none; b=s20mZ3BvDrrw1/zKoWT6P6SXJHFcfck4m2U9VEiE3NxK+/r9MQcWh/PpLw44MN2A0DImIS1RAfxND1snyatzQbhz3kdFG71ivhIwqhbhWu1LRL3aXH2U74M8fBQcJsPK+gnQOjSfNGr0ewNzL1Ywrarz9m/k45kd79xuiD04BQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744484394; c=relaxed/simple;
	bh=TlY7IfYWuBqlejl9W4N7sRfvAbnHZED5Y1BL9/UU29s=;
	h=To:Subject:From:Message-Id:Date; b=hhBnc/ibq9b4qs8zAAr54S+cF+uB5HP0opwfXbucVW9oWl61+Xu3wfXV6KIj5EVn4RgdiGHZLuulSj5xMT0vojyWeLHMzYbMtKl3gKNnX6hp4IyyVNyfu4c7ybPxr7J7QZmZWydQuiYaRoyMyvkdhMRjoJF+oh5miYqtzqDOx1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6fkr1UJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6fkr1UJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6CCC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744484393;
	bh=TlY7IfYWuBqlejl9W4N7sRfvAbnHZED5Y1BL9/UU29s=;
	h=To:Subject:From:Date:From;
	b=D6fkr1UJRgzY8BQI2cAInN7NJwibrr2gLy3b2MU8GeXMOsLvW5peCDI70FL/EJldx
	 Q7NZSSw4tXXHh5uzznxdT/CGEq6QT1iLzjNQro/UP3K4vBfVVzabWVmjnlzmwNVGkg
	 oSQHICdhNzYEU0PXMG4bVZPw8isOfGiC8yG84zV6g2qF/TIJ6yvzNi7iBHUMSKUL0J
	 9hhbo1hF8WszOSfyFF0xKATMi0WXCI9EvAOhrkYQ+6tSy8c3gq2oRu1n3Fek9x8gdP
	 1PiQ5ktDEWHTSRqbggd9s3g9BTlhOhEZcsCQRyNppcdgrnz81DBynz3HsmGu5IUmNn
	 I4Q1PidEEMKrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C86C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174448439358.19967.8240652194464024165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b231226de03b3cf3d78573365a50ee6a86d9912b4711bfca54ad42ace79041f
Date: Sat, 12 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744484393
