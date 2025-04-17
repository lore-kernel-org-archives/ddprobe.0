Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5DD1A3178
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744913994; cv=none; b=dYUolaiQZ1dFpIiK0PUHVi0a6wqmudj0ceyOcDncyRxM4M8mYxA2QUpBK+lZeJ2oobvBAUhRs77lYzNSPsuXVoCJjNWpmcJ+44T5zph4LXQYJ+DbMYF+ai8OZPgYpDF7w92wJ+mcxzqTDtZO2XI24IaLPv3UJtH9I9T5bL70z7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744913994; c=relaxed/simple;
	bh=1OkklG32nWPZfqzskW9Yu70qg9Q3ax3yGRvd3rrsrvQ=;
	h=To:Subject:From:Message-Id:Date; b=jcSm35kJEkgq3sCyFemddLg6uyilZq6ZUvE1ENCWvausMjkuuTbUrnlHdRlnlymcRtrEO26V1LIKPgFcBMCYlwu+EKxBjjGDNIL6cOhPvCzLso22jVkC4I/lEdZbb3YVP5/ex4XPN1tBZOban0Z2II5nJ9jL4e07niREA9cA0wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEKgh7tx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEKgh7tx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02CDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744913993;
	bh=1OkklG32nWPZfqzskW9Yu70qg9Q3ax3yGRvd3rrsrvQ=;
	h=To:Subject:From:Date:From;
	b=HEKgh7tx6iaF92po+4MYI5BeFvipJSezO7WIggOgHy663aaBzoATI6uS00wlbIwGg
	 QkwYUJ56rxS/Ui2rX5WHDsIK3AiaV6KO5/ndONyOKw8ePT4kAR2nQbzM1XqontbUL7
	 smTk2xaYUL4SvtzV2+fGtGB8W2EP9DvOwtbCqaLsaZqXsa8i5zH9zAcNBR3K7PG3d+
	 032IBYmhOF5iWxoMeUGdauirFATptRlfrdtfryu6EOT25urYOFo8duBdhoAcebCVbs
	 BzChE04u3q1oSpgCqIpRjWd/5av1eklsb6HSmt2E9iVnk5TvkwKhuhM/B1egSnwRD7
	 b6qGw73rIvSzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC9BC369CA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174491399363.30317.6944216183517014881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a034f383440008c4912a287fb053d130872bb23448b9473eae8e9ffa81ce1e
Date: Thu, 17 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744913993
