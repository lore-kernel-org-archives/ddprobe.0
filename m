Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300A84C8FE3
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782930514; cv=none; b=rE1U1/PmYhyxGsLMMmUlJVqA2KScFvhR21WVoeR/BVxV3uYoVM4XsGLPD4KExKi3um5td2m6BAO3ac6OmxZPOU/UrYZxoxKw4GUU4Cf8bkRY9dxE+ShJ/J5/f5MYo4idE3X/fja8aWj4YMUUOv1U0xl737dgFSXbWttbYzE+MVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782930514; c=relaxed/simple;
	bh=ZDcQbCzKhyd7Rfiq+ZeNpYi+ZIVaOYzJUUjEmebnaB4=;
	h=To:Subject:From:Message-Id:Date; b=cP/KjmE1ECy2KvE2O+85Pt4K1E1WcIzf5cig6fVWMayCwuQLFKkqP86jF3r4cEZE1YF1OqKPBjiJpQ8s8iFKIbM50JDgVuThgqvwGRiowVuHvwnTZ2QSc/vI5+VVwfwmtSiwI+V9GwkR+koTyJqmahf6CLjRecl8Qta4ojMcJZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWVwEt/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWVwEt/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2919C2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782930513;
	bh=ZDcQbCzKhyd7Rfiq+ZeNpYi+ZIVaOYzJUUjEmebnaB4=;
	h=To:Subject:From:Date:From;
	b=qWVwEt/ZLHIXWDW/wCNksXvmuaZvYG0K2SDCDfzAh5NVE5WORTTO1Zn5gazNojR8q
	 5zukaqvoDY7h+evt26TbcH3DdwjOoQ9PLggky+CFfc8LDSbXZeVn/bndtmBZmEmXq+
	 KolAJlC8AK5peZcXY5EhjQudLbvLot/fN8KslOE6OBbpjkpHQy9GOi5WCinGwBt14b
	 gN3H7qPrSz0IqX60Fl2iBm8IaQ8GAUCSIYXVq6UAdTJasYQCiwn2MBzuU0VGhi2Nmb
	 5jpwIVZaEDe5XrqRqJ257WymiF0qIu0oxqcyv+AQewKqTWyIWlmeEvmGEBFQ9yFphU
	 UU3C+WT0tDuOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8BFC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178293051368.3105.6958060713803138140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aee0835858129a5d3764cc2018f9510235c665398aca5cbdb2fe46c3cf53521
Date: Wed, 01 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782930513
