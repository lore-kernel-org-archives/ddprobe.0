Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3765E111BF
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742950194; cv=none; b=ha/K91TX8IfZifNZim+SPtZP7b16XrEpLQDUh0t8rRACmGqKN3uTMYgXZLSiVXKbVGH6bB9xBnEm2moY8WF/kjZRwG1BrC/92KTNV1OJClGPjADu8jDF9vL0ZATwzDgnafkPX+Fy1wNpmaIo+KfWCXWZyKx1iLkyghwg/S/izU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742950194; c=relaxed/simple;
	bh=mQ/3VRVwmZAbO2a/PxVVnUS39+ORi4TP+gChQrvoy4k=;
	h=To:Subject:From:Message-Id:Date; b=avDCPPLdvALhiTXhfH9oTmOsRckTo1Bm++y5VK0ZIgk/A3+1EmEARMk8y6Gcp+2Mse7v6rPD4aIqqSUAaZzQS2XhBERjnIqTKLpScijVV7BZ0DoIecWoK3vaQafRFUsEX9dtBg0F8VZY50fnzZF84oQIUj8AbdD+OHbbM3k8vnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yhe62fjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yhe62fjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA05C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742950193;
	bh=mQ/3VRVwmZAbO2a/PxVVnUS39+ORi4TP+gChQrvoy4k=;
	h=To:Subject:From:Date:From;
	b=Yhe62fjZq7+w7eryVQZzQJTmwqecL2Au2z6gPv++3HyEBe4daWinp6Xm3f06eGkrm
	 u+o7HEBWrHMHUimtC3e3sISK9NKGPB+5JAvJMUzKS80K716UrTsou/mfvKpUMBhRRv
	 gOsCE4BymJu2gP88fjnUwVWzFrMl4fZMxAj2obKKyGWnxyPmcJ7dSgeeITwhTcKczz
	 0zTuC74nWJmzRV9WOb6OEZbfzbvbhOwpNDzRZOikkX7b0/WGEYZsy3I3RbqP9K/BYj
	 sM1gjSNWLGhROv4MoNe9+4FMroQ/ZcpTqDgk83KMCy734HH7jVkIWqLu++UXqYO0vl
	 F+ys27WA/CE/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A157DC36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174295019364.8553.5896129565743012307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c6f8304ab44398c6dee27e0af57d5f0b3b9f6208c7ad62f950176942284f4b
Date: Wed, 26 Mar 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742950193
