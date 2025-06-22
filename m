Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318E53FE5
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750565395; cv=none; b=avM6FTdT42vbzhh9Pfmlqh3ysM/M9fm5GipCZ5CiJ3m2X2lL2UFC/HXGBcOrh5x6ovBdIezGUhe0p7zYJmsbHEQM42H7Rq/DY/Cv87SILE0Jm5Mw3I/K+4K53VNSEbUjmwJlWtytOD2+lyV2S2iNx7/84W8E2UbuNfa57ZeinpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750565395; c=relaxed/simple;
	bh=+ZLu9Mo62jmkapJOkGDb1EcXF6RmH6T+39Jo5pQjMlw=;
	h=To:Subject:From:Message-Id:Date; b=eWvftbZKSRNm+h20FPSGHE2WCjFG5n5hWG3KoKOK1zIYDtGMKzWs5KhZlYs+vTfzlJxRr9dwwdJOFLv3MR7nMweKinsCVdNpbfSYOS2jVyvPJS/F/9tGFOq/46ylC044FJbHsRrfJkA1QZEbDnUWzqOol3yT34K2Vvs7oVW3TJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqZfPxU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqZfPxU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52C0C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750565393;
	bh=+ZLu9Mo62jmkapJOkGDb1EcXF6RmH6T+39Jo5pQjMlw=;
	h=To:Subject:From:Date:From;
	b=EqZfPxU+IbppjNxhLp+decX3OgyRn9SB3UjbHzYwRLcNiC8geT10HV56/QVCJ8OOe
	 IGzgRULkP1VgTnK4sAxc5VIvlmWTj5aDIdd9PqkEYaZCypzkQCTCSblz5DA1qK5Gd6
	 K9D0rU5PxpPNX64JyoncKBtlj3k7OzkPkWTjTWhCQqoxhHku9Z9F4aSQXq8OdFqxkX
	 d3EkmDREhPDSC+Ijvuwzzhc1Pia1Soxh5CcLT52Im/ap16ZkX9K6/jxrZ+WQvxW20P
	 WXyM5yoWywccZqghQqJd05S4EHfhr/AzgE02PetS5GtrqnSVEan/T9ZQyGzq2qbxzS
	 2UWRPWf3rfIKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B55C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175056539357.27024.8680106423927828497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86b9a4b23d4ac07086166e471834d57ed69392e3374e0bc2988b1bdf8d776cc
Date: Sun, 22 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750565393
