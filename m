Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114983AB289
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782793714; cv=none; b=ppBCKrJjDzWCoDua3oxYUxYpjIi3cW55L12qFkS5puHBxNQ7ryfV2urEl/X3c5WEjN0B/lUwUo5G61peU3sg5jbgpdUr7d73eWBPah0UK6xpOA8RKedeS/V+7GP4WE1iM780iH5zMDdKZmJKRIVZ3ufrRsgAzsSng1VFo7YboOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782793714; c=relaxed/simple;
	bh=I47OTAgNLEFeEZonc4+dIuW3v+YPnnbJKZMjveXDJeM=;
	h=To:Subject:From:Message-Id:Date; b=UXMkPyhPE/l3sFNXZXMcuO7lyV5/vzNOLmjvBwzPseuBd6/AuI9DT5RQW+9w/siJddQliOxZz6qfvxEJxlsGfONpLi/D6C6Nsui0+upnTbJmTAyGK8n/T6r33EMhth/n726izf7Th5hjEYjsWb7Ro52cWMo2gOSmGL6zYOLn7CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqfpN3YG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqfpN3YG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2743C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782793713;
	bh=I47OTAgNLEFeEZonc4+dIuW3v+YPnnbJKZMjveXDJeM=;
	h=To:Subject:From:Date:From;
	b=OqfpN3YGhUqs+jLVAxPoPVfB1R5dDDgm3qdNuY07tMnQYK1kSzDqhyX0rLn9B33Hf
	 0tc50Xiw5am2EYOTdakDzS6mMcdXwlw84V0YbvWfT9CLz2IdVTm3mgfHqNKGASPqIU
	 1VrrcYT8o2W75eU5MWbkbCm6LWZr8DRDRkLyFBPAUf5A0PcZO5xeEoara48zdsLi0S
	 06lKEeKCvZn3fcjSlZldaOHfaVsWWj75ruAzSeuptLhXoF4jDoeNnV9sQQc5XdGQE2
	 o9YsgumMiVJEb6kJC57P4tP5/MNEPBLHXtCSYYUHGpeCE4tJ+WR5gJvxf2snwM+ghc
	 DlwfSMAHa34Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9692C43327
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279371368.2545.14346890211753505612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2b5918554ab06914de031fc9ba1245954050ef17a6ca53d1eac5f88b4fa084
Date: Tue, 30 Jun 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782793713
