Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6A53FC3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 04:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742271594; cv=none; b=raqDE0+oy2TcSbvqC/xsMBx8f6lvPwfkl3+lBNHUTOtaSIayXjx62g2CFCkIQDXhJXt4/2LCmQkFt6B7g0QEqtOnzONRPLUo5pZma470hgdrbM/SQK+Ur0FLm8ldRrxpFxZurLfz9jxF6HjL+I0AoGGEPxeARk6LmXRjRGw4PQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742271594; c=relaxed/simple;
	bh=3zmJqThwO4W6eoTe+csGf6sDGewf17RUfrrLttAPOxI=;
	h=To:Subject:From:Message-Id:Date; b=s/Z98x7jA7bdgQ58pSRDOPnKnkT4ycc8rTOjNqs6ywJlLK1rNtZoMTsGBohp9XbeIZttKQ+iV7fPEIYy838kPBxT8jaTZ7CyTE4GrlQTnfgzQXBRXPCK0vLgZUb+QGD4zmY429igXqPZ4Kwf92yqFW+Sj685mlS55+Rfz0bPS2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdzQ7nPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdzQ7nPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E9BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742271593;
	bh=3zmJqThwO4W6eoTe+csGf6sDGewf17RUfrrLttAPOxI=;
	h=To:Subject:From:Date:From;
	b=tdzQ7nPtxQTMuOrgCuUO8JFlCgPTOYaBjZUpx0uvENH+LeDwUTLQkfIIsRZyJku1R
	 mb/KLcMADR50EoiQrr3n6jaPCAYu0moB+N9AD44vZxkNyPHGewWszrAWaim4BawPVU
	 p0pDbk5HOJIOR0zVbFq8ZELXFLofnRDiod9m36mFjOzGJbo1Rjyi5C9f35LQVFE6mr
	 t2beCBo78/KK6yHosvT16f/EXcO3X+Zz7odEGLvf3hreuFBQvaeAw7HZrhb020nVKn
	 uzyiyJuDmGu8iIERhy2vxeThjhvNb23sdw5OZ6lRsnTdoGreCbwV+kECzyvLRREm3r
	 ID6ONwQ8Q1KOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB1BC28B2F
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174227159370.7813.9960254308681666172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e926cdffbcbf6cf54a0f2b35cf041991697b3bca9c619a76035d7cec4d16bb20
Date: Tue, 18 Mar 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742271593
