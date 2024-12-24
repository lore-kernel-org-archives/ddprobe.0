Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A047145B0C
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735019754; cv=none; b=ZwqQZhH5l98i6s031aWMsXE+6PhOV4MaAtWfbCJKSYVy2G0P/lRswVsWGHQ69Hg9EamtbJ6Q7VxJ0jqjrkM0vVKOJGysjQ7zUqRzyD90bIe8bmkIF436QD+Rse4+ajpO3ZwpHvSX4nJL0jcCXu5qM8AHfkPMXWu+ly76Bfgt6lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735019754; c=relaxed/simple;
	bh=OeIQyIYPEKtUAS7ucuHCtkvBbkQb4WaoKgoPUtUiyws=;
	h=To:Subject:From:Message-Id:Date; b=B1CKaZ5TLKzTvs2Zp7vmbcrg/HdInPHiP3rCFicoEZ+/KTPXWs6xU2jzS+dzL7bHQGK9DpjgwK9C5M4TmkAdAPNUTF4bCzDr0l7uWrNwoFY+SOwqMeCJjFjm7jCkp6U8UsXt259hkNBFVdiTz0eTtjtumw/KpSEOUU/b555EuDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heIaabSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heIaabSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6835C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735019753;
	bh=OeIQyIYPEKtUAS7ucuHCtkvBbkQb4WaoKgoPUtUiyws=;
	h=To:Subject:From:Date:From;
	b=heIaabSDuR1CEAoZFZKhOlbewvXZ+yoxriLAIayAmb8MNFazMXneEhvX1skJmBdbi
	 ucHLrIJKdN9wGHyHLoY4EGJxsH28ZSrXG62Vn4y+wknJhtxgEGjiYbdircERAIxIXi
	 /JPL5ZvFInjV4Mjwnqs9GtS4oaJxYOSiwJw/5yF1Y6Eo86Ju6kokKhFAi0E6sUKS+B
	 y6F5XibzVdb2Vj8tywBqIOQwmrUlIT7gXUZMoGqABXmR0qKYi1qXMWZQxsXJ61PdiB
	 a2AaL4BlsAui4ydPs+WDnTDhq36QltH72LGXLPT4347BX6Eq2W35N43EtlyJ4ZkGui
	 SufjsDfup/zpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E443E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173501975363.18673.15357689228225689019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d7ba2e1679a179c8c1f5d76b867793de194e7271666dc325a017c076214c1d
Date: Tue, 24 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735019753
