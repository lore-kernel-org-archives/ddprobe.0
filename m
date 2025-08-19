Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B85930E0D4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755592794; cv=none; b=OHyN/MBZWCL9awsUACO/bcjQpZU8QvtXgvy+colgtvuWSRyKqsULGKrfPhBn4UNjgG8noh/izGb9edXj+S70bjPjTZO+DsH6bZk294XU/ZkiAcVyRK1lkdX/oFuwu4YJclqPXcqeZtzy0vDcUJXBTApAUtK2GYPbqI04xiAUu1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755592794; c=relaxed/simple;
	bh=WIrMCsx9pZBUmoYZMZjFCgBUwxi5cVK+9Sf/wEOqk7k=;
	h=To:Subject:From:Message-Id:Date; b=ioAr6IXN2xZagmA3Sa+5CSjObBa6NfdY4HUXVFJ9kdMcOrv5N/PBcawB8CnrZqVNv8JonLaBWjYXIQ/3Edsm5tYbFMfZ5NtJI1uSc3qTKE1lcS8qXZCozxHl1GntqLfuUATmwwruYcn9ivlYEHPp3X7YbzZhrBoi3yz5NrB0qAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvY1kAOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvY1kAOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C269C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755592793;
	bh=WIrMCsx9pZBUmoYZMZjFCgBUwxi5cVK+9Sf/wEOqk7k=;
	h=To:Subject:From:Date:From;
	b=nvY1kAOeI4p7tvEGsQcqXayblxEu3SM2gYTg7csIWzKWUJmG841fJvnxwUcVq0ZA7
	 Gsc30MPMwsCKpLoKWSpX7WaFLFPMoJpGUAE3HM/JBCuHrJL3UkzRYGaszquTEJhVI5
	 ZAWz2O7URA5rJQPBXohUvX9nBX6hiEPmFmKchUnOM6AdRt+wK+7FXgay0B3KQjfrpK
	 WH0+UiL7ZynDGKNb1nk2VcKNwmzWnh0QHCZRYdI0ozEmzDnG9GpPVPbxwIayHQfhqv
	 l79ewVymPd83Q3O1WwlBJrzg6NVq4KuKkeqa8njpXq8BWNDvl51ytGNXXvPdZWqcXB
	 Vnw1pUGsSyqrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E04DCA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559279357.30520.16358281183629705372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8428c49121417928ddfa1c7afaa3df763a9d2414a6550b76ef055bbc23b81c
Date: Tue, 19 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755592793
