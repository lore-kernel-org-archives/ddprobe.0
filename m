Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F240E450F2
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773788694; cv=none; b=Sy9L9Hkh049W7mNxZf5kTzr7ild/cm08/WGg4nDg12fsJcyWe+EwnyrYmZmghM8dmd8AFnsznvMWdqqaNwIhsOevUB/xQfxDGBLZ/5A7hqO0dreM4lvYJaroUfjjXlMXj6cVdMGWEWfWMn6KMY81S03eH0Jl3yvlQOXGWTqcZJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773788694; c=relaxed/simple;
	bh=vx15DFLSnQqA65FeCWsbbVVVCLY9RctrttDQb5ZegCk=;
	h=To:Subject:From:Message-Id:Date; b=Fry4gIfhgRjTRJ3qbwX8tXyztHCrsyBbS6TsPQtfqRvs/5dMudzWS1Fy7aocjDbrWUsFgHgkmsykqeXg4JEcC958SwxQcCi9MfSGj6I2Y2BBi/ceBX8QdaUHVt0gKfRY91ZtjUcPetNaBUpxamw+fjl5vx4TChCyWElK3mGxxZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUFNAdgU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUFNAdgU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A178BC19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773788693;
	bh=vx15DFLSnQqA65FeCWsbbVVVCLY9RctrttDQb5ZegCk=;
	h=To:Subject:From:Date:From;
	b=KUFNAdgUxRjdDCDggL5zkRYrZlztPisOaZubHqURxNxq1cN5+Dc1dZwOYjEyL9cU4
	 MoVzm56pJVJraoFFM1xcw4uC26JY7MIb2x3ImGMwRDfWd/16YKslFOsTN0UPlbXCqn
	 cmdnwnVMGsslEnUlWy8WMMf8+egrrIRfL7GVHJU3AN6GnmW2oC3ByXWSPIvNqEevBS
	 7S5pMrbDCrw6CiBLJV08DGvVW8uoT5QOul6zrOnX3yWaEclysr+UavXbxtl7BIAUWH
	 43e2+Yifpdyk+9TSKYqGYHYpaEs1sBYt53k0z3IHHtrimf+RSKYKKlLJdfDpawzyNZ
	 hZvWKxW0iguJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9012CFF6E9C
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378869358.376.13584840050103341266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06d16a6cbaa88bb5c97edf96427fde38b466fd851d36d52f9aa41539f6e3d19
Date: Tue, 17 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773788693
