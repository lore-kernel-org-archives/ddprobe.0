Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4306210942
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748397594; cv=none; b=ExppOksrjEzI3ioHypYXWG41aUudINlzIJ1moVEcdNSN+xls6KZtT4dFWxGxPPQpRy9RIn01k+rzW4O0fqAGlBQxRP338Dm7gyHdP7/cGxZZvHnxIj7fo6PiPafFuOkepdEzQHO1IjLPjASdgP5Gd004oif+uWtVUAs0uZC52fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748397594; c=relaxed/simple;
	bh=AeSJbW9m/X1GCvzxztI9SrncQF8CHm8164+1Xb1tfl0=;
	h=To:Subject:From:Message-Id:Date; b=dkzPt3Sagsmf5QjwZoMBx2GwRE0WpW8T2VF5ZMOtnpDYiMCg4JGDhSgV8x7z5xeVLRoUr/XEw3PNzzkPw00i769CbWMVRUfSq+4jFBGSb5AU5uY6Bp7o7Ukzz+QQFBYCD/R5j7Ryw7rOt3sKvPQzad+VzrTcwKajYlPnutjWMlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIt6ZIOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIt6ZIOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1243C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748397593;
	bh=AeSJbW9m/X1GCvzxztI9SrncQF8CHm8164+1Xb1tfl0=;
	h=To:Subject:From:Date:From;
	b=mIt6ZIOIXg2QHHdesdH34JpyiHDM4y6cWlUMvoR0UWiXYNwuPHJPsdbywihQuMqx8
	 sxUJVtSNzm7M1qQ13P12QUdFMJm2CN4MIXoeGbXXP+JiImBGucNo8ElnMOcDZPDdEa
	 73FJNrw/Cif6Xkr8Ovs95DNc+LIAeMCuPwSwIEdbHmqvQV0O+tEtgtUgCYn32s4h78
	 fUs6Nxv3+RA8cOs/A5b4abA2qltv4ZNJqdOZrk0KJV9hwK6OlzWJutv4z2/6Wreqc3
	 Gjem9ktnFT8LPI3enYuUbJDXTGDpL9qPLnDlob/qbQWyedR/js8GYr7s7KhiRgX4bX
	 myRiJgjUtY9YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90404C54ED1
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174839759358.25087.6634523463444146308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6957c4d9b342407c6c0e86102566ee24a2f1022efcc1c9c22a9bc9386b03f5da
Date: Wed, 28 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748397593
