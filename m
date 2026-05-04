Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C821EF09B
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777904854; cv=none; b=lv/t28pFvaqioICOZsJHGFughXskfvwo2/Rbd8vJFh0XgHhAn2EU0KDFMO37S0GVNzVjQ8bwj6GciIzyjJv/XiuMxlEA8zt+aoL708mwkmgj6u7DL27HY2cvjJsGCuCU+Yn0iwrXTnvzop5nSX5MVzKQinqYRLCC4mHtY/v7W+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777904854; c=relaxed/simple;
	bh=qZdZjaKq7cla5Sxpsa+nTrZppdtkspTN39aj4ZD77ac=;
	h=To:Subject:From:Message-Id:Date; b=KeAZI/i9DBopZPXNQ0HWwtZXHCbu+iuKQnSTAr7Li4VQ007LMgDD8rWhxHbZIAJRlPh+z5yB4dT7RSMsB+97+TFo10lDNahJ2wy48sobmmdpIcNnCGg+QjcqIdQt7SGy8+eUUsKzLwsZYUoneCCFYYOpWlPqXTkLnikRe62R9jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwzZkU6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwzZkU6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF2AC2BCC4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777904853;
	bh=qZdZjaKq7cla5Sxpsa+nTrZppdtkspTN39aj4ZD77ac=;
	h=To:Subject:From:Date:From;
	b=YwzZkU6BXhb5ifw1l3h33zqemEhKXVTkWCKDqMSvXVnqIYggMLheIXKmd/dGkhrgh
	 EGbRR7s87qO6KU/jGtjyP9fophmzHZxTqrQxwdWoCL7WaBhZBP8GDytfBGfp0Gv5tu
	 pJbQysGtUe0CWPOd++EIrjpY/XpIS8UtZ7rfa0/QEagGwdIHV9or4yDJ3i28CAILWA
	 Szol9I5DoTKnA8rYxXKf9w92X5FMo2cYo4SnAtzzLNotseHGSSvPIwb9JV2BbTPZVj
	 z80TabFbQnUjm7sT9MpZJ41okGcTTHt0kCf/DNI3I8EJzSn9zgOkmigGIQ+C+lp086
	 BeDPGMeJt8qkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B059ECD3430
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790485368.29766.7241764518544252920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1981dace22aa24c47cbf83db4a8414bfcfcb9ea25e1f507bd98ebca713e403c
Date: Mon, 04 May 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777904853
