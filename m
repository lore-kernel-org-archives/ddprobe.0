Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95A91CABF
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731043553; cv=none; b=R3DHAiITg5hWHQYxJ3oezwB4kKmoZPPrrfSl5/TeQIxJX2qMpHJsuFPVyF/Qo3vRn5ov8SK3S6O7spTBtM1oPdZpL5CTVB2mewFEZDiWBDWiUIdsPm+4W2K2VeCW06Nvq9ivh/MjqmuFcf5+uzovFLwSPEhFuFPHGuXgakPgi1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731043553; c=relaxed/simple;
	bh=0Aqm6V+pHtdObKiExzUixptzMCPGKKPfQ1EO5lGxojE=;
	h=To:Subject:From:Message-Id:Date; b=krryZS9la5DS308b6VLYv/7/xpYAfHtdTDWWmmHixocM3gJKOXKukvgYl0QePHNUKC6L4NZUgtACj0IdUfH5AkusG88isE7wcFkXMXFBzRKWOqRAkv1JQzN0PKsH1HmGdTPqkbT52MhVtqOqpt9EiAEGNYq9psUaFrx+HRYKGAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDVYEtY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDVYEtY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA14EC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731043553;
	bh=0Aqm6V+pHtdObKiExzUixptzMCPGKKPfQ1EO5lGxojE=;
	h=To:Subject:From:Date:From;
	b=aDVYEtY5pXeqmzXnf8L1m67UdaUEzne3NMAZ5AkyzrKI7uvsGXKtcb9Tqgki2ITuT
	 i82gK0T7MllOV1kEKaQ5qgh18Gk1vqYQGSEep3UAZvXGwwC9hTsCNdVQUPN5FHxW40
	 m4bmEcsJdB8iSjv/2I8E+B6Gbcl/DfnYGOKeTHrRIP/b3C4Zw/qN8luD7MI6wgcVmU
	 7hVezaqDclUF5kDzb6MCtP9moK3AqIqL14/j9Pz+WNiB6g2so2DOE4FtOAhoRsU9Ks
	 cYy9O8wtPJ+LPjmdFm3fkJEIqE/kkdZ82bhAv5um0Fw06rnjAvbyVtXCORLwoPcQV3
	 KxuiGd/2e7NXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDCFD5E12A
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173104355363.21700.14628164934457045998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c1b20fb2e1e445f3b3ca272aa709e78cf08eb6c08f48ede8655f7e9695c9ad1
Date: Fri, 08 Nov 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731043553
