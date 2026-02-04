Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD77B665
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770248034; cv=none; b=c7D5bwP0qzz8ZyooHuxNeatCwh18CwLmPDuxV1Yv4RO9K29LmR7Mn9IQc9R3LpxcYF6wXEYCS89JNcH/KHv3LTVVzkuK4t+/BX6XScUkpNtdS/T3gsarzRYpslzgueIx+LnAZtNiwTUUD5k9UiQXQmWZ+42AKs3iYJkEltMwrvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770248034; c=relaxed/simple;
	bh=wqS0Qe83sDz9j0eYLZdicqMk6Hx7p6sf4R27v1AVuMk=;
	h=To:Subject:From:Message-Id:Date; b=Z4H8od9Y/12smz7aEjl3mcfkrr46f7gvXIJGLT606JfMaSz46mvhoire+YjJJ8HBC/bL7XkNPVRksk5LfiurJgaFolNbjGdJIF0VHuerkLBcQZdwyTtwOkBbO2GGa5NdxQW/rOwJYcebgQA725av+KBKITgPoCcYyx8UIppX4ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiYUET3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiYUET3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2EDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770248033;
	bh=wqS0Qe83sDz9j0eYLZdicqMk6Hx7p6sf4R27v1AVuMk=;
	h=To:Subject:From:Date:From;
	b=AiYUET3te6dHpV21pJ0szRZCC8qwdYZjr6IpgfJNcM1lToJjm0eUDw0LGUa6iPoHD
	 o0ASk7+RkA0EVzIdNH0fROoJBfmbim0bbI4MTNj/m1zmmbBML08rOZXYIUAPMmdQRE
	 ybd6z887iVK9zqFz0b8GG8Ch1P1we/9CjbD6/hlmjZ1VwsIzDoYZ2DXQ060puxvHof
	 sBdNh43Ybs0qlfaqNdxv7B/Maigr3A0l+sLTdqUUfSFjgHzLffqDjRxsgoW3L9KzIi
	 Wbn3NSL3FeYPsn/O8HH2lOhbDHhaa2V7Hp8hvexKHk92R7gB+bLmun4COUaX1saCQ1
	 8Lw5EbIu6sdyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C901EA794A
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024803361.4010.3684365736645372208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfaa10e4de187a4cbe5bb8ecfb4c42536ef9b1553c49af91099ca5678ab579d2
Date: Wed, 04 Feb 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770248033
