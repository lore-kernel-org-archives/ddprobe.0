Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A0D2BE02D
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764649374; cv=none; b=Mq8D0RW6PTHOPzkna7kTEwDGEw8XcJ7c5MaX6PhXJburxURRNTdCewfk5R7/2nrHJqBXYuZkiNz6Axry67KDRRc7D9fajsmQHZISPrmnVXSJl7mYf47kXLTxpfGjfu4eIPJZ/gIDbREnkQE9wQAWJE3FNC3+g+GnzxCFVNmssu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764649374; c=relaxed/simple;
	bh=WIJ3nrpAi/wk6SV6lbctyGtKIhCYocXKCvYLhg/nApk=;
	h=To:Subject:From:Message-Id:Date; b=p0w5O9l3GW5FRGk4zrF8kzPDCEvzEu5cMvjFgbt4j0NYX8l9NyFboIXzmZTL03yrK8II9pzxiCv//yu/doaHGkDONbN5C9Oh/Qdh3gr4KHSpCcwQUR8rWGbGz/DKuPVJ2boQwu+S8nhT5ELqaNe2uWGgdPjlAwMbvBHE/Akchc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZkOba6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZkOba6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B292CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764649373;
	bh=WIJ3nrpAi/wk6SV6lbctyGtKIhCYocXKCvYLhg/nApk=;
	h=To:Subject:From:Date:From;
	b=sZkOba6Lf4heQlfBYxafB2mI0zyjXKNmcxZsvbem8mMerDC9tgPQ8qoFHpW/SaLri
	 kP7eHDOgE8TLkjxLuxJVd/JErHZQICEmn3Luly2KDU8W74hcl/gMIaK9+GSfSTolne
	 JZTkMXnr0jKCc4iHZLZHP9roOXhIqZVcNJ4Lv2cPRryRdJMIJNw+GxnSZYQiac+WF+
	 JFyDN0Mb3VdECVESXp1sjNoiWPKBHbOEBirNMh6TZ9rUoH7xFnaANRwTuvNrRCAEyp
	 a3o+ggIGNWEb1x3FE2kMeVjI9ZODoxLdfWvo8nAKvcIHAxW7oppyHWSvI2/osVPdgS
	 DQJObXXhQZgCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2EB2D11702
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464937363.8637.17723742395009227531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795b2d2b5268b82d9c6a6696795e6022e274dc5ad352a7244f9e2cdbd9c86e24
Date: Tue, 02 Dec 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764649373
