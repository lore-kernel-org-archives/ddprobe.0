Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68743179A8
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716846863; cv=none; b=Hcla2WU1iDltbtD0OFipTSfG8BMg4yFvoROELtHEKFJ3HxXbT2P7huos+lzObeKUtxtVzXNPtWjAcetRWgHF3jpsrX34qVtAHVXIcIgPl6aXYZWydQbNBFMSdnXuu5PH+4CEFsVOfXo7+56ErISf+f9MnswTwo1Qj6YvUFge0Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716846863; c=relaxed/simple;
	bh=qL+ColxI4uRV7B94UQ7zXuWOOPO9KPVqdXbcVG1lvZg=;
	h=To:Subject:From:Message-Id:Date; b=WXM/IhsTwkc/moMb+DFeDohzaOiElEaBjnQkSdf5w01uJVl2kqsw6ie5pvHJBLOteoq0fmLK7QswRjcvcFbWwDe0biZThUcsImq29ekI3bJtd1XW9MrNs4iuH86GFHwJQ1XqGFpTWdGSgMb+Abe6f3JN9TWzF79g62MpE+1TGR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpzChnNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpzChnNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8A4C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716846862;
	bh=qL+ColxI4uRV7B94UQ7zXuWOOPO9KPVqdXbcVG1lvZg=;
	h=To:Subject:From:Date:From;
	b=jpzChnNtGHHdbPhgLXCQ3vTmJvqzqMVLLYYM6HhWg4NZLE0qsRqublMSW18g7DPp5
	 2lftPTpdaoZ3qFnT55OaoThRJE9V3cF/7H7tKIQraitDY7FRstr50LrycvSycCiz76
	 NWGnKlmQtnqEWLy2Yi+XK6OuqdFCt8xVF8hQGP51n/8jBC2655CO6dFgc2KOXBc5Vc
	 9qcb1f+HZsD4x2Dky1dWXfeI8oBITXHHMPNWE0V4CQh6xhN+FeEX70jPxUVutxHBHg
	 aIAab+TMuJG5hmnFLJaJuptLnFul/EduBrRKbqH7ycpgRgW2j6BqQbB6vyfMfII3+N
	 ioHlaimgTJQwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E8FC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684686277.8477.11788337180647376251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7f323a70ea24835e677e3c8a4d7c2e74c3c582ba4c1c5840d68849e91824bf
Date: Mon, 27 May 2024 21:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716846862
