Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACB33D3B3
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769954634; cv=none; b=Pp4IJcbZiKrFHoFSMWJY7XlcA4t4ZmltBDAfmZiOX7zb95j+VWNQI+Vq5weCQ0ZDuKH1ueQwomVPSBs8oGZkEY8n/mly2zzEDC6BhOS9wY01nISaKvBBEgZi0Ivqfnk/dI6cpXGYTO0yR4IEhxN6v6sisfObxNKEZy07eGbkuSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769954634; c=relaxed/simple;
	bh=oxFjfwhSKBAUfesm6iGT2kT9Q4goIfzO1SC28iFFUJw=;
	h=To:Subject:From:Message-Id:Date; b=FKXscRcIl7YxdxjG+k3YEx94XFrgbMHAIrezMgBz1jv3k8RizFQoE146DOIRSdCnc430LLQvoVohdgJ4RaCWP2dvEyklcGiGvBYrIM1wvJUQCNf2W6NEy6D5M1NnNlCngC8v3hBctfOjBOxzgn4IGLLj/gfDlPkUSMwjg9WaoIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2hZPDC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2hZPDC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6812C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769954633;
	bh=oxFjfwhSKBAUfesm6iGT2kT9Q4goIfzO1SC28iFFUJw=;
	h=To:Subject:From:Date:From;
	b=N2hZPDC/5hEAQK/lcvYE9+MWN0OpyvFGes/YeAyse6gAuWViCG6XyuOUszgcpD93s
	 UTcnBFYr3p3Mjgpno+ns/HqvrCSCiP7YRNrky8DRcnFyFdpe9Cur+BjxTzxHHa1Rc9
	 Qf2y1NK5wtv6NunDagd7X05wlezdZ795cFWpO24jBSExtF6SBRsOmjhWn9GFaEjZFJ
	 Kz0m/skRVH5vn4pKYI5+B2UvZMQR8hesYpPF6SoLTsQRJS4etO0NE1IU+ofFl5+YrW
	 701mNthxcpLyJIquZIPm5jHNGT5iD2UD13GTKgx9riPU2dqbc5hPbRZA2S2Hn84JEN
	 54h6w89X/xLeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F227E6526E
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176995463360.26259.11763663450157839677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c71faa6ac6ea49c6b037792ce241dbf398051c0ba0c7ab808fa482d64cd068dc
Date: Sun, 01 Feb 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769954633
