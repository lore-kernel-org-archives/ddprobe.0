Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9EC1474B7
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728942354; cv=none; b=RV9E1p1J4l4lF5OOoar4QmiXL07AEYq3zpn+526rYZxTWYNVPYZocl7+EO8VXwtii87KsxXznveGNLNP/1dT8JxxvtQwTBTBg2Jkgt59UOGomk6GCtzDRUubEbJIbpeoYjeE/ZiNZv/La2T36oQmXKGIuGKbAwXbfN/j01L2cwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728942354; c=relaxed/simple;
	bh=C7EK+iuXr3fAcUKykit0eSkBEmfev+KU7qy/0HZW73A=;
	h=To:Subject:From:Message-Id:Date; b=acauFdEikKSeayVf6NaKBD1Sy2sC0VIgxRc9xt3GkG5T86jYo2AdGvtcKdZGqqIvx21yKQ38DMu71TtRFcUcmnAzxc6KOqvbLgjrsEUD57hhYkxq0rCwqAZJXW7ZBZWZoXi08dCZBxoTnv/4eJ76+A67dYeTSFiqBy/TY3Q+w3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PwQBIbjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PwQBIbjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19ECC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728942353;
	bh=C7EK+iuXr3fAcUKykit0eSkBEmfev+KU7qy/0HZW73A=;
	h=To:Subject:From:Date:From;
	b=PwQBIbjSh1aZxZcnvHo2UFT0X2PIr8+NCcBb9YdVM+4ch9Whx3V0NZBX4d7b6nP+x
	 ynIF0/U+R4E7MU+jgKpKnfSkSqGDsAzXxK6HtUTy/K10EWFQxLFXwQ0sA7MVKDooEf
	 NwiupkvvTK2JVH3hTjqztdBitDwx/eRW0uopsB+vd8JpOpLtSeTqIqS3xSV0TnNvxD
	 fiyrUfmxPu/oEtTB9sWN6jEJUxYxO0SoQyGyvSgl3N4W5jW2k6GM7mPG6X1iW3H0mF
	 8Kvasmc43LlJlI1foJEBHOkId6+5Bp27qlfZPjYUoBPrq6eL+sMXsx2hk8asPTKYAp
	 i9PEYwJUw7IFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E3D18153
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172894235357.21679.1567036191765645234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02f7d4e13fab7417f9bd195f12f79fd54a810f6916ee56861ca5c68ba8efd8fd
Date: Mon, 14 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728942353
