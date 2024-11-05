Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2868B23BE
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730785554; cv=none; b=YQ838+BGXS9L5D/uJH9JBmphrXJadP5SOCH4fE08vztIxPs3SYV6PWWRXngUZ1r1MNqJEj39n7ncF7MHvfFaTTfDrIhAKoKeppYF10dvO+vIKVe4zcQoF5gG4UYW0umMAe8KJfdRrXtD/5MZjvNHBp9USbzDnH2yIaPe5wNys60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730785554; c=relaxed/simple;
	bh=e/F3zeO5agFuoezOwmAgeRTd9772gslRRgQfG1k0Y9E=;
	h=To:Subject:From:Message-Id:Date; b=YMR+sboSrQ2SSEh+XtA/8TK2YjOyhYa+LCF8N9fPQQP0Eyov23KziI4ReabD2hNW93QxTiSDuWtejkg4O9cVYvA6NpnZe88DV5vaXj2AoSYailH/Wc9ioEAIas203ipUQ2Py+QtrcNfw83uIqgQpNOzgiSlpnvwEyygzHv2gR1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBeOG8An; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBeOG8An"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE84C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730785553;
	bh=e/F3zeO5agFuoezOwmAgeRTd9772gslRRgQfG1k0Y9E=;
	h=To:Subject:From:Date:From;
	b=XBeOG8AnywPJgudxBWbzuj+ChUESIlnyENLZZBBXtadbM+vW4sh/AR8ZOKpdUBoe+
	 y18ICR8yArrbwZpB8dJK0Oc69G4V2vpJs+DQL7aEw1hH3Meax37K00WmH3jThwK+qN
	 fqVXDOYLo32mM+jSp9TWrjewRJbLiEd+qj1/n9rn+SHQhSn9xCrzq4L/Ta2aW7U/Y4
	 e0bUkXw81NxJFdz0+10Bv+oXlFJdiMPZXpV2Q+HQt+z3djX7W99EWxw6JdggI8Dscl
	 oM+K3/zBccuBkg3m0PB0L1geLG6TOxJOkfJIn+Q4ZdyLz5xAICYNzItrc2LPR/db4W
	 2IdwHl4tmJzsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9547CD1CA2E
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173078555360.31620.141162095608026934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad3c739989db742610812164a3b233b3d1398f3350ea457f824b3bbd4585126
Date: Tue, 05 Nov 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730785553
