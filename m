Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F5A35F8D9
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770397434; cv=none; b=OXc+cf4QPTIZ7lejkrAWyciueyW2jSfGf0RWx41rgA+9HUT6TmKzgF8a9FQ1gFOqDm7n4dfiUy9S9gZUWg3el/TYphGOnV3fIP6+GigNiflfpVcqd0yfHAxV/eY702yhgtzrqNqVCT64gBQyHQoWYGZXyrU9d8i1460QMCUHhx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770397434; c=relaxed/simple;
	bh=ZP/XKPaeYkjQN3xIVRqHdPYP9N8G+u2mF5BdtK3DNMU=;
	h=To:Subject:From:Message-Id:Date; b=IrlhZ4Hbt9+VpP8EDtagZxA1OUpYZ/Plp1mcNRncGBtasCBwbBzWiWqgZL1obyH2Q8DhMMa9l5tffIZvE4Q1LHOr+9TpJQXmdjTbchMxkIzBC9Jh5O+mVMWEZuXrrV1SYW4XRQN5Tu8RXJvKLmdUJVDqVP5SRQiKhghR0s6PqPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KV+HAGdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KV+HAGdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45DCC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770397433;
	bh=ZP/XKPaeYkjQN3xIVRqHdPYP9N8G+u2mF5BdtK3DNMU=;
	h=To:Subject:From:Date:From;
	b=KV+HAGdmAyCiVeGURQXvnOG62xv8Wcr4D7ZfpiEWPI9fN8TeO7qOj3UPx1Wj7gvyW
	 1n0WwRAlLYYgG34lpy8Y6E36B5rPWMZI4luenC3SgFzu2MjOPl4wS3bNbrGnAXCSTR
	 8QIQyRrETbvH+LRbJyv6zkVbIAqK60v+nPX8slhMEcpmLuCHrNjv4MLNwvAODeW+e6
	 /cBepvpa/dj/ZUGcgBOkxnIw0YUS+vVroqKqE4PEUA2OfxY/Xq/wgFDqdRqS6lFlya
	 pk6yZF4CqHmBFcyGyDYZi5T17KgPrSkFIoH/qwX4jFtaQtpq7YdqaJCpEiWp0hhODb
	 3bLoCcB705ZDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B11EE20B6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039743358.11160.1522492290522596548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf6f32f4f576554de5cfa4278a63a53cf993b03bc20b34b2c1a213d24c672a3
Date: Fri, 06 Feb 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770397433
