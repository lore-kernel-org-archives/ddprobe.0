Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E965B2C15AE
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765509775; cv=none; b=Z/VyhCxsw/9VqsflRfsvxlL0anMd2YvW11M71OW2UtM1FQuauEPtSbDv5cdcw9sVUIQCFHJdbltbfMGYGMv2PvxbkFyeh4u9+Z6iXuLxuueJGUxEa61QYO2kREDGs0rYeJSg3LvvL47GLu8LYi1wDYc/ANb599ajGStbSMqhdJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765509775; c=relaxed/simple;
	bh=ow1QgDWuHWRQBMil0ike6QN3746afjqyQcEKf0u7kq4=;
	h=To:Subject:From:Message-Id:Date; b=gAxqKkem9bkEsk2GD+9o0HYwxMHXgT4+ek4LR2TIkuYxqhksrLfhx/aeTYx0wut0oJHDUuP3dERnnMVx0wx/4IG3Ngcl1w8rIb/aWlMLTgX6lEQ95/baGFIG3zeZ7QyrHGwvH6CPLtc7tzani95s6Xaxcj+qONG8bLJSyimk4x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCxrIizG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCxrIizG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82DFC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765509773;
	bh=ow1QgDWuHWRQBMil0ike6QN3746afjqyQcEKf0u7kq4=;
	h=To:Subject:From:Date:From;
	b=BCxrIizGg1X/0Q4WhcqM1Uk512iMiC6cLjPj0av6SfGCy9BdT0YWOGylSvh/U5aMd
	 Vf+XUP1ioR+6FaG799aPup0+i7aCsqRRCO+ApMvsOyko7955EpU/IBwR3G1F105/UD
	 1duk/TQ9YdX8VERCq4wZ5VzeQG0IElpM0wSKY37HMJNDh/iKHzq91UHj/WwlOvMLqK
	 J4PLQxw+hgqj48orHeIDv/6ubJtTrmnFGbVcK3D2mlyXZI6gl3jnP/seu9E7bLw5Mr
	 J/Tk0eZbJWQ4cWEGj2SPia/okE83K+/wj83kZ7NQH5vzuj331zyDXWLDFcGFY8aOgi
	 aKqxALHJsGJ5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B74D3B7E2
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550977360.29164.4141622691326166744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f39ccf5a08ebe1b11f81032eb7be663e9e65d1feebe9f54e1388babb12c9c99
Date: Fri, 12 Dec 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765509773
