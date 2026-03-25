Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF443A6EF4
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774433094; cv=none; b=FJUGA86/MFhNbLVvidLkRqV1q8vGRJdLFgjfq8FfMyvURJlyqHj+o7+wJsmdOyZQJaRXSe+O0b+J7hA9cZKi07tlONeHTdjb3stTegC3br55Xq5t060IcysDsl4T/rCIOtYb4BQpxUQtslvbnhjzAxy17HV5FxhjxkwXzaQ6tEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774433094; c=relaxed/simple;
	bh=XlQM3YOLA3RPiS29lkhFXogd6LDN1qjaGDSfbFnwIwI=;
	h=To:Subject:From:Message-Id:Date; b=LEqPg8URu8uD1P4unAJptuQJrNMeeeRh66mZtrVAW7xNogPEaYCzhys4SO4D045Dv2gJW2DDkz8GEboMvNekO+qBFHMnwDirwDH0sjGjMRIl70LqjqfbclziGN4khIaEISZbwgOl0ftE+q6YskkAIhyJwXuTWeWfSVPUIjWc+J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHxPkrcv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHxPkrcv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FB9C2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774433093;
	bh=XlQM3YOLA3RPiS29lkhFXogd6LDN1qjaGDSfbFnwIwI=;
	h=To:Subject:From:Date:From;
	b=kHxPkrcv7e/HoYE91k7/qSzWSKqKOX1DvZV0d96uyWP70jYxoEbezo6lyGUHPVc+8
	 KhfgRIunpxXA17MGd+MwB0cELY5oqN7yIejjxMyiJkzs9EMkzaog3PSpvvE9M/VVW6
	 OPQekoHcjl2fkyClk2ZR8Y+vX9ekzdm+KEgTNKb6wrxSSodmU/KkFPia/UMk+h1pal
	 CbQYRQbIXJ7Bn6mix3tnba0rleDMC0FxyTDDIfyE6+p6mg+c2WJue1AyYwSG203M0e
	 wS393TIEHAsbApf6nQixeXwUZl8GGsfrwZhtGT6m9/MRLY4OhTQ8K9DaiANs7bkfoH
	 KYyM995dvIAdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D0BFEA824
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443309359.11027.14196992436003601276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d798fb4433813871f12dbd26cf1a606cd39694524d7d7711def178b058e3a9f2
Date: Wed, 25 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774433093
