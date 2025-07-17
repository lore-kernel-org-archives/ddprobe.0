Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11868202996
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752745194; cv=none; b=OzayLNvx5zvrJwIvnfjIQjPysSNsbKJVY2z5lBIyyVE4cqBuVfPhsk2UdlicZSfiObwpWyns3+j+kycWKhcGRJ38VX8p7V+b83fRQ+Xu0iwIgrKmp5nCrH518aKN0/X5eAJ9LxWOAu5Ren6cMWgukCw1LRB7SvXLp2UbQd0QRSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752745194; c=relaxed/simple;
	bh=sOxtHGKKdOLxUxcfjuHvicXvH11vVOxHokFG9i9WjUU=;
	h=To:Subject:From:Message-Id:Date; b=PVurfFQ96g71zVFpNaK0fIOgXVgajTtz1GE0LS7Nr2l2IKJ2QewgGh8/zJaNuBcMW0vckW4aew5A+o/QfiwJAC6uZciPXgzOurZbu6QHY6FZtixixR6LLhziwyz+qzRB7Eg21lIAjILGINR8gXXbjjq+RGruoR2dU4n2g86b0y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7wR52fT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7wR52fT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 978C3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752745193;
	bh=sOxtHGKKdOLxUxcfjuHvicXvH11vVOxHokFG9i9WjUU=;
	h=To:Subject:From:Date:From;
	b=Z7wR52fTQJut+LKmlquY8Ko8MfVt+qssfG6W3GhU02FsMiDuaSMlz3SMjaWEDME4f
	 53X/jc88R4RY+giJ+2G2GeOsDCJvccbmD7bGzIGu2I/nK1EPWx4A9/FccOsWxFhBwj
	 gCsg6R6yMQt7r6GJFxBwk4tRLxmcp1bb7S9scQ4W8j1DFvN2GZGggOZNrvYPq7+jwV
	 s/FnXVWQK6hH+2RUQ7xbOJ2gLYnKkhdUmZ9HwvOyAQQjKO9sfl10sjbuHnusGAOeNd
	 fqWQm3WGzu2vRB+fRabLeF+jUSoxGMmg3jT61t+/c03G8fsU9k++edkI9xGr5YBGri
	 BvGNlHK70JK7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD35C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274519358.30536.5628422398627421121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a868d3211ec65fc39db862a05f51f8af904e54ccca257d3a370db6aa5dc5c52
Date: Thu, 17 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752745193
