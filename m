Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D8133E1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738382754; cv=none; b=nwUzGqR4tmFtBfVKR/qn8DqLGeGov4B2JMZAn7jw7Pa+sbgVsJfK68AFeur6yztxOuL9URuPmg4YYbMmg9DUHhamOAiHbwr227L3zhM+kckGFZMgF6S+9/6Qg5t7J1mVj+fX3o9ZpKHrDIDNrJ8vWKNtAKlYKUhw4xN3K14dZkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738382754; c=relaxed/simple;
	bh=nsPchcNupvESK9imJsAX/FK01WQ42MOHthNw4yOZzfI=;
	h=To:Subject:From:Message-Id:Date; b=tN2yXE1p68LD4GVt3yGLYXb4zps8mJImb07uBHt7jwxru9VCIsIRvDg76UagWEmUoTBg4Zi4ox0XZTUO9xOhIYb8oTewW5s0Jgu5W25gc6YAZ4cPYv08CQ/Nf+8Uw1Yqw+rhQLXskjxdPfTs87Lx2WV+MDdKMIl6hZiaAtN+tiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+WPrNYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+WPrNYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B35C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738382753;
	bh=nsPchcNupvESK9imJsAX/FK01WQ42MOHthNw4yOZzfI=;
	h=To:Subject:From:Date:From;
	b=j+WPrNYJG5LZCZrbD63IQvK2lkc8/GVDKgNB35H7Do9Me7vPOY/LOj6e/KtO0v+OO
	 n7Vm9oEOACilEFvafBRJ+/AJ+xHwsUIWgkYtp8RREZKRgfchVvQItUHDwHBNNFuXxC
	 B1Hj7yzZg9Js9+bwJUTThX66rwcZCkOmir/lvbazSlLTEt3w3ekKa/K2y/t4RcLphW
	 2J27PbdHdLYne3YQ/KaFu7BkhS8RU+vtI3GQcn3AHhghtJEb0n+tfXKkigvTYxPAjn
	 vAvQ9HF3Sgwj86bhBuFuAb9nad56xjLaqZRWgIwijU4oE6LmMNsuw3Dz8fZPlT0W1K
	 EnwGlFylrC2Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A367CC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173838275363.23355.15556250958965118993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb65ed4a1876f80cfd46a84bccc5f591fe6db4baecd1dcb3fae1e6c1aa9e2f8e
Date: Sat, 01 Feb 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738382753
