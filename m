Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4068528EF
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729310754; cv=none; b=m9V7/QWg4bj/a0cK1YK9t6mCy6Zc/KrPyoiUn1oTndm45nhPZtIEe91+gbTYujY0kur2508tRnfqdH1rt9ZsSM7CvjINPnVHrI9YhY7mCNFJyTK3uJxoMR0R+l14uHzNqjolCo+iaiaGXJvH+ErZ71UczTJXd+DGejSfIG0j+yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729310754; c=relaxed/simple;
	bh=o/3NcV8JLAk40M91xvNb//7VdTDQsllWmkkJZHupmd0=;
	h=To:Subject:From:Message-Id:Date; b=H9kgR0QxCLkwPsFQ/ZZOl1jz3xfDouH8pxKB3hzV00qN+mE1kTHdyLcwjxNoKfyihU3rT+ogsOmORZUI8Wh7WCreVkm/R6zzO/3dPnXrKQ4o4pyETgynQEYMeflrQ/NHbcEVUn8kgqG3gvxa2ApioGF6fRNEJXjQB8UigfC9pyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyUEznF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyUEznF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFA1C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729310753;
	bh=o/3NcV8JLAk40M91xvNb//7VdTDQsllWmkkJZHupmd0=;
	h=To:Subject:From:Date:From;
	b=nyUEznF63BEu5gMWD4LHvDC+/c5x5VbTpQHlipSbhsi8FjmgIQQv0JanCTrrTFwgV
	 x2eVPtGmnWtCxvGVSn3Zec6ke7uyeZcK/KW7EMYh+MgKhP9Y0liVDIUj4Bbr3l+2lf
	 xuf8kQWyKhkL/u+Rj/OYIT/MnAcj42vdJUO/HMPrVbfjqSXPvgafNSpwAKrHvLoGcs
	 5tZz5qlj2XatFq1GltT4W9VJbcla4P6Qi0dGLeuuKfh8aJ1Z84i4upVrwXNVUND6l2
	 fh4NwnhpCkwLIxRC8gUIoSobHQq+/8EM0i50mtuOr8rew7+XeqWhJlYA6K9+wRM/wY
	 0xYy+Rjn7loMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2374D3C547
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172931075363.31048.7258399304815251890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d04bb0f3cabaca7cd417395cc7a4da101a3d18789c2dccfd5ba7299b8cd38b2
Date: Sat, 19 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729310753
