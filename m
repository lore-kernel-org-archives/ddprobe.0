Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107E640DFCC
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773150294; cv=none; b=WNJEFPqOhvkZYvl43ugKvpwOYiy7/lH43KH5QUU5bdl3cWltfzJeqdtNc8d7pTJG28ppQkixzxBcUWsHKQdtvPAMe86xQFugtvFUDgWIuVaJVJOPTEsYg5mKcUzVeOBUWuaxmCK8tlyuo8A93jUQ3pW1fk+v26W1za+s2Sav/cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773150294; c=relaxed/simple;
	bh=naXjznedr8XC7BrnKrsvzvrZkhYlsBnBXgqzx3ao0/8=;
	h=To:Subject:From:Message-Id:Date; b=PEEZo1NIqhYa5t3gjXIVAT4nCEmcyYbE27HeA5zdUfZHVp5vOxOUTpHk0vFiqDO8xwjjm0YWYaTgXgddcaqtDhC/I9/un1YQrLjldLLkKX+E/VAgRjoPFuk9vDzoy18ax90JkZSURqlleyQrLsOTOK9mlNaTB7mDGeLgOpdn71w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7OzZrVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7OzZrVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08B6C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773150293;
	bh=naXjznedr8XC7BrnKrsvzvrZkhYlsBnBXgqzx3ao0/8=;
	h=To:Subject:From:Date:From;
	b=J7OzZrVd/vKIIAQj1WF3NwawDqKYolzqdhqW14l49y2aEvjUvMpatMNGFlr5z9HPI
	 w/VMqp7jQ6NO3kg4sQmKn+f7BRGpgMx2qZupW9GfBLT6ZQaOypODQ0x09KHIa1Ls2t
	 ItcWQ/VlS1nxK/Gq21uznw3NnZdgLxvGRbiD9nZa66fAD+SySIHFriZQlbQz7WCZua
	 dheBp/0SvmQ6T0wm1MWdVFQqm7mxP77L94NzlW9ZiCGdYgBSseyw63kIVM5ru++jiD
	 O8IE34gCytss2YYiMnQOO9cokCrwrMDcFWohz8LjMXV93hOuHcas9cVz0nWbWt2AEF
	 oWn7LossR8uzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBEBFD2D90
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315029358.16911.2749855624446770042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e72460d0fa1865290f9753759b6b416a4d0b9e19468300f65798bed6d0973ad
Date: Tue, 10 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773150293
