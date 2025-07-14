Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170F3253F30
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752506394; cv=none; b=HcBSic2MXydX/MAYtb1rKTRTERxnxAwBJJtOjCMsEfrh9mijEweujI+3NlCkyTpbRYLzL7pqQgPhHxDnD5e8SB1JonDYMytEUKr9YYwcujS9xJWxY12CRh/e6qM2f4R4LXdWsJn4pIvOovD96ztoKxuO0a+c7VF9RPRsuP6mjU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752506394; c=relaxed/simple;
	bh=404u4EzdWTDY44sMMBP0pAkLghZE+z8fPlZij0cs4AI=;
	h=To:Subject:From:Message-Id:Date; b=oFidLhuSy4LPGRU8gP9aIEnTgNs7VPL8uy+yJ8ABczz6nYjIE/bH5U6oka5Cpb00vc1Nc/EF6dLL1I72+dB8GvX63DgHsHyYLYYxDEXRIPddhZ60GVyckrCWM42dZch6QHuQkSuqWEToRu5pMIfplrPs29mHahosmI0+9bpG0n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uO8c8D9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uO8c8D9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50F4C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752506393;
	bh=404u4EzdWTDY44sMMBP0pAkLghZE+z8fPlZij0cs4AI=;
	h=To:Subject:From:Date:From;
	b=uO8c8D9/3gs+xpbIiJXLK+77lnm/266nmt1cFwmgWEd9C9G9Js2jR60Qy35fDmuLc
	 NAQKbKREABq9pJIkuhEZT47amn92DiROylVFAFE2+SGFeUGz6NbfDfEVwBQnebeNn6
	 H9HSGvXv4gGHxH1ado+Y2KgiNCmzXicCMr9ESa7TYiSTCkb2Zio485jtroyEmTMUR4
	 2dkM7xcApTAFu0uqN7ho8MrgyYvch3L/RCMejq9T+avcZUVHvfDVAjPaWpci1/yzll
	 mquB8TYiht++osdkAM9vcqfoC0VscWSbeCIqqnpp7SL0NJWYwda0fM9pOykHc9X/M+
	 Ui7Pa5awVeGmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BD6C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250639359.30839.11697268558172556095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c7865b558e23c3521d04f3fdd5324077b5c03e24bec8dfc78220bc153a4415
Date: Mon, 14 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752506393
