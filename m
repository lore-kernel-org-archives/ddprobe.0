Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B0C26AD9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744388993; cv=none; b=NiLitJJ6Yh+glfyEeI4gIXM5w+QV+TN7TW+UZQ9GtRNTRy0ym3oYLk5ea2AhTH2Wa3MThFBTjW78DPuHeNp4ytxrkGM5QZFGfwSxBwRWSOs1IG9Hc1c9MeP7VUGL3UGKS85TQx5foKJzPK1wnbVPHuzBhvOlumrVQEvBlzrEMCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744388993; c=relaxed/simple;
	bh=+oyZZRGTiLLSyd0P4rQmxwYDoitbSLZlN8TdOjUbOTU=;
	h=To:Subject:From:Message-Id:Date; b=Pc9LWelyVip8GOqfBWYNZ3au8//+7rSnrUW1tUeJpW31oGtS8v9p+g4r1oVMdf7cFhLJCE0BOSqcT5B0Y4U9iedaDqJ51p5RvmuHl6r0Cg7T3uWmnxK1CxVC/rgqquwRDMINEwIKiyVk5Si7yNdvYrQ9IfsvLzfCZP9JHe5B8s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gge5RfP2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gge5RfP2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9C9C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744388993;
	bh=+oyZZRGTiLLSyd0P4rQmxwYDoitbSLZlN8TdOjUbOTU=;
	h=To:Subject:From:Date:From;
	b=gge5RfP2JWZ1TZifeGHpkWI4sWxSRvgEc2P5ynPzfton05vrd6t6ln70CGijz8fne
	 SK20q1pYL8d/1aO5k8yUo21LpTVBurYNVrLnO+eEJMaIkexBtVeJ5aVogE/reXoO9p
	 UGYDj5TJAqx0xcXPA5ER8kK8diq3NX4cfcIc7ttBtsC2zm+yDhkMVHvhKGGqnO4C7/
	 ByR+5jHusKnyjGAzUwkZmTP5e0SoatNjKGDQpzBR14eDR+zABriBiJvYoFshQSx0FN
	 DkVWFGuXRAgA40va/5PswEgXnQ8pPRuQLABr0iOxU2sDVA7rYFxUaX9cuThq9vokCp
	 tEXB8Q29i6gtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96887C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174438899360.18837.17756269288008002087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f29a2718e0c03c7e167573ea97705e205ae64a3e490de0d55ec8e22b83df96
Date: Fri, 11 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744388993
