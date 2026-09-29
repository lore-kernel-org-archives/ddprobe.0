Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F2D3BC680
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790722234; cv=none; b=R9886Ei3w70JxeQY/8zXzWCtWZlzM8OAryhF910sLC73wQ7Q7mf69bzKVipZBS8Yb4sq4L1crI7VF0AUOhKJhBXv+daw679BCzGDR3NkKczapreqa7U+lMOFSHXu8PVpmjsHGkKhTZkwrfi0T1QkAZwFsA7ay7SvQ4ADGL0EZgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790722234; c=relaxed/simple;
	bh=viXwIVWP+j81uDl5ayajd0kyA9Sy1PkxJs66cSGX+SI=;
	h=To:Subject:From:Message-Id:Date; b=uarP1bCgU536DtxiOZsU3igevRv15lGxddqMXGXtKhAt33L982HWdj91kNxREFpqUMttIeLRQyUa8akYfjj4FW0kZNdIBLy3DlhWHG4b8LVjLzidaL00XpErvBeeyfY6du74iY7W9k/54kdh8npyeOqjrA6uxBUupgpcyv/eE9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvFEdW9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvFEdW9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1BEC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790722233;
	bh=viXwIVWP+j81uDl5ayajd0kyA9Sy1PkxJs66cSGX+SI=;
	h=To:Subject:From:Date:From;
	b=CvFEdW9KfzmYNgTVQmy2L9mJhxIkbu5ub8gLnJMT5lvDVNBDWmHOsQoWKoJ6Z5U2U
	 yds52kOWqamnT7pf4K+jt/dRDR/9QfQAZ923SSP9IjR43iYYJDZP0fFX2fsBBGFeAJ
	 8TpB+MD0BE3l+FYOuwQsqRJwtGRwlvDENZ14C/OmScaP9KUZFf7EVcZY8AqkJdgfkb
	 LOX7CKVL+NbUTy2Z69A0OIM/Ox4KOrsTcZWntrMozjqFRuhK54YX1eTrfDlblzT4/7
	 PH16rIybtpM5y0c0naCg/0y7skvGejTPeyd2b5WuNiICoRM7avAbW5oGX4Ka2GZaRw
	 Z630m/k0vi3lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC893CA5FB3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179072223368.24711.9484831993895240060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 955cf455c9cbb2dd3e4c58a7ebaaf577dfe9a69760946d0e98d6e6c9d205a0d0
Date: Tue, 29 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790722233
