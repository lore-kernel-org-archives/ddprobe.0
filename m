Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A62318B96
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767818634; cv=none; b=oUrhuZEZx3UXHiJzejegh3Jv3ez6vEPZqccmjOFbcclrjQvIkQAPVbbaN0eER6eeGpAg4mlDyNL55qu6Pj5c7C/HrPu0ZBpnZFDDxyl1RbwwuBPrLS57ZTgC13aU9mP/xSY2wWFgXqKvQTBISzegA8JnHgugdWVNeqyOdd/wBKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767818634; c=relaxed/simple;
	bh=nDxX0LjAX7fNzWWiYxQxMB6LkkpLIAcyUfjTc2rC5eA=;
	h=To:Subject:From:Message-Id:Date; b=FyAHJeKkgqTMHGe8PIJqNxf2EusWjZPvmNwVcckmbsswlAv6V+IZaGIslS/PXfGOOJ67M8U+uEN1f0oG4IkNGR9Z+LITvuKWjsZmGMdG27f9XJQnpiWnGNQEz94P2a2FCar4Km8fbLlS8bTR6WbD4rHx5Jjg72MLS/FzVHH3RsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayh3IDfH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayh3IDfH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFE7C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767818633;
	bh=nDxX0LjAX7fNzWWiYxQxMB6LkkpLIAcyUfjTc2rC5eA=;
	h=To:Subject:From:Date:From;
	b=ayh3IDfHr09hRdmWUsiMxYHpeXnn/Z8aO+jac52cY841W4MQNakDhFuETnfR8QWFa
	 Um+MDuKrttQq/jruVfVtRgFN7u/k5xV83ufHe1iLoYvy7sIV39ialceDMCv2JjIWZo
	 9W3F6lF6JGH8z/i0ZFHOoHgySV/PCgcX7FM8lstQNJK43R/j4eVKUzEPNFe3S1w+7v
	 3bi856XLPQ8vBa0blenVSYgfUChHW2IuZouVPxtJSS5VOv1gJZMaTD46/caUuwiKe9
	 0cCOLfcCxn0ulbOV3DMfqmSZKYCVQoWsraJvOkHVkFvDYWK0wVyDTmMMPd8MqYZYs4
	 lsK+o7GI1YXSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F112D0D171
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781863357.11854.7799505163425986921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e333e60b5567b442a913165d26f5f66c1acb875c8e74ba03d0645fd410c2c6ec
Date: Wed, 07 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767818633
