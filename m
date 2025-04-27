Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA2D1FBE8A
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745753994; cv=none; b=G6Ef6DfAh3TvW1CTWZekDOKrxf8GnAUKbDDDfxxIrzTvK+HmCPpYLI1ZFPJhtWLIxrQ49bWekury6OVQ9abCiRciRMnVib4bvBziYIZXF0+T4uKmbovsyIk5UWxjMwYVReWNvJpsulAuT70ah2nxEKtdTZqgOoFe/MDXHDZDtoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745753994; c=relaxed/simple;
	bh=VdLZQPkS5qPxYQI2rDCHecUKbHGl7KAeI/+PvhTzsHk=;
	h=To:Subject:From:Message-Id:Date; b=W2+LQ+3FpqqCsAwr80jRiITHXdlqqgVpgeJN//lDs+rJRWhCjdfVItHtqMYMj/fPVM3J4CRtzqqt7wFvHijhscyNgk8sWPcrL/jUVcC9pmHSn0u/GMWh/m55LXrCqimGJStWxxVY9kLni4fekYzZTaX9TSMNylkLpGXFeNlKnr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOMwp3YQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOMwp3YQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E657C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745753993;
	bh=VdLZQPkS5qPxYQI2rDCHecUKbHGl7KAeI/+PvhTzsHk=;
	h=To:Subject:From:Date:From;
	b=oOMwp3YQXyCRciQ6vrHxVaOnWvlrOOgwZyp0cBoEfol3glvrvnYJeYuLWXb28Bs56
	 eYEb6ZycwrflyFu0J3XYS/t7cs98kTzuhOZM1d2qSrwpK4m7cuc5shPfYnW/l5KijQ
	 JnX7yVTxfl1/agDA51SImY9h3n+LyUa4nQJetOw9veZ2+XLzwdvNUmm87r8/AL+FaY
	 nTZOnchz1ogAFV/9YkEg+t8cp5lwjGXT5nMY1QIq1+7IuRIvm1shh/sanA6iIwOi1s
	 yu8+c9M1dHcsIrJPm/uAjrk2nu4Wm4a9LrLK6UJmXMhd+TzslVVfy0bqHed1pZhqOi
	 K0vhIM8kt5Nwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DEC369D3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575399357.20442.16485810844500394424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f119e2a6ac8164d0cdc4a4f4456d7372c8553589abde0dbd052200bfd282517
Date: Sun, 27 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745753993
