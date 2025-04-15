Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45289194C86
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744703394; cv=none; b=e2/SMTIJppGa0jQlDCjBc99H2IIa5HFv2puaN4FF7dyfZDhnw75yDpdy6hQuKaFFRjy/xaNl7O5DIyueWlYUSZZ5G9REi51sD1wyqcoBhr+t5jbFDTsCha6UcoBD06UWAXXsY8wR63xsxc3jlu8nMwYo0q3m90G+FcmMCmN7s9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744703394; c=relaxed/simple;
	bh=xmAIBfHV96uB3NofCmET5ql98+DIkLera2KQsWhWX1U=;
	h=To:Subject:From:Message-Id:Date; b=iJ00n9QnLp8gEMVOoHME8K5Sj/CBqUfsbp3/ZLqwGi4JxtLCjaqOIwKF2Plqp1naLhMv7Zfouc74yMKQmVZXgahBLbv6SogMnoPqgnXNIFAdUsfWg1TIq1KHxNtn6e4DIvB+fr9nxbOtDxLkQBmD9HSVXJtYJ+GUKWfmoffo0ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqBbe0iB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqBbe0iB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A832AC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744703393;
	bh=xmAIBfHV96uB3NofCmET5ql98+DIkLera2KQsWhWX1U=;
	h=To:Subject:From:Date:From;
	b=oqBbe0iBl53RUsfB1gP+6kEIpHEXlyGGm/3KioHgwwbnFhH6Rj0mmi0qytuGZetZk
	 VIeiFuLGkWG0T3vb+IMx8VCpg64lqJhk0VV4lFDYQr2w6BtmQYhEZOHIW0XQ+7BO9T
	 1x1Ei2VSUo+ZHTvDpl4Hpxta69s0X9NPDCjOQwqciddMJe+b7ipfShGPj2wxxiKiiD
	 AueJ6kL4F47GaQCiecx4JQHW8aCKEGyJjdw0FGsTKIM0BMPJkQYSG5RrQN0Q3r3WUD
	 pTGSlit8ggvu4rSDrhb+JRLJuQ8SjmqyiqgwtfiVxzBvt/PWRb1ThBvWYaIRKniZJF
	 9BE9o8CdQJg2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933DEC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470339359.8914.5772098774039850296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24108640e8e38fa259a860b2590e20d143e509fc8635b8da6a4167374b7dbc85
Date: Tue, 15 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744703393
