Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045B53016E0
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774625094; cv=none; b=AG07Zn6awtCMuJVPk15fAwBLizqbCSmvVa3996HhDr3vmUYOC6eH4i4mR1wRxRvjXaBdJqfjduoMm45WG6L6bxLRZsMHu4ITGWH8vEY9Gcyy4yxl38/jCeXyy7yhBHzjPS4qSjrNaysqx0xWwWvGVzLN99D/j9uCYltrkoLNBJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774625094; c=relaxed/simple;
	bh=UbEvseAEW02y5BW09/o/aUq8XXdc+SAN3gK5OC735Lo=;
	h=To:Subject:From:Message-Id:Date; b=R0lHYLZYm4skp9ScO4DWbpAN1x7KwmqSB9gGnnGlcX1CBtlUJWwC+M3E2jqkPfpOaSFGm9QiUsLX45qS1lvHS+KULuQkDsQPNDhSmd3WIsppIIe2HbnSWWRXsg0DuB/GB9DGaJe4PFqbD5A3mdHbR5nY3wBt03E5WK1QZ8EJ3Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5gwgwOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5gwgwOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A271EC2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774625093;
	bh=UbEvseAEW02y5BW09/o/aUq8XXdc+SAN3gK5OC735Lo=;
	h=To:Subject:From:Date:From;
	b=D5gwgwOASzO1C6HxAm2pT9uiiYvaJnpEDiszRermjlfUUKfO2gP6hph9x6UVLfJ4p
	 Dib/ayyC7YpskOXZzG137SLNO7iyfCtYoT8nfy4MNMxBcKslBr1EdHVVZBfsQYFYpS
	 0CD1mAB/JH6FyHlSunxLtPft09nH1wVIBWBhKaRHJWO2OxuWL3m2KKwWo1S8bJSSef
	 B/BJGHwloWVHefeO3Ec91/7hueryn14jjERb2NvOShyohPdyouvwtWCOmtqxw9qTNj
	 5JXf9oghsXbX2yIjF49AzxX5z5vaHKGNz15dm9Hf2JbrK6GJ271KJl8GOWBbDZHhmY
	 hd2i0pxh//RPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CD910F2840
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462509359.28544.10801766902586503371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02f85df0eb36465746039567a4d55e83ede449df1bd00af09428769c51d69bd3
Date: Fri, 27 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774625093
