Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6FF15D1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749291594; cv=none; b=uMmiBwOTlhxY5/BVp/SF2C2A+fsmOQUugOik2vDJyTPzTX7JueGmfzr9if96RW1YriqvZEP0m8peZqaOAfOHi1ZV/R51D8aPkcCkx/Xdtv32sM5cRldxgnd620MpvLRxz+qMy/4Jm/JLVW5ybFRPLoxT9ZwTZYVuIFkhnAGqMU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749291594; c=relaxed/simple;
	bh=J4TaUFqvYPrYGAq3BbUbHDEdVQPK7/yyOhE8wN4aK0Q=;
	h=To:Subject:From:Message-Id:Date; b=BXdyNlOUZak/hl2tM/9vigutUWSoWavexFHdbJg1VUCOzeAawHjdzufEOcxUIALLnwuZUr8wUh3zZk+hPpOmyoPC5SFDb/0iwHwJ+t9cnXmd5wO15017At3+uh2i6k5gICV8F5KxpWYdjCBDhMRUn0bSKyy5lSZLfmmKTGK0ZJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQkiT2wE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQkiT2wE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DE4C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749291593;
	bh=J4TaUFqvYPrYGAq3BbUbHDEdVQPK7/yyOhE8wN4aK0Q=;
	h=To:Subject:From:Date:From;
	b=sQkiT2wEKLuF/7aVKid64XhMxGG58YhS/GFFOgYw/Ul4DGlgXaCYX/NfWgWTZ5DyQ
	 6wYlzMQt250ncZl7y8SCXcdVU7JjchSOlwj2/BCHIUZ3lXrJDbAf2S4PJxVf6Z21KV
	 NlXECSC+uLDGzXr/pP/+4wCxNRrjbXcdsEOYnfZjpNQ3g261XvZ4qX2nwyaG95HuVc
	 PKP629E1yNpZb5PaknEi0Lv9NPk5yZI5uzhomtfOPEyBkLtAcdN9PGX+3C1IZrUdhq
	 TrNqZ2cBxeTPEI6pPQmjftKBPIl+ErnwC7Zpfq6kJ5xUngWRCZFb3O5KKiqaqtb1Fh
	 1f8ZxfTeKmI7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93949C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929159357.3715.5984005176619715866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9195bf94b5dc4e5995049deae421bc4a205f82734a90b6f353a9da0c225f9f39
Date: Sat, 07 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749291593
