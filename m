Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079961A4E9D
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750082994; cv=none; b=AIg8TCN09zGrl/a6Ks+raKnKpk4+dzqXGVt5x5l6T0xnSEWJPzHGj06madjIavIfD+KpRgdHeJT/lW95EG1iPYnhLTAjqytm5rmAORML90s58MGKHW+ULNjZJVVXIrrIJNqFFrUrn8XGCWMxF69s0M/T3N3fiV1Yt5xWDwWlp8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750082994; c=relaxed/simple;
	bh=l7EbYu1ssmx37eVRcHoJ6piR+2NMyMIMrgGVFGTYO+U=;
	h=To:Subject:From:Message-Id:Date; b=JSH7PKOOSknQsIdII5eTSjJGau4mH8HF2BPu2N/yY+9/YlTiCMuFI5kKcsDNo4OG+rfhxYHNNH6htY9OJk9ImpEG25C5cSe9qGqlb9vx4qw43ayRHzvFDjQPlDAzv6VF9DMPU8jKybCJuEP2sKWs0ky+iCGaROvCFDd1QpWd754=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hO7PXA8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hO7PXA8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F3C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750082993;
	bh=l7EbYu1ssmx37eVRcHoJ6piR+2NMyMIMrgGVFGTYO+U=;
	h=To:Subject:From:Date:From;
	b=hO7PXA8DQJwPPcc6K0k2WJYOWSAAEUQ1XZyg6RcLKXINUfRmxnnMlG8307WdjMhj2
	 Vk4doX8jZ1CiCbLbHk0FP/4c338zJzOf+I9oi4AELKayCQbKeDFXhvSgOiwdg7vN5R
	 QwKQZqiJ97MrJ1jUpykZypU2MeT8tXMyi+jlLdDxeaS4GOHftJT3vA6Wc/h2OiUW5B
	 fwwpY7rJML/Bc0N5R23qJYJu0yRSjV4SShvwexhDUbiwYRxbxvUiOLOzBV0Y19PY20
	 o4VAKXxKGtUGQeZa9prLDhrF7PXr3KkLV+QzVHG3OveAqnvTl75PInZf5IKo3kPBVi
	 M7cAX/0eN1dNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA21C71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175008299358.6002.6517787150002224099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aeaa5b4a24e9708ddc65ceb9834c4af14d3f37b12ed5e00cf17e5234b79a60e
Date: Mon, 16 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750082993
