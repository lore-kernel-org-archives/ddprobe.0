Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DA3307AD0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762464594; cv=none; b=txRVjs7i9woD2LAF4COt3uxh3ThO7ZfRQgGsD93G0GXmjvhJKmHObfLjg/Opvuo0EYt36PnKbzT8tjfB6cQFpZakrXLU371SWnYjgnTSv/17ltUDr5CmCHjlws6LkMNTyMANWX7C3etwpuo6dtTz4VcqvcI49gThXkQDexgEtVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762464594; c=relaxed/simple;
	bh=VQKA9Vt26fnR1urp7aNZ2d4E+5U/6VYsYmLBApUK2vw=;
	h=To:Subject:From:Message-Id:Date; b=AaGPk3+Tuqq74ddWfvhympOODl7Sc7W0dIvoNTaJFZyCPRPETOyaFk8RGQj6dUoVRe48kmMVUf7LO9hgXoWXeCLqYmN4lh+kS4ZvTtn128dcry9WaGlKd+zIkRxlU36hQQALHXA6DyfsY7fZUULeo4H5yVAm1Axij6fkHiyi88w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3r34M6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3r34M6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0220C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762464593;
	bh=VQKA9Vt26fnR1urp7aNZ2d4E+5U/6VYsYmLBApUK2vw=;
	h=To:Subject:From:Date:From;
	b=j3r34M6NvQY6w7snGb5AchCM84gSSyGbBVHtSdHQ9Ch918A5JbIXgS4ImlftH8VHv
	 pHxoZZOZbaCYT0zsuzy6JvM2RhRJSKuZfZO9H3jFJzZJcfsygAywgO2gE62kP9yBr5
	 QoZF17l3Kpibxj5OHBqoHOcGN5/XuYqC+/R+FlUKEPAvMgJlCXBPTdEfi4+ORxs2Ei
	 3kz/DRGPfp1dDkS3Cbw1HeoCESo2o5Z2iIBBvxgxxUyXlEqkrOaZ3m9Eqlj2UkZd4C
	 B/PSCM6cNfrEuzZa0LPYZxGvZoY5VRkukUI3PZ9OJtIUeqwNbKliLGfDySXPmy8bKz
	 TVD5EAzG5CM9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CAFCCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246459358.945.8568635401786735149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf50826d0d3c9c9e3aa6cf24c985c4ca8ae7ee2e309df7bcd261e30f757ba5aa
Date: Thu, 06 Nov 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762464593
