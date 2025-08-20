Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06346FBF
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755727793; cv=none; b=CM4xg3M2cG+CGtqKciMGQteTUIpo+xEOFfjSPtBB/hP+/974/kCmwVafaHETBaAnYMM3IeYXLyrcvKQREegLxNzZ4X5pFIh54HYo9BtQsAQ3H0d9xs446oBOc0jwIsiIZGCdFB7zwCUxfTo5fa7NOhKMjBy+BYkPLIzh7Ou7b4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755727793; c=relaxed/simple;
	bh=M6Xcf+BssZOjAGCzvr1nw9pNApJz77PmAN0ju9XOV0w=;
	h=To:Subject:From:Message-Id:Date; b=Gmj6bKbVDDWJ2P7SR4d0SQn7EItx0VEBcWfKSA37Mzu8QKOd4T0yaTrHL5lICKPaK7KO5LaSq/G3pjSWqlGWmB0BntgnxpSwmqjDYQGH16N9bvguYOB+LmY3/Uor9sxa43yNt1F3GCgbAsGIPxG4nGQI3vkQ94kpMrDbgz9Fm9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5blFLtc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5blFLtc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF78C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755727793;
	bh=M6Xcf+BssZOjAGCzvr1nw9pNApJz77PmAN0ju9XOV0w=;
	h=To:Subject:From:Date:From;
	b=j5blFLtclWymfbfGyiGksgZ5n7VTP2nAmyXcmPRGK+iCdCq5H++Ty8qLarXksbyVi
	 7+bUh/byA0PZElx54YpSnj0dCPqImVvQtKIIWkW1E5DatYMcXFMIh+IXQanuBlSR4Q
	 XisRJcfMTYQVpQuOeHcOhr9w4/4p48jHBSIZvRHUvrF2QgYig7SKBLfMsQuC+YRQgp
	 ZIJfeSHUNKaj0VZtCeE1Y+1Y9fx8y5grCkfoxI3iojuaHLf7wqEMNEgrlk8hREpjFz
	 vkGQ1OdmIhSm3qD5XBFfB0xYwWQyg6CWX9yWaE05cnGxGfwsu/lD4L+eAkrgk+tRgQ
	 W/JjrmbEmtPnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8ECCA0EF8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175572779357.14256.12462242518424507220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e1d7f60efeb2f0f5da591770819e100e2aca031a6bab942bd87c94f0652b4c8
Date: Wed, 20 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755727793
