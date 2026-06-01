Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594303845CB
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780296874; cv=none; b=X+HV9CBBns0tF5zf3RFb8n0HcO4eLEI93/7WtBtGBl1ZJfFVJrYeD/EJFEBiyltQj+F6EtF9PxDQFtTQXmkG140RqFBHGcoEb6u9wcUyqMX8zen7ph8JjfAir994G1b8XiVeUNj1xPtbW6/5ECGWrO1tnwuctuU20rC+gLtpS58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780296874; c=relaxed/simple;
	bh=ez8cBnqRBVmwKOvxt9aJ6F3pqY+i5yDVm4eiDTCCpnQ=;
	h=To:Subject:From:Message-Id:Date; b=A3TsS2hUT1zJnFNeBAYin3vy5GKyFexaVTF7WgW2MU8+vEALSSR9LPmx+aI9mYGCPbqZV0+jj0vd/R1BADZkXTBotwV9D1luLGJJxFXgSMhZ6eG2iVG5GIqsXAyYbrTOgErw8wWwAGXqjUvB8ym02y8q7Fi6NiRv9vQKu0KDNK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2Hi2cRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2Hi2cRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51E4C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780296873;
	bh=ez8cBnqRBVmwKOvxt9aJ6F3pqY+i5yDVm4eiDTCCpnQ=;
	h=To:Subject:From:Date:From;
	b=s2Hi2cRQVz/UfFvYHK+nkN3WJKSZO2MO1vNipKB9o7nxwyrxVA0stHxeD4JC32Psx
	 2NThPKztws2Ubu3Uvb+kUSd6Oyi6iHNBY1JhOqw9T07IgIjbjhsnrDBTTpCmhujVXv
	 cxB3gZAAFlQLKh4XqkSTRF7xZFyh56HLlgAnZS4TnIIJyGiKHYGZsxOlPZNr+Fgdr8
	 w1RbWpt3PplkdUV3zvP0ptt/xzkRDZI3WcMdpm9GCks2u483YORHBhR1qrAky3kcxE
	 VHUS8xzl0/tSf1r0QW+RwhRSsrX5sF4S3C9i87eVC6UDpX5OYBIuIEBXXDSAYg8Hb2
	 1IXE/ZtzP7Jew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FB0CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029687371.30689.6305727399712217880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd9990207993ffbc305e13b9fcd721877277e3e5267bdf08973c986ccc4fe16
Date: Mon, 01 Jun 2026 06:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780296873
