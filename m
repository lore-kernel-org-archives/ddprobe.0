Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253CB224B01
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755713394; cv=none; b=dFF2oPrOl37Jg/qaVESFMYEgcWZ9DRpged7D3PcdLM23ASrdB9BZtT/DKq9OCcrPpg1NYXkavq0fM/ddWPc5toyjHAfd06czdnXsc2cOYDUppD19tQKoBj8is7UG/g9qpTGjPbIdl/QIMMD+ydzc2U5HEELWiQ6J4xNXH9zyTbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755713394; c=relaxed/simple;
	bh=SmffsJv9K8pNxbRfl6nFvY16xb9mbk3YJiNzEqooFdw=;
	h=To:Subject:From:Message-Id:Date; b=IWqoDFVSOWrHbG+VF2cu20hnlAh8tOlKjCWuwdpC571lcC38NTF8DBlN01KbltI+FvZXWT8/taEjduoQnc9tKdjnn2M58AgzG7jLhZiSVNU2bkx/UaMq6SkC+XpGDKxx954V7JrZiR8PrjJkgi50IB7TEumZgt6VVzm80G5UFtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEUayGp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEUayGp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6613C113CF
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755713393;
	bh=SmffsJv9K8pNxbRfl6nFvY16xb9mbk3YJiNzEqooFdw=;
	h=To:Subject:From:Date:From;
	b=tEUayGp+TZgcdnMQyuZ6s2X7ZpaU/V4N4MCmxDfUSvOnxBe/L+VRdLivKQy4+2UiU
	 IHid4NAbQcpgKAN2ShyTjWyiYZWDUkRkD13g00jhWq1Oix43Br4LZqMtmsbwHPUTqD
	 c3Lv6hL8X9qYk7B38qGZmunkfeh3Tqhn8VfjKJfdTi8+uutg4/dRFhKymDjuE6zqPa
	 WNM+h/Jiwu/wwgph085rRKBXT3kivL7aLHdtvm9auaaZ7E62Aw89VPM8l0+bs8TR6J
	 RRSvNGGTyY+loWNbWf+JQiEw0H55nhxvlbDtXMIZKqZBBpuCi+Ze59aHjXEAniHs3w
	 8lSOkYzpixBLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949F8CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175571339357.26409.11974169450762695795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75321d3f80fea5238cc38fe1995be05504f68e02f722c6a07c517b171a77189
Date: Wed, 20 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755713393
