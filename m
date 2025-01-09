Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31CF10A3E
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736409953; cv=none; b=rEGopeiJjV2W+7p0rdN2F+FDS2xiGmIk5Ofj2tQcrDo8DQaYqXpss++O7zmSQtyVGJx5v/JQrMU+UV85ePUmo2hWqVDHPwGQdrbKpJccXCTgmKCmXJDqgVW7X7ZmK1jdWKnNz08Nx46hOn4uuEtMHdQGKm93J0rqNBU1+oPGrgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736409953; c=relaxed/simple;
	bh=9SID+l5MHiEsoICevPCQJcP7Wh4yqnyj4JzslLhuKEY=;
	h=To:Subject:From:Message-Id:Date; b=AAsfPP8DiygptK8OEBizSjYWouA9ppK3LOL3Mt+TVBJu4wMhmnY3BKF1GEUuPxGPoyZQuE/w3Ratkh5SAz0kOsJoOOtDBmGoK2OI9i8WmezRHO0g+R6UaLX8HIPermDiSN9prCJm0BW6YgZMgWNQ/Uw+WLX707+ykpUPCkDJUpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdjmQZyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdjmQZyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A886BC4CEE1
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736409953;
	bh=9SID+l5MHiEsoICevPCQJcP7Wh4yqnyj4JzslLhuKEY=;
	h=To:Subject:From:Date:From;
	b=hdjmQZyYW3Hd8C9tzGWwLf5Xlhd2E8XU1nyZyg/iy2rgof4sBlQ/sqD24kTOPMzwt
	 zT/LI8BOrlsY1Zje2lzXdCvTqZev+0vrE0QAKZ4Iamt0lZaNeWt+I51IIbdirxyZys
	 b24oSN2k2uK2TCkx17ZJlmAZyYaIJOGaCMxkwVIUOR/Z/2L/sQ5lg+QRBjQf81ULdv
	 dpo5gGZaglUOkdIIV+JSHeuSmTIAyYMTip8epA5BmVXGKY5YgEXppf4P1AFFhymavG
	 J+Frs/l8HqEWpc9fYOSrwf2iB3s0NZApNcYMszgZ/qop7IhLkAKLJaVlgiaAHYucU1
	 vMHqZFCl3nVRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937A8E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173640995359.480.6465140374881973313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256ac31af0c37dc76666e5248e3fe395cf5652ebe5edee04bdb2e94464ee9e65
Date: Thu, 09 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736409953
