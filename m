Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21464800
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784370514; cv=none; b=lxpgHV0ThCviISmeGY0/eRa5L69xNYytaOc7Skvu1dNKGuPwe0vpwrZRy235aQOf2gHFLkfX7hDBBUCV7gfPfdbsrCpiHEnAMzPD0sABNFbxwXJGHl8RMt5cwEOduB9LcnCTgmnxHWB4rLZ+rpBWTEMozT2V6s84Q1qfD8M8GVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784370514; c=relaxed/simple;
	bh=0r2wX5kOnt9pNraEt7nyevtYkHFrXVAcBjJRKfho0q0=;
	h=To:Subject:From:Message-Id:Date; b=OwOOtthqXeKAEskIeAGGn+o7+hpK7Tps2iRhY1vivu0e99Ym1r2DquvyxF+BRXi07ochYLo6Feouid0A9yRRN3gMlF5lY2l9JQT0SI0EB6SldqHOtQNyS2HD8dpM9YjXpj3cFPsj2N21k4FPqPA0BIrb98cSNUok9xbHv8ia5YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7TEWye2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7TEWye2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF537C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784370513;
	bh=0r2wX5kOnt9pNraEt7nyevtYkHFrXVAcBjJRKfho0q0=;
	h=To:Subject:From:Date:From;
	b=L7TEWye24RuBf8S7uqmIUlk1e6CrZUbNRBE3MRlQzwvmmZvB58vTfOEcoArlOYnQU
	 3yY+wam+BxPDe9ifv2tzAwGwFtVfWrXzIU4E2zhiYQsjykMEllanBWizxxDfp4yshf
	 oaxX4z/h8Tm3Nh23+s7XbaLC/0aQAF2XtN1+8COf8/C2mWTUkgZ9wyTUMiWhnhgJ0J
	 HaztrQn/vsl7R4i/Tv5qzo9n0Xwb0HouixtbXSZBEJFfNLhuyhLpsIMuIy4jTBQUFi
	 9Si4jtRvIn665UApxpLL4HLEzZE/5Dh0167anUOqJq7HoEom6Pjsfp2Ug0H5Ebh5S5
	 /rSFyloioadqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED19C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178437051369.10897.5192481981239949691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1aa685a551f4b8156004adfb8f361eac5f93cc417805d748fca12876359e1a
Date: Sat, 18 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784370513
