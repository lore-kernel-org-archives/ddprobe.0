Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C7216C86C
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 16:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720714043; cv=none; b=shNjFRvbWToAczNmOJKf8lSMR+ot6tFbGtsWkgGrqzJIKtuF3K2oyuDwH7ffl/51WHMkHJbF6nfjyhnyYl3WyDoCzN1VNhMwaUsx21DSEySXDJaGvkjYLA00bLqyAcmNcIpilPh6ftYQdSlN0KENcK4TuEzoYNlVfG/jsuaJF+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720714043; c=relaxed/simple;
	bh=srf+Q9JuwIxKI73rgN3G2O5t2uXr4bHIn/tcmtZUDl4=;
	h=To:Subject:From:Message-Id:Date; b=Qj9tqf/rrTcAPFe1RnZw9fOMSnXUfwN90nEPITXgsr1qx32soi3q5fyRvJa1BFyvplkXEn9+zpXChyLTPTCgNnMPbB4AQLkfzUcnUbSNDR6rs/e9cVA1jmxfHo2a1VZvb8AVYslwu5uIJsL4Ik9W5tTHBSO3F7WM+fCh2GQRQm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPKb6ygi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPKb6ygi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0681C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 16:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720714042;
	bh=srf+Q9JuwIxKI73rgN3G2O5t2uXr4bHIn/tcmtZUDl4=;
	h=To:Subject:From:Date:From;
	b=ZPKb6ygidj3yJ5ujOrCXFFLu4mZoZZ8gCwpT1kUnZA93ocqzmOwqoEJEr4Tre4HyJ
	 QNA2yDiMBadqSzcHQdN+CF2xyu4BcHYJi7/vErF02N7g63rvmkR5AykPVBDczbM8Ic
	 ORyIHjZEM93ugKb1F6eDjdVzjJVBbNWD3aMtrJf4bVIuS/iEf+I9blrufEFwdz5Jzt
	 2VmmvAQ6AsP2VhE4qVy0tPCzYU8rC0PUb6OzkqO1e0rruehUrH3vJcHHl7AzJwtWRe
	 bgvQNtEYK3dnEEoDkAdoO+3kJDIU+3nRp+dsplhRpxpIXCUe8VMzT4DjyXq6jVRmSs
	 5zxni9silUqrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDDB3C3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 16:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172071404279.15914.6905837166356433353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf9f03a35a04bb2cc8e49d07385fa17e363ae67a181397c6eb3db7ead4b497a
Date: Thu, 11 Jul 2024 16:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720714042
