Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4965B1388
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748080194; cv=none; b=Zbf4XfO/X078L3UrW2hhbW4MavffAiNzZvM+76pGUsVJVsFaxay0fDAawjQhPd/5A57pwbkVd+E+hJVpPd8L/2E97kzwGwPtMHeKWeSMEvX3SGx34SOdt0BTgRxu9Zwv4cymUdYkldMOVz1f+ISOMFrYSeRxb5MLKoAYBzg10Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748080194; c=relaxed/simple;
	bh=4rN6bUxWcyT24sus9KX8kKWCf58lgzn5zxXWEDj7/TA=;
	h=To:Subject:From:Message-Id:Date; b=Ip6sHtWliK5TZfi0cv6JJGPg8Il2PvCCTlsp6uxu1ewbGlSSSAKjHB/4v2XPrkT2Y4otRSdrSPX8kteEv+yq2/T0oV1Hubx+ATmKWNAtd8AcmvdTZau0JtAHF8sln6gAOawKhevO4lh8hYnK9PYhg0orilP+9sDVJb2LxBJjnjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f39RYlww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f39RYlww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54E1C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748080193;
	bh=4rN6bUxWcyT24sus9KX8kKWCf58lgzn5zxXWEDj7/TA=;
	h=To:Subject:From:Date:From;
	b=f39RYlwwXUKj2b8Tk6jgdSenHH3f7Ui4akrnPO06PvMuQrlwJqjLpcqRbfWQ733wr
	 QWr+/eSVrbL6iGmKNxh3P7GqLpYfjZYPb1eY/zyHUmPHEBSNDvPnd7B37j+8TP+J6T
	 QmSBw0D8BgAVzKEu+kGH88JEvR7vtTzc0hYHa3GE7A5oR8ytdHU5mlBx3hwjXatjmH
	 vn1OyaJ7wYaxcWL5tyNQSSc1NFKVYWhod98Se6tk23vJA2eayyTamFWrgH/wcRqp/w
	 LgpwAQYv/mqk+bP6JbqYfz8RfFE0I3eO27CMMeh8py3GPDLmvywFpYOX6Kju9zyTFc
	 cD3IT/jqWnu/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92041C54F32
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808019357.15662.17407571918975782746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 272d0fbded86f0f0b00ff0e78fd0347db3baaee4803947397280bbe8343e95e5
Date: Sat, 24 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748080193
