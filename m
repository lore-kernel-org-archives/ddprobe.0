Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4105726AD0
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727029554; cv=none; b=a9orK73PB4UQwL+ykSySxoQb1fSwAx64W5TpRZ63ULZ9I7GYraaEJFS36f5OCYiPt5hXhwk3mDZMlcBJ4wXD+O8+hJLfq0W/EabkFKgPazDN3fhhWBlscIANl7D25c/bA37MgwcAZLR8GvZbeCkQ48zDAY/tFM+JU2yk1Z/Z9Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727029554; c=relaxed/simple;
	bh=GlUKjiAcs/iuiVhrlO8cQ/7I/9q/NXIHOv817vbe5SY=;
	h=To:Subject:From:Message-Id:Date; b=iBOMcwrfhc8CeT6FxVl3EWjwf40aF8aQUncxE0pNPwu22/KTUU/qm0uvSnPAse/H2G7teRnaK+YA09mzvGaLzqNewhh2pb/JKd2x1fUE1y42H8W0h5OZ9ciYCjzTYgkDZMw2eSfXFmMy2Zcmx1QK8f2s07PO1+kLfIzWESS8New=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kofw++tA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kofw++tA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65B0C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727029553;
	bh=GlUKjiAcs/iuiVhrlO8cQ/7I/9q/NXIHOv817vbe5SY=;
	h=To:Subject:From:Date:From;
	b=Kofw++tAciwF1zv81OHialjeNpGLYdTWfkvBGFy0LFm1owQZUQUd5Kiz/1odgwRLN
	 86KkdYEOJ35rju9XJEu/lcljy8XeYt1dhFOJGl2khZpQdhKH4l0aOfhUv7K4TMz6Ac
	 1/YBJRDXo2mtFf8iZvB8+l56ZM8e8IzCdng7QquBLQUVRpVChKqIEGSkdF/vJIc9vJ
	 Sjg0QlfuRB8xK7pr4sGD7JD8yUDGy6D8tC2VyqlqKm29dq/DbH2ygIHCtJ/O+g+RcR
	 YynOHvj/3ZeZOAPLUJEGf5Oh1aLXTUdaCJQ+5BkaVZ8Lr1IYrguqMFfvDG6kQhxBYz
	 IxIbzQJJjIEWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F35CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172702955362.27623.8700037771810061806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe4684aaca650ee48da62566cb604d7fa62ccb2f72afde3c1b9346ee571d5fe
Date: Sun, 22 Sep 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727029553
