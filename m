Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B58F361977
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784883034; cv=none; b=s/BzR15kIpBAP8vRI62udLVLdfp+fAds8Usvg9utdVLmtSYPe1+vEwuxwQpqcKj9WfxFeMyfx5gKo+wSLoiHcXAEuJfdcRJOtGcgRK+9jELfmxBAlE2zVcu3BxQ7ZG4md9yhaN4nl+T8+2glVgl0f9lEkIgXO4LKY6r/ATFdNM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784883034; c=relaxed/simple;
	bh=TrhR74o+6/XkgfcSTGmVb31B4mPrT/YnBcuMWaLM8Rw=;
	h=To:Subject:From:Message-Id:Date; b=r6524m5m6YKGtrwkGgNvegIczLWj/BC1GRzorphzgZ+euO+tVx7KIN0nnJBpNYJjQVMIbGNvIYBeg9ovvWU3czhT1jy/cYRKEtzPToKB3C0OF2Dwrg6Rn0wn4b8l39G4aN8uaq3iKsoIWJv4bVwpcPwlk/Y/3o/s7taYmNxPRh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4on8pqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4on8pqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB92C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784883033;
	bh=TrhR74o+6/XkgfcSTGmVb31B4mPrT/YnBcuMWaLM8Rw=;
	h=To:Subject:From:Date:From;
	b=L4on8pqNfcGSCbYzvdXSGiOoV0rapKOmkaj26U42DDKy+HRiCK0OJo9Lzfgw7hN6c
	 eoXPTt6ceY2IvJYzBjL9Y0DElET5TO5NUxqKEuSqRcsE9YpXDVHCjit0hUQPv3N289
	 gM1fBKdsH3mhKlVX7brcc0FjbGmzJGJYTtDWVUmpirOL+6hRANFrhJ8Wxq9ap4t7Lf
	 SXePqIQj+FBik2f5DcrsozU7rMfHSaBk6Ni/c9CB2ez5ZVWiNyiJkjqwA0dxhHf0w1
	 cZn9hlgRrypEmUD7YWw80hINlGxk94uNUA4PtS3DDFKtpCbbZMyTRQX7FEUZMC2Ldo
	 Tc1eLOZ979yIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D86C531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488303372.12279.15175354600039647339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd162bb3f79f97877d7f00b91a3c4199c23298556ff5e8e3ead477adaa65e20a
Date: Fri, 24 Jul 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784883033
