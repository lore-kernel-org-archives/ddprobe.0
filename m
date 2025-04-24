Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4C41DE2BF
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745476794; cv=none; b=ZYUk2zitJmBLx3APli6vsrNHCJCL/AamneAX+SLqt+9//bt6ixw6CojK1KDTRdE98FwwYfJqq4theWhdA+VZMai3fLH94FR4VVVlvdKuWOxAdQUclU56AM9FMIOTwUxlKNLb4t1qLsLho+GC5EjQ0AVkCTglwEEJJl1z1Juff54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745476794; c=relaxed/simple;
	bh=aez1kjXGYkmUWmidQNGFV7dz2Lf37QR7qqlHfwhGy+Y=;
	h=To:Subject:From:Message-Id:Date; b=GBh3yJKGY0pEpkS4mkhtZy1ts3EMQUFURUyE1tOUWQxJToSiIDZ3ZTFC8QDNJi+FUzl3PF6hlNP2n+BocL08m5FQTwMwZWm6O0g76wtVsusI1/DzOLg8pOSDh76DSuPWG0Zah8r+gNFl9l4eOnMmmURES9xqeEf9ZL2ww8HtZiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lmtd9L78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lmtd9L78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE56C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745476793;
	bh=aez1kjXGYkmUWmidQNGFV7dz2Lf37QR7qqlHfwhGy+Y=;
	h=To:Subject:From:Date:From;
	b=Lmtd9L78DmWA30zjeM1DiEm4jHyeLXvpaKXyNbe0OvrteYcvWb2W9eCTbdfpGq8+U
	 fWJ7cAVev4LKF13YzjSdgQxwnFxwyk+uNH0cEepC8o2poPBK1tRFNRxbttQ7am+yvc
	 ybO6mqHvjQu+qxNzrc3QjL5BoeKqyI788zZ856kzDoWd8J9OLUYTZNl/Uon4YHZrvD
	 DrkG40+F8d96cfsNtWHO4h9Ss6MI+qNW7VdiQyhrU9iOpcSuQP+nG0HZbbCb0nAp8k
	 jhkBjyYCvRuFC0qkow6FFrX4S1hwikKewDweVjsAoPiUkTQNvRuylbzmgSOHOLpFa1
	 gRbsogD8hIDaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E649C369D5
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174547679357.30546.15776724098827447196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f6728c648780e9e78b29769e01010f13a020090092d6932214ed2fbb157a5b3
Date: Thu, 24 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745476793
