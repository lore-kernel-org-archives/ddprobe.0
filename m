Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2035EEC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749275394; cv=none; b=bir0m2ElK59PpAl7+unL0qIS8KxdRte+0ER14hGn9ws+i3iD9tSmoN6Bd+q5//NxQ7cr7bJjCbjXZj1j5tR47oYJKHESXAw5GPUYjwPGyHa66/3EuoOaiyfrPzT8UGTyMUYxUspzWgYxZafxXUzhI8/0MW924EUOO7uL8WmQUuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749275394; c=relaxed/simple;
	bh=e8KOag3/cTXkxaCyMvZdigXLRRji6zpXM6UqjLqMj0E=;
	h=To:Subject:From:Message-Id:Date; b=rCdF9pwPSZMalBoj7xN67tu51NEZLciTzg4erSVVS5c1NRNexplQJySiKFWSXPSieVrmiewHql7fu9rXuMg25EovdTQWd+0KLYNWjw82Mi3upKaxOqDdnULFtAAJsiv2iuoYP89KzYYshO+pXVRzKNPwt407CcfdNbIs/MWJV94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7PFWSiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7PFWSiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D76C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749275393;
	bh=e8KOag3/cTXkxaCyMvZdigXLRRji6zpXM6UqjLqMj0E=;
	h=To:Subject:From:Date:From;
	b=c7PFWSiIuCg/dWpqrY9yR8g5XZgTc/TCknji9ARpH7lnXoEAq1hFOXxCI/N+lLpNS
	 cP5Hpp1fjiDoUmbE7bhuA10eYO40FBOfIdeBlEa79VH2BsqzjALYG60QaL4vfOxeNS
	 q6tweXPCPucwb5eykZix4rmKOkAQ2hCCoLQCXUlDwexKMIZPZ+IyJ/uUR7bBIDX/B8
	 gumcpxFc95Ag//BYBGj3IXb8gafPk4hQ/Q8u8cFK+z4nyRt9PZBlF/56Ce29pqZvtH
	 yFq2PUdtiJdGrp7HJm826tYuiKzf8mI/6f2KyVlr6LM9wbs6bH7u26H+N9ymRyRghi
	 m4PaUKDcENsYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFFEC61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174927539358.13579.9581510091507697606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8dd9998f1a95235671a99c7b48f36ef5be8f0799e7d5487bb5e361974af05ef
Date: Sat, 07 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749275393
