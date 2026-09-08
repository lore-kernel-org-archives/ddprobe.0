Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657732AE78
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788835834; cv=none; b=i+JieuIKwoBZIWzVMG1jAYKt14+nCZxMfBsnLZoAzjsoluMhxcqxM2X8aujYrFfk6ZdxXGjgj0r910FKlgbnWaPcNf7SIAjxwvDyRRaYTDOtusRajuUJwZvtKq3zril5GtlNW2yj8ohi/1BsOs0xLb/Sqw91jfPJYs3Epa8+EaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788835834; c=relaxed/simple;
	bh=s59UnuilN7LzuO6gQPpu1mFTPMz8YAKlGmy65NkasTM=;
	h=To:Subject:From:Message-Id:Date; b=SYcXCC/KoL0qHGccT9D5fe/kfqXld9WfnN87oCeLikWJEyQjAjTm/HJzBUdZ6dSdHE3wUwsJ14kdhBrEm2LFqAWYhzVnkYOISWpTst0RCOP3dF9NvgrZVpqgnerYkXAjM7V2+3vHE62z0wBDTmy6ZngjcxtZoQWOx4lZkFyiH0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luvvLhpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luvvLhpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71CDC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788835833;
	bh=s59UnuilN7LzuO6gQPpu1mFTPMz8YAKlGmy65NkasTM=;
	h=To:Subject:From:Date:From;
	b=luvvLhpG0RZWOli949xQGfgcwj/walces0G2XCl+aIWK053xuFudlK+PGuYiS0/tD
	 b6DaENUxUI/LNlcob8mrS2gQnNgTkDGjAoKsWnsK4LaGJ2UwmZTq4RFnsL8b/vR+qX
	 w9ld7ZgIHTjAV/60sphqtXsPIMfYXEOfCtEfc3w57NL5G9HmnthSakngjbMNzR4nck
	 yj/ZNXjO99zLmlUQ/eu/tKLL9SkO2TfGDQY1gkiYBbU67vvanZ3XBmARen+bGu8QtL
	 yJLqBU2qSU0N25vFP7vewGrXBFXDnXa9JEEeBLeWKWFKYHkdu4g27X1gRUc5CrJzm/
	 GO6BjD5vPNJgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30F1C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178883583372.18753.6472080237848120706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cdd9175fabbbebcb9ba3baaac814aa7783928577f4fdc7a6c1f27dd8254c7fa
Date: Tue, 08 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788835833
