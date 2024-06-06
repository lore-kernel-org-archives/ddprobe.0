Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6867B13E048
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 13:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717681643; cv=none; b=fU82+Bj2Zt7cVD6FvpfawbEYfgrGyy+9kELI8v6ZZ8oGJio4QGXdY+OlsqCx8RK03hUznvVrcEQtgAYF7vXC19l5h/8PTg3EnkeDO9WOX1FRgW8kOxZCw5bmdOBcpd4uEB++ZakX35xxBbDXeuwAcNf/lqMqCHnRMqDDCX/uqWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717681643; c=relaxed/simple;
	bh=3dIBJT1juitCqggmTG/xLsDMVDwxS8niNOhbF/WkYEo=;
	h=To:Subject:From:Message-Id:Date; b=TynTxdrCoWCeulfw3qMUAyXk6Uatze0gKK3huwMFTEkIDVcc25ZxPI1SfCj9JCQgnzXw5/wOnKvHZyM0wYvtAOsQe3BDZ8Omju7KdfgJMthXnrA9DOkhYMAK5fSBaU/DtzYnXBRyQOv2InxSm/FHb1QIYsl2AxLzPJ8MbqY3LMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0JoANrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0JoANrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B7EC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 13:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717681642;
	bh=3dIBJT1juitCqggmTG/xLsDMVDwxS8niNOhbF/WkYEo=;
	h=To:Subject:From:Date:From;
	b=N0JoANrc6xazDJIRNU24Dn7l4ReyqKIui6N83nWRZNgobEbWCXSDiugwY1XKVgrWu
	 XYFVnBlTalgnADhK4J962cM67RQ1dSEJ92wxaCWUVnH4Hn+vkVT//FR7OwFg6tVw39
	 xuWt6qjQ0nWGIx6isY3c1Y9AaPa+HInbNXowrp1xMv7MgtQaXQ8pRy2xHQgXFhnH1C
	 xuYZDu64P2y2ZaypaBdss8AYnPC6CtcWgRR9nnynF/ToSUxQkJ2IhdRWU5CwOoYQ8k
	 MjfODLaKRJLQVUZNsc3tlVx20njNmbwnYS08CT8SCXKVNz7zMm3qIWeKrPVz7HA9bl
	 Az4yGZlLnEFCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F37C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 13:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171768164277.28396.16665576036520279466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0eb80f7fd60acb56247f60d0ad2bfecca2626a35715bfe78f8396c7a7d3c1fe
Date: Thu, 06 Jun 2024 13:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717681642
