Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C8A18BBA8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736232354; cv=none; b=gWyBhjxr1oJRsstQQ8cSdpO7Yub47nxXsHDsBrQ2gDNlJf50x99yPh5sYjsnFrv5Movwvo15EwPh5K1M9xZNO61PGQ17boXEcjoVrawpkXUe+bhOrViXMi73CS2j/2ulcT02+Vow2iqTpJEw4LLWtVYWZxY0kb1jY9SM6Ggx6DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736232354; c=relaxed/simple;
	bh=q4ZD0qrBR4dK7e6ed73SqG+SH/69b9PyzOaki/qZgH0=;
	h=To:Subject:From:Message-Id:Date; b=j2t5Kn7nm6NRwHgUvg1KckedpIbmxFqHC7AEAKBWNutZrPxxrqiSKIv9UIqhasK5Ju47c1dGb/4oe4SPDeWKbzBEEVBpxNjYBtc+tig8sVvquPlbY5yWjcjhniyhUqylvFKxtn+63yQIrvZLY5KhrxTAUJe8swksd3+NikxM9us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWXW6h6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWXW6h6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4FFC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736232353;
	bh=q4ZD0qrBR4dK7e6ed73SqG+SH/69b9PyzOaki/qZgH0=;
	h=To:Subject:From:Date:From;
	b=TWXW6h6We2OrWewlq0Fmd+Wk3yzdIkBAuRSfn0M6VZJuJ/ZYYu0aAWsuOKHy0Zaly
	 DnJhANNBwumE0UcrWE8mbOIG+tNJPr8kdDfeTodGSdZifjKZMWvJB21+UMPQ8IO7vm
	 8p1gGb3bS4tvPptVJ4q8T1WkzW8XZvsDNUaBgcrMh8f7EWlBwyadHHuARarNd+mj8H
	 FWWVfqfJvXo5zpUvHPHqyTOFr2L1Gbszg7xLwHsP4MDXV1uivLdl76fXimyc6Y2FoS
	 bwUb6CzmAL2483PMgx0MwKn12pVkuEcd1FshIDFYdvRPm8MZbzDWL0XAMSbPr9G9NA
	 pLxDHCsacxwmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DBBE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173623235367.19344.12476147580210803453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 989b591ca2b98f6c53219dc74b9c59e2f792e03e7232a08fa1842f0391166dc8
Date: Tue, 07 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736232353
