Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202631E9B3D
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769493834; cv=none; b=QHqPaqEj0yrZ7u80iEkFW55YALAZTMgRn4kGa7oZ1u7dRtW30kzCQ8JAdKilwJcOUJWOI5eTuveOd4c1/BwAk6hqjxwRl6fEZJdiLNYj58V0bifkPoDxjhYWlhFLwbaSq4hDFLgFFRExT8RzqlI1Y1Edf52ouXnp8GkJYz7afNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769493834; c=relaxed/simple;
	bh=ZtKsmsp9JaHR9duP9CbbLxUuOxUApxX4i4xKWqN1zrs=;
	h=To:Subject:From:Message-Id:Date; b=Y7WUxxQkbkNA7a1sZz98SQmh/7cAoVoU764weCE58dP2UpTMMJ3097pC4NiGDLrji+SkTZLeXNsKFZECxZQldY5K1mjsVntAw3UGI6YcsPKKLcf6rajjz0J+bC+FTn1iBv7RAKNL5YzHfKtAaCTeKS51XW53QzmhWzaajgMhy5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grEf6vU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grEf6vU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C7EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769493833;
	bh=ZtKsmsp9JaHR9duP9CbbLxUuOxUApxX4i4xKWqN1zrs=;
	h=To:Subject:From:Date:From;
	b=grEf6vU9b5/ZRJzBO1vbw74gxyfoLSP0sP1pMejSIu3cIYZsKc4upiBU5Yu3qxv2g
	 sRekQ0UgqzweQjGeuw6nVYO/glp8bn4Lgnit2E6rjDkdFKVmze4wBbvZx76MW08TuI
	 sL/i+eTltLNy0KaqcPPXWMHch1kG+2Zr82diqlD29bn68CdfmTGePLCtbP1BClY6Bd
	 309DJm0fwpt/7UHS1d++xpBwyfoPMoDJebCHlCUzQXQu6hehj0tFrUnWOQQJ4rYLul
	 vqgzwY7h5wVrIq+x5sYpem9uEk3kCk9hww1zPyMfYVAxraZrIXiEUm5mLu0ejmDFP2
	 cTSqG1P+2D8yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90415D25945
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949383358.27537.2039280661576519509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2d1e06c61fc193676c27984776fa4d9849607163e691c56f51b4bd87aa3b27
Date: Tue, 27 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769493833
