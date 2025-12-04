Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD8135898
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764851574; cv=none; b=hLd8LuMVFTZcn7Py0fTfjJUFs8zSfUBZJiigMYKIHyqWpRWnQvaeBjV43eXA12swteL6S4MwZvf+qddfQvwfE/rl4cY+VeESo2SpWKHzehdR4FskwKipmPFhHi+3jheQmyy+zUQAysOgGwsT1zQJ5+CQGm7iYZfiVKBCeABfTCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764851574; c=relaxed/simple;
	bh=hND4mF4mewLSTsWbNOToF+JLDBRTXF8J/jetdKjRG6I=;
	h=To:Subject:From:Message-Id:Date; b=tb8hkztiGeOTaXwwctgsqWyDMuwQApuKazJ5xgrfRpoFkuSxp3+jB1BND9YwyB1I1mOMvQK8QxiWaBuZHL0fFVYQ8r6CglqX71c54CLT8tMyjuJVfRbHoyMyRJCZmMfgVwRK2dzjZNSjGkpl77R1hjaGWhbPGC6A7RFNcNOWlhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhUiDdxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhUiDdxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4869C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764851573;
	bh=hND4mF4mewLSTsWbNOToF+JLDBRTXF8J/jetdKjRG6I=;
	h=To:Subject:From:Date:From;
	b=FhUiDdxXf31AjinAm6OtyrXh7vTDrQNybJeqtBJuqteoi13M+zm4e88zuyFGdrpXT
	 2DV6ZqcQ3KdtLKKCS9GPdy8FAAIWrr+KwUyC6DxK4bMTOKViL0UzXrdnqyhEzbukNh
	 8E1q2Y3fgmwARUySp0u4VCAUP0EugkK+/Ec5g546A/WzpaUfHTSTtCHDEE6Ypnob3p
	 /Klm//ymBtkSE5HLPYj6OTVfX+5xudWPEPEOu1hMfp7GgWQ4jcLBQIMJyRP9cETINL
	 0gnT2Zpb4+cBmOETKRuDL0IT871ool3IRlB87DDI9cYBZOFikfUz46fFBuMuOLwVsb
	 LSysNjjY3iaPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91403D1F9CB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485157358.19194.3579486195342513977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d91ac7a8628bd89810da4b83b41ed604081c73c45ae6f24c3d1b8b33df9d65
Date: Thu, 04 Dec 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764851573
