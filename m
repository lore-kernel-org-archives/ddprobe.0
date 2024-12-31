Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496AB16426
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735679754; cv=none; b=cPc/L8c4fO085nv9acY+QO4P8qklgnBxOdUlCUru4AXS63iOcZQMFa8VB7PNTPzBxlTxy68t3ieQ9dtlpohiMPCBQPV5vih7DOgu7nctGCRCrOHjnvcbhtsDv9nYskeoI5Je7HvD1irUIAh9koWCI6KOLCxvUBe0k2r8mn43qb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735679754; c=relaxed/simple;
	bh=YCk9JKErdr3CP8wL2gqK+/WoktU4Im2+TejB+fQlKmI=;
	h=To:Subject:From:Message-Id:Date; b=gadX2zO477KSoL5zpMbysqtOJtv0IG4gVMBG+30qxjLZ1z8ctbUAwQxMUn4SsE0ViuB2r/IiUAmwHox51XUAxXxqiUC86rGfVpCU1i4gPtuAIK4BJiM0tVASvQqy0Qg2q4N42b3T+Q9dfKAjekvKw440bRng9MAwbLifPpy+0kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obHlC4E1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obHlC4E1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1FEC4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735679753;
	bh=YCk9JKErdr3CP8wL2gqK+/WoktU4Im2+TejB+fQlKmI=;
	h=To:Subject:From:Date:From;
	b=obHlC4E1Y0cdgd9CikKCJpFDeMh149tt1nPwRG1tnJtrZV/9FPQq4tzPazTtnVwmV
	 WRZBQUEUpXNV/5sM1PnNKlJ9BKf+zaTUvXNok5OxJcqVvqSWI13UeK/OnOkcCiC0qn
	 A1EZSMVNcLNQfhdIova887hLTwv8l7x5DaPRUlQJqUYyKVKjjH9+rkBVC/HyRYS5cG
	 5ZzZ6ruZpjqorQLvOr6Bk36HGXqmooJdYaa2bLCClpQcTuxUZyvHZzscDM/cgJmUu6
	 0jIF8fuqGscqQHq8UniD3UfuMs46mJDzLHlhMnXF/XUxT0RPOYe8KkL3hiZcbp/CMZ
	 /qYCUrIOIPC1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B15E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173567975358.6588.12704925577294824206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92725497a2aee782062d85e2b8be510d89cc291809a824b020f76e0906b05893
Date: Tue, 31 Dec 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735679753
