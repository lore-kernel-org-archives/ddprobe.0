Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF9CCA6B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786168834; cv=none; b=WPTei0Y2J88sok8bTaQ+Z1UcloNgbJAlh3dBKl9N9QdMxDKcYWGYZk6JDMUQVN4zSlOWvLj+AnyENQBk6RPQqJIW3ko7VpiNUEpN6ZnnefnBtmb6YABlMx5HtjAzS45u03Ej/AaweAFlGJMi+mX775daG8ytRz644w1QFBbx/b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786168834; c=relaxed/simple;
	bh=lTccC1+exI6XOyVJosJCIQFevU3jLVxnv5s8wD/9oQM=;
	h=To:Subject:From:Message-Id:Date; b=CXWRrJRa7UBcbdU3sJQpYGSsZIiQGqHsShcF0cTQdSY4KnyYmYWYhenpt+rkkPnQfO88717xUoAyvFuzLMkzD+KqU3Nx0T4ZxVJicLC2JdeWEMbZqe9n0SxhB8niNKh6l47KGpoVzfx/7FAdv8VaxpOQYfKbqBtSqcjF4U0XMlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aG5qZi0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aG5qZi0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA556C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786168833;
	bh=lTccC1+exI6XOyVJosJCIQFevU3jLVxnv5s8wD/9oQM=;
	h=To:Subject:From:Date:From;
	b=aG5qZi0buAnmgCYjEg4PIJAQePFaW27VoiYa6JXarg4rWzMx7MWXdMbakyn0IZlGx
	 pb9rIFgYeqErkpoAW7wpqmgpTJfzyFjpORsJ/3tD+NwB+But1UoN6AH+Ir8PdhhqEn
	 WkeI+qq3lU4b1jwjvQZGPtGhqP5o1OiC/frRGz5FmmtSC9eTMm8oe63MoIUiyn5ycK
	 x1oEA97N4Pt0zGJit2Ml36KG8PUws6ukYClgS537zBrKF9Witwins10Uij8vHwXzLF
	 7IaSmOf0li0mYurWnDBZoCpkMtcwi/SAMjGxxxewen/dufHHVyaf9j9HiB3dcLuRZd
	 5S+8iHmijjxOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B143AC55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178616883369.3531.2648446486684061448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ebdbec8d992624fde23e9a1dec4632b665b50917bc366e715cca2c0c07bfd9d
Date: Sat, 08 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786168833
