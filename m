Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568192E6CB2
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763578916; cv=none; b=qYUJZaHNpVEzImZtNQmxXuv+6Bv4hWGJNacaXs2VNb/Q0JTCtj8Y5KkR94aWR9YGlb7G+qVlPnf0JBRDXzn8u3VhaRl5LlHspgQUUEpW4hfv59+kLWSz6P6XASWtlNMWikgqjOXh8U5Vcmyaf2VzwqTqq2w2ShPA8GlG/rIqDcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763578916; c=relaxed/simple;
	bh=gxO26UGIumrjPOIJhxCn5yMMKbizKYyfk74gl16ZmxU=;
	h=To:Subject:From:Message-Id:Date; b=g7BshTsE3GI04r69BV/DojmraJWggmbsf6qDW4dWaVHpNk7D1vgAq+++92fJEZWS71Tf2Pdhr5yTC9B8A5QRQy7SWST8UVRkmNWpF8scspxOLTtYWquAM81w2s3OswQFkVDOTcTgJ/iAT1anN/QArXc2x0fPHxaWlkC7yJKqxog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLsbnJrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLsbnJrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA18CC116C6
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763578913;
	bh=gxO26UGIumrjPOIJhxCn5yMMKbizKYyfk74gl16ZmxU=;
	h=To:Subject:From:Date:From;
	b=RLsbnJrVsD0EJ4r8bJ9pz1y4el9tzZSyGHROS6RbosXL+2BIoJJLx0P7EM6/XaWTN
	 ZNQ+NW8Ww7RWW/d1R9S/dRtRrXhveysGWaRmLE6GupaO0ubKq4fZqV34WYJxN7FkF6
	 HBgNQ0eEQAvbZehRJQm85uBMLCv+sPGOBVvX7nJvt8cZ4xVqciasBNonVq5f13Ye/m
	 4v9sOB5uuKo82BBgAkkepObSogmNG9sR8dkM/g10TRHROSDtG8azh8BAHrFab9rf8i
	 QZAlwKstU0m/LO5Atr/1k6F4tnt5Xd1ublck89J8q/RbRhBQKNbo3+3UNNbUi7oZ0O
	 5LetQ9s2On15A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97297CF58CC
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176357891358.1924.15578115249174175994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1918b587b4a7dc8898930990f2ae929a1bfb8f5415d2c676497da1094a8db24b
Date: Wed, 19 Nov 2025 19:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763578913
