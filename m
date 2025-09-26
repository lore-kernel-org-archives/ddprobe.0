Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288ED26FA4E
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758876594; cv=none; b=UG+3BCuySffBXiIkPtYgDePBbEB7OFmxTxXjDwQiEJF64M6Do01Y1zFxz7G3jtTwtSegfnns/9/M16WMZtYmg+6YFLJS0tYVkD2RchnXay/5X4c3qJ/M2q8N5qqS2XYiEg3EtKpIUo2Df82lZTN/ZdvR+aoARZtQuPW7pzT2clc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758876594; c=relaxed/simple;
	bh=N90cvJDA8KsSf3rxlNYiY9Zvy+HPu/ZcPwWYYVT3vOE=;
	h=To:Subject:From:Message-Id:Date; b=c86G86WDT5jOBphDDT5LC6lSRFqA8VWFMq7y7WtRKlM0M8q070DX14UchQr2KERMi1dtyVdNvQ9gcWIFt37Buorbkm06cIWtmXqyfRYMSB8K6o92F94QxE5OeF3vDTaNzaXCJ+m5+yQLfxYeVPwyG/3aZo86bmdO0F/6HngBm0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKZ1XJso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKZ1XJso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FB4C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758876593;
	bh=N90cvJDA8KsSf3rxlNYiY9Zvy+HPu/ZcPwWYYVT3vOE=;
	h=To:Subject:From:Date:From;
	b=oKZ1XJsoUQxaG+PAczMrAczbOidKlCTiTZJ67x1loFObt57uH2XqX2QwSNrc7SNRb
	 iPK/AOh/MxCRkQThE4cDFuRzazjnQ/wn7ekOVuApPM+UOvUbhJj74DDAOIPyD0jDEg
	 Y2z6oGoZQZGTq3lMC+bka6oSW/lVYVnx+LuTsxI6CFNpihzM1E4wP+QfVoezUp42hG
	 fxWxQSYzQ6J/8KWomCqzMQF3BI3AlOu2hRpZKVG4PFXd2qQeSWGSeHz40rP9HX0vPl
	 JX/Tf5bGN7Vf4rEc5Av2noJHXgxFt2hk/OC8qwZO4pbUTcon8kQXggSaE8qU9lynrm
	 Wmif/CO5Cs19g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9500FCAC5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175887659359.25883.3923695240240354861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9b1d84da279ff963145b370980d237ae4bfc02f3d1fd388d0670a6c7966a95
Date: Fri, 26 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758876593
