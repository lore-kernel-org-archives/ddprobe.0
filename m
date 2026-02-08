Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A842C237E
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770522834; cv=none; b=qMwNFEdSzQE+t38GOVe0rPcWMdL5vfB0F6n9RjG+7P/dawM3Iw9XbvRAVD5+qeICKMzlZFFjDi3LqHC0EWL5+4SlKS9oYkV8JlBB2Y64vs2JxBIBGsT/C3UxFdZmsmLoZ2HJAg+LHK7G9moSlWDpVyZoWYX8E/eQQfA9AtAvYzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770522834; c=relaxed/simple;
	bh=fBKcjORHkOSlGkFTIgSmnj7vF1wJSt+K9Jq2NEw44M0=;
	h=To:Subject:From:Message-Id:Date; b=aCCA+tY17k1YqJQeBreJ+9y6L4Nzy+wnBBuHzWSWDwoPy5omTW0wI3o5UUHYKEjpy31H7hIecynodRq7H6atIMzqDmJAsOQhM5fC0W/RXGqJOlFf4n7nOqYvo7ZkndMcIuvr7Fuophpc0ERLtaDbnA9EVNOjmGJGBS4TtUxICAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHWe/TsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHWe/TsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA114C19424
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770522833;
	bh=fBKcjORHkOSlGkFTIgSmnj7vF1wJSt+K9Jq2NEw44M0=;
	h=To:Subject:From:Date:From;
	b=VHWe/TsVVgMEz0ADDwaFlk1cIgZYVjHllZInaRZR5iDhGqNW54StrWQAzA+jVUoYC
	 fj8IzplhVXYWyrEioJLHcfF4nJHyIRTEcy5M8bWXUDgDVyH7A7qPs/sq0ilxFomQ7B
	 wO5i3XJsexxUlYWT6VBwBX0BZ8TIJmHMiw4R7EomsPOACAuUqqWHXXSXP0Q9KSEM+v
	 VkTDdQVMSmo3hGV7a8Fhq/MTeV4pBRibYPqIc7DHmFpF6I4HizqEzuCHfGJlFF2PAi
	 4dMvAdbTC+EIVZp5U0IY+KYS4qdHFvOZjmtAadpy5J+aRlMoioDzhgiPXGt9yOYEKE
	 CjEBuS9Mmd8/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98139EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177052283358.30845.12363394265060350140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1069f1dc8ced4b2ac17d0a3cb6827ed2cf2f789bf4e36d498a8391ba7ce00567
Date: Sun, 08 Feb 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770522833
