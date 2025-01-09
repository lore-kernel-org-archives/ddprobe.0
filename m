Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E8913C3CD
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736390754; cv=none; b=sz4/PLIG1wVZwJ0GmbzzHcmQ2kDtUPrErCmlXh67CDFrLZYsQGl5ZPiHaJQhLnCOsv4+VG5gWYQ7Iv/tBFxMrdjRqDnAxFT56h3MLVlLkk7NSWJUuEt6W/FnszJvlhbhczsC7t5eplfZuUbx8h0FIRAEZOlkCMPw5t5voiQpUIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736390754; c=relaxed/simple;
	bh=woqSgLy6NegtyKHkNL+C4tHdDquFg62Z4nlmSyXW9DM=;
	h=To:Subject:From:Message-Id:Date; b=BkRew59mLl1E7wQnS6ti4G88mtygocJrZCZ19DHn9gchwHWW72krWBz+kMFqBJ3UZwdBA1IliFw6Fpr30lq1vAkyjLzg3mJ/KbUJx3IGChVJE9hgyqdx7Dx59U78Nl1e5GQXDbViQBAMPgtdr1db2o0XcYRwskFKPV+CLIu2mLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSKqqrJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSKqqrJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FAAC4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736390753;
	bh=woqSgLy6NegtyKHkNL+C4tHdDquFg62Z4nlmSyXW9DM=;
	h=To:Subject:From:Date:From;
	b=DSKqqrJ2ceKRXwUl6yVrAOJIL/tchWRYAJygWbWT9gr0idL9UXlxI1D5kxos2QSdp
	 0GEKGl5/zAIJXmdlL4FXm5RQwIhWI4bc/1tG04Zn7wGLWKQAsd5MEnPfjzEaFkJgvV
	 NPvm4EMecxOmdtDbSIB9aOwXQ4BI9Lo7wqveOw7DqU0HUzwpk9D7wvICSFzCYy1h+s
	 ZNiZW4r211STYl4pTdxTu5x+OBjMwZpIr5JIcVeQnRdi57Jw7U1o8UTbtCCh9pDJ81
	 6Lry0duaVPRidqHxLBY78csVnLtAN/GEQw967jwyZRoKbJcqrG9Mc3rJWAJQkG62e3
	 QdMKRl8zpWsfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBCBE77188
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173639075357.30400.14717064841817261553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc7d16c6ef6602a178c9aab98a68940b07b6925515d192e1b61e10b76f2ba679
Date: Thu, 09 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736390753
