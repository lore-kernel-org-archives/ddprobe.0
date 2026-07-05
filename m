Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4129226ED25
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783268914; cv=none; b=QFKLyAEJeiCsweRrBXEOorbtp4Un9hNJ2VykcY532RqXScGQpohSWKE1dfafLTLlJRroy+V/mc0eeuqxhuVfg96z3mFWDAbEHgGCzEKUvJLteM8xu2tdteBQ/rEkoZ1RIqy3HIq3feq/50kYH6ttEQjIIdnSCzwu4zK/fX17+sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783268914; c=relaxed/simple;
	bh=toS+QAEu0xfJ2OiCrQjhoIKjivk/i7ArRpif/U13IlQ=;
	h=To:Subject:From:Message-Id:Date; b=cvujk1ehxE9UX1Y022QJx+ajfibDCtzNqxijfK+68ATkmagB2k3aw1dsqlhdo1TRwuQBHN1udkJuM9/+oKUTPhZo9lZRmjZYLGrKeQb6J2CZ0RWP/dbE6UnRBR17is1O9GY8i44+1AtDgmLMz0Do6vuoyxWriIi0E9qkE29MxmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEBLDS09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEBLDS09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EA5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783268913;
	bh=toS+QAEu0xfJ2OiCrQjhoIKjivk/i7ArRpif/U13IlQ=;
	h=To:Subject:From:Date:From;
	b=VEBLDS09GXTXkCyNJHNt0WcG3DR13YEDoS0H91wRtIF8/pmIDBHjIegYLx01TbFjG
	 uVCSiRZ0cEeW5LhiRksDpLR8nBzFSnNQSf/2NOVsrgMZavBejW8KXvYBUOoBlen0op
	 af1lYqKULKRY32SXOMR6OXmfHgHqWJwPfwvkq+AXggXb8Mvxv3l4R3LF1ZjEfYNpjE
	 rNlI/SbGP5A/eVh8nSdvqGdI4xhtptvAOkxeURJ81ISKa6RZ+JL2dm/BRMFN0zmHwt
	 OK1LckttNWfBMbZ7h1QYaieejU4H8l16yj1tgsktdUIbOCl9kGLeQJn3L4H+GZPOiv
	 w/3FOIKN7j/vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD910C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178326891368.16306.3769380954888702141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79058c0647036911b418985597d83771670e10b96a4ca708ddb10b9ec9303508
Date: Sun, 05 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783268913
