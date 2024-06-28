Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7DB28DBC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719552263; cv=none; b=GmVadsHN8Cip0fUavplGyTArQMEHDchZgfAo6tWmtgR9OdgbojoiqG5lYzhFhSTLEvBNhv9GsbEunZnNgdF3+tLKrOjORdoubYc8cPJi5vHGomUJbu8Bkv/VfE+5yslTYjyC76vdyNdItNT/yr8fZdWQ5hnyepd+8ZZJXhvdlBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719552263; c=relaxed/simple;
	bh=S9NkNx7eCxANcA4nCTvr5sq1b4Yan69dr52eMiF1nIk=;
	h=To:Subject:From:Message-Id:Date; b=W0WI/X8neFfPho25w6Tp8AAlFWTZoJntvPFF2/4BYcCvFVnJqSyWarTxPUrfzcR7PtjB+iah+CJJzk5MeFebom/u7aS2b4RyfOqNHfdSWiGbyaBFaVEdw/S9Yj9Dfx+l8S9WuKFdh/p7vaLVwXf5Knq3t3qAcy1hFBY/l99cRXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoNwQOi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoNwQOi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0FAEC32781
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719552262;
	bh=S9NkNx7eCxANcA4nCTvr5sq1b4Yan69dr52eMiF1nIk=;
	h=To:Subject:From:Date:From;
	b=QoNwQOi6DMyCZer8KlQdhFBiio41rWH5O53V4JVGeSnK7OAXipVyVdwLVtob1+3Hy
	 VltF7+WSYBhBSaV0zjFHgxuF378GO75qfb/3/Ltpv1Ny45YqZBuUCNcOUN1m7acn0a
	 ITr0+x8UIhyMISRNwyQELMEvWgLGtm1sE0ozAyuAj9jIOMQ3ZQCiZQ5Xiew8DfYfjm
	 3QQiuL0q0fpuOerpwu9+bj/sFr4Bp6kXghOrDbAEuSaC9j14/TSw7j2/aWQX8kA3Qg
	 r7H6XPgKW7J2yvZeerLlVKilR1/Mh/dT6IIm/SXAhoQJUqz/nPOO8pyZjaMEcl7CMY
	 H84tzZmrFYaMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D8EC2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171955226279.18054.13054207688280089205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa45bd53d8fdc3a4dceaa01171d722707cfcb95ef815e71bc5aaba783a82430a
Date: Fri, 28 Jun 2024 05:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719552262
