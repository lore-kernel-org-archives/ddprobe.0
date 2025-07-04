Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA6D2AC17
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751609993; cv=none; b=PcBODZhf8GA+xFZ3mjF705G+Iv0fptBdOqYntwjs4Qt5bykYhai8wmw1rpDAgpMZxOlyMyBc+9zkffw/NYGUl+sHakWm6Rm9kwQG8Wppf0Fh08KUWRouD4zw9SiFwjGI0OuIhGYBA7OcgpeC9Cp+Sbpd2XogdQFFXIKmc4nPhTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751609993; c=relaxed/simple;
	bh=d0qnwaljfRwZcbFp0jkun9zaKxz/Nebe1ObiYI3CllA=;
	h=To:Subject:From:Message-Id:Date; b=Nx3veY7yDowW2E2fWATW3aKN8ArRBzoN4m1IZ8SOsUcSFTSpJUmoDkmD1Z5e717QePu+6UTygvIImYmeVG3MspYRxJL5foSZ7J5YvtaGTywLKA2ooIN0AwX+FbYLBWN++wo4A1JA+rRVAYdLBp+3YovWJMJf2gbhtJ5yyLG7Nro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYcmDAAI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYcmDAAI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CF3C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751609993;
	bh=d0qnwaljfRwZcbFp0jkun9zaKxz/Nebe1ObiYI3CllA=;
	h=To:Subject:From:Date:From;
	b=QYcmDAAIUpZSSyAuMIyJZV70jsuFO1w//nVvSIbzkLf+jkvLHGrIq/Z60yI79ypl4
	 Fet6mEwISub57RgAXERO++dY++gahVtTvkLaTd2CabEvEIIq+k9QGq9VgKZCiZXxMi
	 LndmDT5N1zNCpVcRnfHJhBI3USxQb52hbFYk3IZm0cVPrKeOLqOxibaot248Z9UeOF
	 dCxv+Zr/lM+tyDgcdAIsgQlJgqbtq17YXg0hyFCcK+Q8AuGDGwR0b23h1Rycb5Qdbz
	 UX4f6gc5Ys+qAKCUWDK9iY9U/RwMZr/+nEPAP7TxIawVCWdYO/DWhOyHQbUkqkzx6f
	 +pCLwafoWrttQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A05C83F09
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175160999357.15866.5798690596355644054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781e3e2ff3efb2e09a50851c6c7b0cc5ad85a232049496e16176a54d35fd5675
Date: Fri, 04 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751609993
