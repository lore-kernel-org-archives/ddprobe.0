Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394C82F290E
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777925254; cv=none; b=UuYmXQywumKz/WJc+FuzoTFZpXnfnq/gnEW9hqay4LP5q+rsaGc01/j1WM6M5kzP57iBevsw3yVT5Gp2tcP9ILFB2OChVUQUQBYCgEjsJyrkI1e++jvvi2C/5EEH5PZCb9sP/Di6cQ4RDqY/tqzPXltal2SZ+9BbhY5wjLtTm34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777925254; c=relaxed/simple;
	bh=dwc3zBUFA6iM12SItk9RbD7hFT5ksfrEIMIQyFWk/sw=;
	h=To:Subject:From:Message-Id:Date; b=alpf6MAhyk5HQ1qKjKk1Aql37Qx10VcKMxH+rHpdZRywr//OGLXZmzOpKau257IfGvr9V8fhNIfvFVnVD0XU6A9iTzGVmb5qQ44z04r1E2RbPZd5RYxEqjw7mmExPndesZtdyWBZishdCgvh0MJpxs0mvBju9Nispnrqkinyr3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KP2BqVlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KP2BqVlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EDFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777925253;
	bh=dwc3zBUFA6iM12SItk9RbD7hFT5ksfrEIMIQyFWk/sw=;
	h=To:Subject:From:Date:From;
	b=KP2BqVlDbXBneE4Aj6c6pIYdPyW3P1YFtMHFL/sIKbYurWS/+/gnuGJpPa2Otk5e4
	 UjeQXHJHAy0EnorUcRPY614uJe6wnqBTGVe/V7SRJHNuB2+OHox2EEs5M+22etweqX
	 submkATTxQsfl6M1JAfySgMCPwBZTdekCxXIYyPf5nv6qKot2jvFzfmn8IlslvDNqS
	 Kui+nL87BnYcWpHsxwLr4mDXMeT8VMf3/vyA40C8uRdNll+mmYvOVJXU98e0x7lDAw
	 i/JtmOFRi85e6P75C9pCGIMRf0oAwbm8/M6vOtdpy0THS49a07QzIpm+YVgWgsPWSk
	 nPBMNE3J26EqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFABECD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177792525368.2383.18352594329614166168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee789fa15d6aa5f45147876a3291e92561d0b413670e479d648b4e4862f82c0b
Date: Mon, 04 May 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777925253
