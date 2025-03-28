Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E4617A2E0
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743130194; cv=none; b=NI+5w+lboYG6kHUyBAnKZQMg9mR3feKmP7GFFppx3s4l5uDO5uuLx/d53VSK93gdfHnqODKGrm7le0+ANpfvG1AmFQeeO77VLEQMYQoQIuyuv5tv9GAaKgDdV5zSpNPRCIMyNunFlNwapyJgkL+y8norAglEbTNZrRU++27yofw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743130194; c=relaxed/simple;
	bh=TzJ8hzGpQpanZn4/urIsgku6bxaQ6jw/ybeO9+rn1SM=;
	h=To:Subject:From:Message-Id:Date; b=HL1VucuS5VxZI8YmXJGBu1glKp+KdYm7KovvK4IakVAjQ6WblKFl7cjLo07i5uINnjiVVNisgP0HAWRzxcs3QnBw7qg4eDq9WHbWyqGGEhQ99kZtW2feWy+0IofqAlaDvEn7cT5Pwwjl+yLBfu9hgTLjbFBsdx+RbornNlO8Rsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqjRROx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqjRROx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33FCC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743130193;
	bh=TzJ8hzGpQpanZn4/urIsgku6bxaQ6jw/ybeO9+rn1SM=;
	h=To:Subject:From:Date:From;
	b=qqjRROx6XXNGz9CDfWG59qHuErxSToIptsGAy9WGPn0RgpU+lJEFkZt71eNphU53H
	 PRjlMD/fFLtdn+fABa4ggZqPnFdTvGlidIjcMYeSd8N3C2UKMdO58F1EkGDtmbQfhT
	 LcTeQ3FGzfT7/9ro+Dsf8/fODYOQSkPRRBf3wmocyBfKcYnJDW3Zl3VnSl1TPV8o0N
	 IuUHeI5SCKWJkRtf74pLpZ4P0xhd4kOMmF98Uzw2A1o8K2abRe3CwUXhsEjSjA8ZxR
	 fK/NdaHUHiCCAAJD8W0vW7mcYmLIKxxoKSutcP2kMPogzzSlnQW4+6aLEHcZZh1Ngl
	 NYYs7sNr5/sKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F63C3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174313019359.30666.2554076954300294284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3d341d13fc0ee42945402589c4198a30a4f381b8466d28825b094d995b5ce4
Date: Fri, 28 Mar 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743130193
