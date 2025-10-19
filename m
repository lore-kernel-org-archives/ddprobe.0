Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A13F150997
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760851794; cv=none; b=NtVE9N4hpWuvvsCShsyQsXZ9RyzldSMADuSgWOanJ7uvyrPCmNP/Bb8c5irgRkrhRxRMsyrlnldh5cLlG4gwQJ8tv0AJex/PVgBV/8kd2MV5UxQ6SSSxgqIJcpadeLP9K4p2icVrdFSdkya1LCQCC0bZ3svQsmKMrDvoW0KzFGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760851794; c=relaxed/simple;
	bh=I7JZYeCTwLpotIrTtHEbm6KLQGdYdEPlc2M9XSqZU2w=;
	h=To:Subject:From:Message-Id:Date; b=aXdU04zxjYxGxokhG1chcmlHIm0HISe2G+cTmeStbgLOZPTWugABktGhM5vyF+kqAzbtfGjcncxbxVaQzDlGZanBmdBQeViEeSU9bWio6mk7JjkzJWGEeQCiq3BfTlViSissmODXLoEioKr008Ac+ZRgiWmpjxDcutb1egjAPrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKJnMZfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKJnMZfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A636CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760851793;
	bh=I7JZYeCTwLpotIrTtHEbm6KLQGdYdEPlc2M9XSqZU2w=;
	h=To:Subject:From:Date:From;
	b=KKJnMZfXOI53Z6hjiWLibk04ugqJlyMnM2vpHFLUclLZTwgwIZUHn8cTkCzGbSZMp
	 sPnHhnnWao09acX5m1V1gmx1l5gTM37bRM3kHq8L8AkmWES20xSUTGjxdGbk1Ie2iz
	 qXgY6hUwuaSQ87HVGnhU04kg8Ee8jhYyCkhRN8m/U3oK0qWrrjPdx3XZ5b2TlNz0pf
	 548jYBdnprKAYSd7G112eIhIc3XiyGL1ta99GGfemL5N2QRRzwz5rD6JUS5+RtaDGB
	 i2OWBrKlXHVYceLZJL5TmkdgfTk0W5InEMs6HjNXluN+mcILDeITaTxtlWdTlszqyj
	 u+dk1VRIVOldQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F56CCD1AB
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176085179358.6593.8683134424613324761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7a15558d40579c77a4357b279382374492a2453b96fec944f68c23197741ba
Date: Sun, 19 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760851793
