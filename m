Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33582231CA0
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728849354; cv=none; b=EAG4aK/YRGnENHcVcmKCnqXLxPYaWQkdHcuDDlePQahY/+T2zI6FuC+40UkjSXBrref63OCOstglJbqYEAolROK7QcerDw0oJt2PAXe0IbFQO2WHwWCTnZM4timnWlBKP7zm3m9YGDHbEMSxM0p7lgiNJDlcgjQxHJpravrXAY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728849354; c=relaxed/simple;
	bh=+n3srywb7erXsvrH09rb+vQhP23gy3OuSKz0CiAeRQo=;
	h=To:Subject:From:Message-Id:Date; b=QELTkbHKiLyjxTwjOUlRDJUHOD9AW2I2/eGz8aqZtU7iTpgacOfGk1STPnHDJKGvrfrpQzZgtP0d0TmQ8kWNq+x9pOoBcLh0ET4SWfjltgGooPVjM/pjwhyXfVj6Xt5qsiCGRRlc3uPrSA7eLqxYHpir33lIlCUnajgqRQNR0fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqdOxsZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqdOxsZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C87C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728849353;
	bh=+n3srywb7erXsvrH09rb+vQhP23gy3OuSKz0CiAeRQo=;
	h=To:Subject:From:Date:From;
	b=JqdOxsZDebLwgt8XOtfU5OSHV3OWP7lOpiAvZyfPejasp/3iGJbKH0zkn+jJX49lu
	 YQ8ngm1NsP5nz5mfResdjLZd9Lb+7p3tot94Oa8lQe1TP8vHq5GEfoBF6/9JfuNw/c
	 H42yRG/BoX3Iei0oSiuQeDXSTk//YSgkdpEmegD3ZmRpw2e3CGGkJqS8A9X1mXwgOf
	 KQs1qZmF8AatULm4R3rdvhcayjImNQoT9ZZtdLj2GC2lqmzIgYcr2dqbFoE37jBJkj
	 Tb71loHmFZ+1TTYsgeqgIXAKaGP++Q9GnJ95y2MVOPzpCkpL4KJs527lv0w+WqS9D8
	 Wpo+fGQPGzhBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A47CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172884935359.17528.13885090279146659953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f566ce17dbe94fc9e69ef778065f009cbecac1a349ff6195bf9ee608dad9a9
Date: Sun, 13 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728849353
