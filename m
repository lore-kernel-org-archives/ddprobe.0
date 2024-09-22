Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C2B26AC1
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727026554; cv=none; b=PXLe1RTatOVjooeB4JxuJD5mCvm6D7lcg07b63O3qoN38Bsnmhog9VBYpmMi7QtWPgeErO85z4tDfaHeakJLX/NdGYkh52VBDcVLntyrV3kuKu2wvrVf2swabqiK7cu9YBf40kteLi6ShKx+gRP3KPX49X6YjuDCgSG9G4k1XUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727026554; c=relaxed/simple;
	bh=Pr2uB9ANrRRw2tYaYJHdBXiZW9d5oY3Qvlt1mwox4lg=;
	h=To:Subject:From:Message-Id:Date; b=X7+N3SBugV7ytBayr1BYmotNrnAQd7RK63sGq/1Pnsuh00mVzplKD+/ZK0ok+hPa/QytwS9gbVhnIV+k4lFUeCEqGkYGqVaH9ExryfHTAzKR/Wiiy5dgkWkkHwNitW5zEsWaOto69gVgMJt7lQ/5dN6tOI82zS26DslkubDSkpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsnxqUMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsnxqUMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7183C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727026553;
	bh=Pr2uB9ANrRRw2tYaYJHdBXiZW9d5oY3Qvlt1mwox4lg=;
	h=To:Subject:From:Date:From;
	b=SsnxqUMaWqXPQ0SDPibDqJc/1a2pP6Nw6JdtCyj1t45DMZ2LZLMDf6WUOya4yjai4
	 9Znmh6bJrQNX1N0hyzE+XuqGQQ9rFaFDsZ2BibDPWFd045ARLbLM9/YTJbeJP4mzli
	 Rw0QexBAw6FRYrsZc3RzUZsNwheGl2d9VmHn68g04LsckgoN7BYBp5HHQPLmOgqLr4
	 9Y88kJtx+Cs3YubQ2udxV/JWWoJGkpVHu0VrksKZSyT9USEhPnZNm9oPbGOcUp7Rsh
	 c+5Zoi15l+LYAJDd95FwRbcAREs6H8KDzOQWdQdQN0IuhpIH6JlCsAWfMIwVG8adDz
	 eXtzqhs582I+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BA9CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172702655359.6162.15423913701982683621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3edc50e629bedc8624bd950610a2c829455814a1fe78605b6f78c3b9b3f000
Date: Sun, 22 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727026553
