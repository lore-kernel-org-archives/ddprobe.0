Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C7614884D
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734255354; cv=none; b=rZhbs4tWN4kjBeUMQvhR1/M6/CAedIYa/m4NObn7rVQ3wy4wL9S0GAmYNLnlqxht4uZBrvUB/pBjtL+vlwXgznY67mndMCewp+2ZcsMtoH+6d9k9AVooWOvrrRZguRy5Lk7V9jBKYRmx+U/D3AOrwV2OBDUYkc46pRlnh5FRQ4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734255354; c=relaxed/simple;
	bh=yooD0w8PADfOuivQO+EPZZ5e6Me7pFBq34+IgDflvcc=;
	h=To:Subject:From:Message-Id:Date; b=ErZf2ZT/A+6RR882fSaZNH3rOlQmvHVK/kPsVYw4IpGlhOjVIl+KZBTv9h8GTJarloPg5i0uUpDuk6uPElt11anlsu+Az3QC3n/vmlJlhXZaWbZb+Vv3YTkZy2r0Xitu9i0jmu0EFPXc+MfbLXs+Ke1UT28juDgXxUOrRK0NdN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxNODiNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxNODiNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7BAC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734255353;
	bh=yooD0w8PADfOuivQO+EPZZ5e6Me7pFBq34+IgDflvcc=;
	h=To:Subject:From:Date:From;
	b=LxNODiNFHw5lnkp0FGetqfK5de3+5hKG3SH3i6nN2fR2MAE/pbDGV6Jl83Czbp8eZ
	 GznJsQgpfJCbww9LnrxmDYeho1WTUOd5V1IXObhIYKyFwE/JXj+Dzec+0VUe0oOOcu
	 d7qejuHh7NmCgupQ8B1cv9+QQMIz8fPZitAfDFNl7MjzBMb8CGMoI5e93JVuyx4byP
	 iSjyVZ/oMkFokkT7EOKu9pjMT6e5CswBDL1eLHzcdEyo466m/TYiDILnhqeJMN1iGN
	 8hQ3IuBUZtz4EH+wOWq/CMC2dXbHggt/rsEIrplTa8aVsL5aab0QT/vGar7npBBuBS
	 GoDzwlhKrvsHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98481E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173425535361.1221.11062796509122399619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63712c96d07aaa1c599ba917358e7b46ec18ee5f47a9f0e6522b9b58df36fd1
Date: Sun, 15 Dec 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734255353
