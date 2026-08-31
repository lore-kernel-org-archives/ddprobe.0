Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558E63B9DA8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788162634; cv=none; b=G6YK0NU1XTvCMS9U5TCNeHjhIY5q3PvwYjNb0/AShQCpw3Iuiea+48AjqfSEkiT5BTmi6TOqvEM+qEINAgzKRtVEDzd72JxVoPQxjeJov4nAmOR0AQbYd7dXbbvzAl7NJCGi9jH9aJRAiVWrP/FxTMRM32A8+1ddk9GTZSHdRfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788162634; c=relaxed/simple;
	bh=Brej4UQ4aY6BttPsZF7CZ9R4iBu8po5pFYZFajhn4bg=;
	h=To:Subject:From:Message-Id:Date; b=La24fDOMhhdNdvK5TJYiGx+uLfZOPriWS2/hzvH3c3qYewDQbq+0VBhiGUEyGMT3gy6vf1EGQFsQlSwBetUZJX98p8wpjs7KsQ0Y7BaHrD7y7wANiT2DbS1GZQ3AVrgZG4gp7RXnxT5wlmurIFwHw2jGrXTRfkXZWGm4T4NtEWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BW3RNRFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BW3RNRFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BE5C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788162633;
	bh=Brej4UQ4aY6BttPsZF7CZ9R4iBu8po5pFYZFajhn4bg=;
	h=To:Subject:From:Date:From;
	b=BW3RNRFqkrll0n9+ks7c965tN6VMW85DWNH6Y12ahgwoYdzpQuvPM2wnrSiOsCuDq
	 vGZ1Un3FfTOsg8xjlir+RiwDUfPbaD1+Dpw7QkBbJjiDQnR16e1tm2DbdYOwrq/geH
	 O7i4gT1v5G4LPDOB7vubtj6hS99iYEQeibS4fpL1+k3AWr88Tpjsgx15xCW0szgKCS
	 5tViD8Zrz8HFOJowtgbyCr7PCXsNiz10Jm3B/VPs7AjEv879BNBTb/A84wZOkpNaBT
	 vGhcc7TA+Dg/Uw1cKE/SVwyR7pQdblL/shsZnpSFh8twHtqSBOFX44zbb5XU7OxVEz
	 kRN2nW9aLj0xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B79C624A5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816263370.22363.9863698943193707115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c272775d3c31a682bd7d1e567015424a5fe60fbe884cca2f2db1e8717d5d29
Date: Mon, 31 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788162633
