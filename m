Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5758341C69
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 09:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720431983; cv=none; b=e6AU76SnJF2+CgocD8LNBsMNmad2oylCgoG/i0rcirIAU12Wye6d1E8qzqGsAGxGfnL8uN6Tl067sKNkclvA3HbiGTb1YwTpo150J6xNxHfrGPZPOsznfTUWEVqoPj8J4Apl03aqNONWWhFs8MOO95Sgm4IKG+N8CPUeVr0SPt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720431983; c=relaxed/simple;
	bh=nWuT5Iy/j/rZBp2OKosjtA4Oicv812EQZIGZ6BbB/mE=;
	h=To:Subject:From:Message-Id:Date; b=ZS3IrQ4L1JhvDmCSaY59YCVSTM6v7OcAc7Pd/hEcdt9TsSxPa9yFtblcYCqkUHBqF25OCCbjDl3BQ0pA1hK89aClpyI1y/NVJenjDAPFIkpRBYSNg3ZdHFV0bJrmy7HOQJ1H/NADdEH9ks1E0q85Hn1dVJQ3DBr/pFqfuoZ5RaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHW94xFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHW94xFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD955C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 09:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720431982;
	bh=nWuT5Iy/j/rZBp2OKosjtA4Oicv812EQZIGZ6BbB/mE=;
	h=To:Subject:From:Date:From;
	b=iHW94xFAqg4gOu+WFiZE2AV5WhOA6ebPZmalwrcD5BZnntSbBwhC1W/KtspP40jqr
	 j6MplCrBSxAtQ24cDZSQktzeXtegcCjlY8JCzVIvAy3UksfviFZKkNcg4IzYawVVjU
	 WFl/YTVXbo05xDbuMWW8LstiLeRdX/Icw4uCnjU0vGSEI7ZTU3TZP/wCOhC9gjbOG0
	 IurwwtSKrv3USpYmWnro7DTrP0iDMAt3UGd7598tQfyRBsHgFbFRV58O3xruvGnYLR
	 cYsBxd3BoBUX/Vws5LaJz34n06aJvfMX0TFi3UH/bEhkA2HdFmYv1pcQ9rmozLp4gQ
	 pJwVoJz3uzFkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C780EC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 09:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172043198279.1543.16635956207341343313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39a9db7c139f899087d2c4d376baa11c7b96c3690db3f6eb343bf87dd30bb2e
Date: Mon, 08 Jul 2024 09:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720431982
