Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C08F2940D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749432594; cv=none; b=f4RbPcJ7RcB0L9XBRYoj+uUTgC/tApGvcZiXFZl1ZqjQH8nBYIHi8Ua/PXxOfaMEL2ggb2W6vr9XZr3q6MUe/tonl8k9EfGeFgfcuM5TzCTHjgC+ROyjyF3dK6YehUS/wffUEc7aRIgMvCJroHaeMWwMUm9ql/oLypL+3zv76X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749432594; c=relaxed/simple;
	bh=wyYTSolGtxnws1/o/O7uGsNjH+qIn7voBFD01jLTV2Q=;
	h=To:Subject:From:Message-Id:Date; b=TM46fSPdzrO09JGBBPnYnc0HJouSa4SNyIQ7NqiZXmY8RdZvuxtX4eQjMTWlnppnwPgJVL6sdf9UvPuukyDCCHYoPLyDJ9fBUoPSx4crX9sN4+MvGolyBQzYNiwqNKzWAnPyZWNsk88tVdMo3LpYptfHJ7+bEjIiYbHgezTf1SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWLrsg3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWLrsg3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67B6C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749432593;
	bh=wyYTSolGtxnws1/o/O7uGsNjH+qIn7voBFD01jLTV2Q=;
	h=To:Subject:From:Date:From;
	b=FWLrsg3C0u4c9istgxCnEmVvPAieyxeomylNKQKcrJDON/hU+N7+QrjLnU9IpFVBS
	 28Q++KRvUNh5aGHn6g0WU54B+rv9sdtimby+mtdI7DOAEekKycTyZjV6dswLetbz0C
	 yum9ZdXaUXbpJyD/fNwV4OPLq+2/ACiVU/QL4aDLIozD4MH2eXj3hhubuo2bvz07lP
	 3M80wNFw/qaQowEBPLZPNJWzX1nu75vOUisaCu2hJzyOzOCg5yYoToYtiTFXl9a7QE
	 OulxgqNlVcf5tuymXhtg4HG4BGd/mvrvJTu0lPBRAROHGGZiiGKAy57me8S9AMRomv
	 vVkk8vP0X7vyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C00C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943259357.5090.17365148911298382751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2ef644bcddfa034c13ec385f8013becd1568e5179a9c2a1ae980fb322f4079
Date: Mon, 09 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749432593
