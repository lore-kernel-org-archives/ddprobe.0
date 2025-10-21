Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C82242D7C
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761059394; cv=none; b=sq9Apb01Krgw9k1AQYxRdoG74qfeHGFJEUuCG6NEzCEu43Pm8zu3XRjWDJGFQJC7cdR83wHhoj+oYYX+nc/aRVQxkJCLyPWHNJ6NOPpiEEXMkAlLG45oncPLP+W9IAyYF40GRimSCUrlhzIFlKeTLUxqaZmtO8uUuEZMV5G6T98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761059394; c=relaxed/simple;
	bh=MfroCCcLQopIHSo6u1X6U/160FSxJKrSJ1HH4PNzLqM=;
	h=To:Subject:From:Message-Id:Date; b=k1rqrHXeJEktbwecsKa9s9bx7ilbFx285MHLEwu9DMqFTldg1/DQi3X1hJdU+3kCoDR9rRW1T0ed8o4bQeSCK/Smkrak5+Jr0MWc9sd6eKmK17kzXhFE1gS1HANM1/XG3NtiptueDi0fQ4b301DZMPzcieKqGaU5Gm+DlD7DHNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdwCDbLs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdwCDbLs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AE0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761059393;
	bh=MfroCCcLQopIHSo6u1X6U/160FSxJKrSJ1HH4PNzLqM=;
	h=To:Subject:From:Date:From;
	b=TdwCDbLsFK0lhlSLmZhaS2UV/9+iT8kBk+UQwjEEDrXMimxika3MvqrJGzdeS7vL5
	 5QX2v0vZUW/Iupjnny4Xpa/KNLzGJgnCNrMIhvKnQ9rOhBV89QMAunDyo4jRk+kYAV
	 nxPwf0MCmDaYLc0FO3KpIBO+vYin5uyXwtw8Q4LuK1BsMWrQ1psOtQHtyA8mHA7v7+
	 MYdCJDJ+9514Vm0GC5gfnYNRg5d3rEjhH2aX2VSq93lr5IrHbGxRVxF90gmv1gnykq
	 6Q/tr3Pd53wv8qvy28LwcltUarwueu7UK/EiNSwLhoyp1XbpESNNBzOfT76ahBGbdn
	 sQ0zOQbsneqdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9155FCCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105939358.20702.17920799728494598033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb75c250ac32fa11724f9a184a6bb1a54bb767c37fc4603acd92338bff110464
Date: Tue, 21 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761059393
