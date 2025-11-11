Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EE0283C82
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762826994; cv=none; b=UaLYX0vxQaZCw3BpGlpgLFHRjcvMgTyu8T2b0FrVu2RJnAl0o118eatGs4TJv+UNbWCBSdQ4b//4xz9Dd3LehikX5m+ioxmRJQOY3Mp9w2rQYUc51vh2Si35+x9UJZYK3FY7bP+XwtWJGR6tP1dKpbzOgweflB1UNy//jVh9Jx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762826994; c=relaxed/simple;
	bh=hp1qVhuOItLfuqiWYadqwkerN84i5ZlWbtLRDUIL5HM=;
	h=To:Subject:From:Message-Id:Date; b=CHh8e4sM3TZdEF28VX9u8eL/kcyKpOwF056T6bGyYSWaQa8EctEqtJgvcrNEgzZauACWRW+3aJialaQpVUIUeuOWSpIP0YQV7P6kO34n8GFKpynjXqzq0b9tRnbjVp2aGuqZIjPL6NgClHstQo7SoG6Z41dgjZPY4nJu2eWs2C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DX77sm4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DX77sm4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7384C116B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762826993;
	bh=hp1qVhuOItLfuqiWYadqwkerN84i5ZlWbtLRDUIL5HM=;
	h=To:Subject:From:Date:From;
	b=DX77sm4OuDmt15VTHCFGkYMO5dC3t9i4i19i2lefCgYv5fELM50gOCiU2oyew8KmA
	 I7Hvv0awzNRFrulLE/kXdHHg6q1UmE7vpyUFQ/pA8XC1RoU5KYqGR1baO0vBiy600G
	 mIq5ejew31TzGwBGLWCUiSEwENvOFRrah9CSwQQtVGz6zXtBv+BEMULK+YMmwAAZv8
	 XmWlt01JY1W42A9JA2TlHzXyITTqKJv9orlL3mN8LKMN2FN50nt5GNeVbMO68Iznrt
	 f0grrSuwbEIxpCRFGG8a45eWy6lZg1Nf4GiOzmYZQQwbfeonuo9aA/wW+bcqAXFjcC
	 q3ZyYsAS8rAkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964EBCCFA13
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282699358.25777.8293936249681454531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b5a41f60c85550db755ca27a1ec5ef88c19256108199dac191b6d50fa9e61e
Date: Tue, 11 Nov 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762826993
