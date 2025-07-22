Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3C015530C
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753227594; cv=none; b=j2+TybZ0aCydnTZ2cmII3/8r+BJwbk3jcDr3994CCYEx4F563i+/+vaOgBmtxOUYs2w4hjDcCULBwosn+rvn6KuQP3jOny8qxbY49YC8IJSK1AK6XOrYMn7f1keNtvVXfBVso/oGFEqDJ55zJQLO5sr7V+xxlnmLyHBxvhpdEkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753227594; c=relaxed/simple;
	bh=j29LbL+cM6P0uCv8aVlM/XwT8iqknjZQunCN/jY6dp4=;
	h=To:Subject:From:Message-Id:Date; b=jbgHZheYFv95oJud1LiKgMWaRJ9NvDCyqyP/xdfGQnVsnj0fmrXEFDk9Ubdh80FroiuZWkjqth84JiIB2xF3IKyAbq3lAYqhIUHJz9Vxg4hb9xGngXUwKh3nDtIgcsc9l4bRhWjoH2epGcgOA8/dnhcAnFCKt+wru/az0vsG6lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQQjucFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQQjucFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A062FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753227593;
	bh=j29LbL+cM6P0uCv8aVlM/XwT8iqknjZQunCN/jY6dp4=;
	h=To:Subject:From:Date:From;
	b=OQQjucFZQNWdjRrdYyOdi7PjCTV9eh/AzGJhe0vKsPnjtYrBfpCrPAmdRpR036B98
	 R7aedvfZB9vi44Ik6rQucqb47WGO8KxDKsnTU4M1nSiDVn8/ICZr+4tzlFgafrY3Ix
	 2cqT68V1ds0BoFOyIwpaQPcJH2nUTAEx68Lu+RjidUEk7G2gGDr1REvtsQAI5qpaiJ
	 9qR859cj32ErQZFpA9KOBlzce5T/Wa86TlRvkWUh2fCMZ+sdwyUMutkBPIfDuHqvzw
	 mw2XPFFJcJt+lw9P9m3mq1fqZxgKYm2ipQ94wSUQ/OUbmWSJft7PFuWm1n/CVUQzko
	 gMsqBkRyReV3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBDFC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322759357.1928.1188573816007038117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c503edcbd0cbc523d72c0af381c8001c4b5ced0dfef377ab883f12c7cf42c70
Date: Tue, 22 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753227593
