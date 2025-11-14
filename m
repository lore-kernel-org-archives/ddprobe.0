Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DF4281356
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763120394; cv=none; b=RZ3ejNfj7v2PWgYx6lsw3PHOeFyyPo+Z78UQYAtrMQ4F7bM/kGET44Df5rIV43tJxBUREUa2nbgJ7uAzK5+7aEuyNQU45I1u6Aoib0dlsEprnnD+83W+7E78jFAnfdqQbi3Mhpdk6S69CCD8zyXekdMZ9+SJONqyA+aLCGd12gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763120394; c=relaxed/simple;
	bh=xnUN6T0STZZ0tvVX4ZLrNuWpuKI6aBtTzlvw22nvKnA=;
	h=To:Subject:From:Message-Id:Date; b=NPvbSPAbjscN071A5IZZ3pgFEnv4uIU2hkbxUJFN7KxRdOBgVxXk0+HX1WFwRpqOh6Dd4z8NgFD6L7mZAVvhHuNy/+2WYHlPMxlVuJHUwNmHo1QSy/p5cM5O9nv1OqXVY2NMqFkYRngAGtKlM+skIzsVRXxv/+H3UrLkStMREo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JC/vLQVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JC/vLQVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96863C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763120393;
	bh=xnUN6T0STZZ0tvVX4ZLrNuWpuKI6aBtTzlvw22nvKnA=;
	h=To:Subject:From:Date:From;
	b=JC/vLQVlbcNRHnno0YgrIYJDhutOyx4RSFa1JE4LoQkGfWHpHMp2jK5/9azKjmk4Y
	 965O4AOB8x4Ev4oYpmQBqFT0xLFJYAfH7vOz9Wjp6NHrg46S+J6ytqr8pqYJyEo79a
	 Pxzikq51ynU2COuUK3DTJsMwI7yu6tZEDczRKsPTcLUmy8U111rJEV4iyD+ImlxA8Y
	 W7S/x7QGdjLDD+4n/vYs1UXrqVg8YbDkTzvsAai+/L60FTJpVFGXRdwWNSbfRwNoyF
	 D5RKEd41dmDjmDNue+yRG+J9//X20sNz29E3W7rIP4Bz5V/6E02WIRpx3COxR58BUQ
	 9Tq9av/V0LYxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91238CDE022
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312039358.13175.903381407950955232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c58b1bd562ca92a89dc2f202730de5a64e36ac83561dee2f3ef09af8edd82a
Date: Fri, 14 Nov 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763120393
