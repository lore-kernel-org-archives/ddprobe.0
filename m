Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525EE5101A
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 10:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715597543; cv=none; b=MJZxRjIIYnE85mCeNZAP716LopMThe1VpakvHWh6+5eYlpjfHoSfKJdvpuApGzIkQY88R1Khq44BgBhviZmLkqOPnJM5cymZ/L3Pa0Oe7SpdbFRynrb8nVk3m+R1aG/Xd+6iEXHCgoLCcUefgyzCPKDlyJGFJdwaYJc0ThGeLzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715597543; c=relaxed/simple;
	bh=dNgfpvMYnMxueb3IyrqMERwJhRCXRGORFyTCCythIlg=;
	h=To:Subject:From:Message-Id:Date; b=WvLfnxFmSvlOgIF9WdG/yNJsq9ahbPT/YeIqZUmJXI6+1lcKSPeQiKraOAsLvFmI8y2foeu3P7zJQqdhtVfdM6lxXJyaPbqVqd/tBPKJoo7QEMlNQZO+pDkdg47zFHPd0LNcgkW8gNL0mEuROzvhtLOtEcVCK9CcnFil4P7rm2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHfgCWMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHfgCWMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37FAC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 10:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715597542;
	bh=dNgfpvMYnMxueb3IyrqMERwJhRCXRGORFyTCCythIlg=;
	h=To:Subject:From:Date:From;
	b=oHfgCWMvW1NF7egP14Xd6W6SSzq+mUWYPr7P5yvwKxdHOtY5X5Kb4p426U+XQpMEq
	 LUd0rd+ca1qjAWpVNvywoSopI53SnGZa+xMJ3Zea/RsDJsyKu4suOWKOyHC7vVVs8I
	 wFuKOt3UlwL/ogoyH795j3+TN3O9lYhp0H7cwczt76cptX7Y250/7HRXpTmzNYLBU/
	 Ok6qpWXgWp7vMlPB5fHlLzke220891VSIRsltsILRS84SNvwr0gNVvyZ8d/K795M9/
	 J+rb3ts8PNYTwpRHRwonFaSNbPuXO2ce73CrKEUIgh5DVp53PDvHRUzggekE9BUyfW
	 6VU6VVi3Ko+EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA24C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 10:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171559754276.32381.7461353343145023033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11e4d3503a6e07d74c1f23fd0d4ff3937ac7becb441b03d36263f8329e31ed54
Date: Mon, 13 May 2024 10:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715597542
