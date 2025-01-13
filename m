Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE5B22F19
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736750754; cv=none; b=tspQeirKB51exCLc9w9EDLglqmp4QJzqxkuJ63H8qJEwaO2b6iJrKdw6N7r+g/cuKbPFHvOI1B7sjVre5jY7g3pB4R9uq7RVgZyGKZXJtdvjpxa6iaJTXIAppyNHp899zRxBvZBE8G1wauBErZUhWdnW6iuyH+XO7U1q+tX75Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736750754; c=relaxed/simple;
	bh=M3BI3OEoqUluqTH/BcQSOupJRxTht13i8RJlEqy0PYY=;
	h=To:Subject:From:Message-Id:Date; b=OD33h5HoMzkr5PmcUCaPpPWEon9H4PStOvaOFTsW3A1XuRHv1Qg4cDE7ZG11mWvv6ltCEq9QI4F7xg1SJp1JTo6j3aDDDJamaq7a4KE6tF4zl6t/zMNiznzUU/QNG7t5MFKyQk3B2KucVfXSaYGkjS3hMvDinriWWnrdR7odSw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNQ4PozA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNQ4PozA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6FAC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736750753;
	bh=M3BI3OEoqUluqTH/BcQSOupJRxTht13i8RJlEqy0PYY=;
	h=To:Subject:From:Date:From;
	b=bNQ4PozAYppKNtRfFTUAvrP9HR1ZpkEKAT+CX9Uk7Bxq2fwpXyM/Z0QzSlgdOD+3h
	 Y0hK17v4ofhhTctKN/M72YwE0SjcBnuYdKXQ9PeVeHR6xdBbHCkASwKu4+4yF9jcht
	 1H7rKXnG6SBVPl1RvhcYviTm5LhdiF1pkKkHmb1WlWn2IaBi+M6cRr8VdMYb1up5VZ
	 d4qcmX4hX/SxvK0MdOF95QHXDsdTD+ajyt+aRD0pFPJgU+XE8pLr2Jp7rkpoN7g6n1
	 66XfsCyQDFVNu9jJAIVLO8B+qSVXZ01qHGW5re5qYudsJBRjpWUnvHyESPRcl5tdwj
	 FO8hEXyRZaj3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A69EE7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173675075362.8409.8139279066170823058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8417abc64f1f903665917f23b9b652b82731e7b8819e38f737acd2578019852c
Date: Mon, 13 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736750753
