Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9E219048E
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 06:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717569983; cv=none; b=Osk3tzLOzMe6qMXxbp/1B/Y72TOZUiGJW74B1n0g5r985qtBNy7OY6av6exDTcbTZxiELuxX9eaoWOkZk9wasmThTeQLpecMEqRD1KrFVFz3s6nl5QkT/o1QBT/qhLzS8xzVFEJ5ToG7xt+plZ9p+qE5xP1KVHNK/sM8Plj/02I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717569983; c=relaxed/simple;
	bh=9WScQMolAt8Sfiipn1DAdep33S8yuE/FYGyoYo8E8zI=;
	h=To:Subject:From:Message-Id:Date; b=hok1EW5lhmXk3bV01Q8XIRDaOuxYpKb8dQbtvuAgg9B//THlVoEpNW6+sNXGICMWut6giLJDYdLMBiRsmGhTJZbKKu7pPJeBk5R7PkFVUl+lw1RhSuduV9sibClU9slSIzy4MvU2//oV5txNdXS2xd6PLKW9yY2GZ89pLpt3ve0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPCEkY7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPCEkY7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE6B9C32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 06:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717569982;
	bh=9WScQMolAt8Sfiipn1DAdep33S8yuE/FYGyoYo8E8zI=;
	h=To:Subject:From:Date:From;
	b=mPCEkY7LfyBrRCHupBv68W2dh9NrW7ipHbSd8GoH7Lmnb0TQKufUhW93DYv77DQay
	 1u2/XNfMkgHHENxtJ2UIJuCGFAVlpKIupeJE0yrjh+vvRqTr2TvMbY1aj31Et8qgOR
	 2M02BUZ9xgC+k/JMtSECec2pC75l7H8hzJJuLKERmCyThU26I78Vp+iU01+GBGgG48
	 95HowQ5w5Z5a1dwN5OpC9Hle9fAf+YAO7x3We1ASsm2+MwpKHTQGTKIuHhS+l30+kw
	 QQh+R4Y/s2GSsNJDccjlnOo0OujM4Qf1qX51spiFQYoTesIMBHQ5KEuEh9IsI/qgi4
	 xL3Jke01N+Yjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8EB0C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 06:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171756998278.7572.6212166754036960259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da14e440080d10c2d1ac3156b98ab8ed825d9e606506dde417ada3d53d18d0e
Date: Wed, 05 Jun 2024 06:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717569982
