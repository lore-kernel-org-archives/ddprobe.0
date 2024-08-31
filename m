Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8C9146D7D
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725086753; cv=none; b=E7xrmtCDAQ82OF2oDC7lbf4AVowteBlqJXmqekD95UWqIgO9B1dR7i3XokBpX2BTm2NVIB7gO0LJNStZwElVVguiccCBdiR4w5LqqEyVaxXoAimIKRrT+0BDBKsdxV1AIPgm8w5UYR/NblDoucpNVsIq85kKdT8aT6ANmGE6n0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725086753; c=relaxed/simple;
	bh=u23bS8adXs7kA1dVKWUFw97iC48dipYVcjZmjTfFjcc=;
	h=To:Subject:From:Message-Id:Date; b=n72xsstXlXhKQWMvTWmrLIol1Pp9S2PKitwsKYmjgpSB4f8hCgjh6JFOf+Tmap6ncSsWarwfZzau/KuOjHUVL9OaEax2O53csWwl/PU5jaMwNQhw1USVVaSephdZ5ZOH5PmpZsDOfh6TOFfJI/E7T/3OrOSDCW8MLK8udwLZy48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XG72zH6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XG72zH6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE2BC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725086753;
	bh=u23bS8adXs7kA1dVKWUFw97iC48dipYVcjZmjTfFjcc=;
	h=To:Subject:From:Date:From;
	b=XG72zH6Ay2eEcnqviflPlN3gpkP60WWsepAU+dPeOTsmIyDL6OaZ9CEXPkIv5g7Iu
	 yXkE5a2qyMaVugewODgve+YJFdeenwFJRfTQkLjMckXkQfWdmGV6HYvbW1ONreZDFf
	 cisUhI2ODsadD5I7bzEiHcA+Dgx7XWNX8ZykO4rNTqQzFxIMhLbl30F7wfuoHi6Vtb
	 ni/dqayc0AaR6436u18PHE3OBO/+K4ber4Ny4FmP5FZzP4Np/E4u3+ekGjqlyr5GJg
	 UHgLoB72U9AOc2fnMQUfgkrZF/MjA6eMgfPl0HP1oUO2BirPkdiWiS6U3BjewMSlvo
	 0Xy4mVngvfCFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C85DC5474C
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172508675363.17432.5981006366411469825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92566feb988b33090e9bef1ad8b124ed42f6287f40c9bf4d1a2088e4b5695fa
Date: Sat, 31 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725086753
