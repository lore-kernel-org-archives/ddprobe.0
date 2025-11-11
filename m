Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2E92882B2
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762868994; cv=none; b=pAgjSCMY4IPc7MbWUKm63t3vhYKH6LppKap/Vfp1WEMAfMdprBEb0nGSv8xAy4FDwzl6lsx+9ljgXhEeTnwmmY2XLTl0W3fWgIA3gLFju7p1oJ2ThBh7TRltfj9i2PC+VJl7Vo5NcFW3tLZBlxoQO31LdsnsEWoiMMliSA7advM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762868994; c=relaxed/simple;
	bh=OzriHzV0vllRsbm41MYzt5zSTrSQgvwB0PXW0+7b+m4=;
	h=To:Subject:From:Message-Id:Date; b=sX6TIBu1eB+Ng4ywgpXCR+eYzAn8rNr6XdUTpx79uLJJor1m4j/S2jxn9sftfp9hWOd9qvNBuX/12OoOaVTyE8xWI5kZhv7LvDpinZ80c8Dd3ayWXcowgbWAyOBswDal4cgD2ViaBP/1g7DV151j6r/+KApyDGCyYWJZ0UyjCUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWFVICeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWFVICeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD76FC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762868993;
	bh=OzriHzV0vllRsbm41MYzt5zSTrSQgvwB0PXW0+7b+m4=;
	h=To:Subject:From:Date:From;
	b=RWFVICeY6kjPuxNE/HtQKLfkASPVxLT6aC/jir/s2C8vk9fH+UL2tjahodnyrmHmn
	 4UZC8EgXiF1OBdWVTiaJd1or3sKAZlz+224cH8hxPrbsEwPbo/PlVgrD4A7nhYX+F4
	 1dss89MoPEvWTtWbbdFrGkGFf8myS71uFQN7v5w42Gl3T36CDZIumQEkppcLxPv+A1
	 pu5z3VSpCmmW1MhPptZwVdH1GeybsgYZY8tAQwToxHiZ025gIjnThVGjn+hZOtOYrP
	 hhZF4u7gJyGhjloLgfAzmFiCTVM2hoqMujYZmv3tifDH61NUnv8P4axGET3EIzMkAq
	 oWAvU66O0g2Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECCCCCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176286899357.5188.7397510963669664346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d85f9905f441683e250e98bd37504ef6d01a2f442e4c7400994d48c70d5d2b9
Date: Tue, 11 Nov 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762868993
