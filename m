Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8F431770B
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766993034; cv=none; b=ra7jXKNziFYXvIHpCI8ZYpDeNPnPyA9+CKFHuX8DbI0KUL2dJX2m5NIdnDhln0UNdgaaNJfs/LO297F2RHOFRO1WXRqrTlTmu0rS+hNtX/LDDm5xtIiVKZZ9pRXEhEiBceSldPpT4DHUlx7N/l6DozjU8rX4Vtzwtw7Cc6HO1rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766993034; c=relaxed/simple;
	bh=isjKEobvT38PnhhIxxuyyGMw3CQAhEvPs7qkx38HS9M=;
	h=To:Subject:From:Message-Id:Date; b=WMZ1wklrxpyEptWoUkB6uX3VcsaJk/6jvp/W5u1vf13f4FRbwJXbPy3tJ7ScppAkcPUwDlA7XWk01c/fTnBggqM+KqMNLIUIDdwVualUHTZFbzMhYnmJRl4PZcxkLfuYk83IS5XU1jJssqSomAB3cLnPYBo4Lc6Hef+vdVVXpcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3xeGEM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3xeGEM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB63FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766993033;
	bh=isjKEobvT38PnhhIxxuyyGMw3CQAhEvPs7qkx38HS9M=;
	h=To:Subject:From:Date:From;
	b=u3xeGEM3nKzTveYMOL+n7aTBBVU523n97iuhkFJ7kLePy8yMY0NqMolkAyK1dmoaf
	 JXC5wSG2gR5LrTqWUfOA8DwwMeom7JX+/NLSEPhY7+wFF/m9N3aEgGyUXBX2Jvy5V9
	 PEyA1YIJkE7kxn4Ur4r9MxW7IHLp4DKwPbl9uAVwFW9HLErJoMqdWgkGa+1vZtfsW8
	 504WoYP/8TIZVF4oIDER48AMAqBbMwLxlPb5N2PDleG2vGxUd4ZlOZWvPM0RvHubRs
	 Ed7XDqvSlfwIfnvkWG0PC8kxZLOnYHZXKLHceebsX9BF3bTDMrpLhV/hT2LbXB4pzJ
	 AC/6hNCGDhEsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CADE8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699303358.25631.15058726427947973643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f68a6611ff86550612b9845f9e0bc7c4c459144cbb25f6566379388046330b2
Date: Mon, 29 Dec 2025 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766993033
