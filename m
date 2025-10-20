Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCF82E9EA4
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760962194; cv=none; b=DK5K1CxTci2TFdYrKZPIL2Mokw0eRIgFC4YdVExDz29xg9EKpobgdfPHXwQfTpziZpnTbo+H3dpBcrPQ8gOYz+QRpscuQeaxAn33bXPRAonPes8T0MrS97RWlziINcNMmi2Cc/Ac30UuwcfSUV38AByb49GcTkRsPhSzDlWYre8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760962194; c=relaxed/simple;
	bh=LLsvL803Oyo0E0z0z25SoxOZq4GFIDTdFBXHl9RdpzE=;
	h=To:Subject:From:Message-Id:Date; b=mELe8xqSW2VIBTwhergVK91VLIdplgmZVwesQI6j8k0W4Or63RetL44r+A0mBshYDbPWt6wyk22QkTtJlgRIkzA4o2GtGNC/7vMY4WZHnE3xCqkFdBMpRLNd8Rrr/UXsDgTlcaB4EwpxgnhGbUKdQRT5dAGUKcivaNy6dDeJGbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRTcPNNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRTcPNNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A23C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760962193;
	bh=LLsvL803Oyo0E0z0z25SoxOZq4GFIDTdFBXHl9RdpzE=;
	h=To:Subject:From:Date:From;
	b=qRTcPNNW3Rw8XigBf2hQ2tJMsqDiUINDYWScHcw5S+uQYEB62IK6TIn2ELqb2Mx7x
	 o4fd06j8cq5xU5CT3FXkF/R/P7NkzWAwmUjb03niAZoSPgs0BtuU3znONFw4wGdC8n
	 bwd88WIIJHt8x2kocYhdh0UFBMrsii+r5YF70cBFDvQeroA4QGoSMlkJSwZhz0zO5N
	 e1XO73WiQJzf5MIW4KwsGGvGJB9B+aDfNQjOyZRlrT228Ptk5p6fv4PVlBc5lHcObE
	 DviJujiysrvS1mKRmmVsk5VXE8TZZMfm9bZ0jHMZjCkfUPDbblUz9pr7n4T7XVDjfI
	 7AfY9X0R/hUxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0BFCCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096219357.26004.3341808814072770540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c9efd1eac2e58191cea7723668504296318d4bb712a0c7f68e38f415bfdfea4
Date: Mon, 20 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760962193
