Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB4531C32FF
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769745833; cv=none; b=kGpjaTprohqede+cW9j/B+VX0LJnjyu4LsbB5zVc6fFu8xMcBTAIVy4EQJ7IX7qov1aVciYMzVCaVYQuwxKAmf2MWf+/7vKfvsGfVrXKw+PoYd3MVk+QYAmUNbr/GsAlivvNEFU/cx1ifFrQeVn4mUvYzBgzUG84V/IGML3w3Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769745833; c=relaxed/simple;
	bh=HFB2umRw3etkbE83VA1FiBRrcKF4D/mQc4TGA0iWgEY=;
	h=To:Subject:From:Message-Id:Date; b=HWeUq+cuLXKjBgmZiXPXUBAw6YdjxhhDYRpPIGhH1jYT0DZ4opMTks205Zxb5QgNxUAyNXSg4yeoPcNpFziFni6LETPyOVZrwN2VnvkffyYjurxyaaQj0qRP0Cl875E6pnsRCLA5Lod7PJEU+XcSzyK0pdnmA6WzTIh1fSLDGnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0fv6sI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0fv6sI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A464FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769745833;
	bh=HFB2umRw3etkbE83VA1FiBRrcKF4D/mQc4TGA0iWgEY=;
	h=To:Subject:From:Date:From;
	b=B0fv6sI6A+RGBo5h6E9uGwY8te/o7I5sSqftbXY4hXonb5PbeaAs0ph11SZTGEHO8
	 KxDLndoK6Eg/yV1hgXyRdHflIyPHQYBQezRs0YFrM5aYNhf4wJOmNzgyh4q3StfSK1
	 xAnT0BqSWeVsMz+BVFYPxXmrq75Vj7k0s+SOMYHgKnp9np0pJy9f19Iow9y9/6N+Ud
	 Ufs5Z16I1A5p/kt6QRs7/yOx+dhdj2oiTa0JmFDwxHksB0NFqlyDkg8KMs31PqcnXQ
	 LyZYk72hY6NqWyZrgHOrAmWQdTTndiIvDWWawbwgejAXXsp2IORfk1oXpuaj8El23B
	 ZAiLCa8WIvNjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AF9D73EB8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176974583359.31648.6574154517221507452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71fda5a30a40e4bdfa6614cdaaa5a9fae9446f7e9fc27035eff690775f95f54c
Date: Fri, 30 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769745833
