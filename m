Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499A33B2BB
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737695754; cv=none; b=UFkl0f/cD8ajAiOolL4By5pBGWAlgA7MrVzgHO2szpef/52HYcvEQQbK8f69sNJa+FSrNcUYyRxzSM3oGFVabSuv/UT5bmqj5pt5krt/dtQMbn6Uso9tGeoZmYq2TJRgIQcmq9BnxOaTIUbNKUH4HAhNSPI+sb8+++7EehwBNT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737695754; c=relaxed/simple;
	bh=oFy0kVQ5vivqUbxquOHO6l2U4MuIMJxo1ODrESulwtU=;
	h=To:Subject:From:Message-Id:Date; b=WezFQfs400UWqycRSFdgSNX2vOaTWbIEM0QApJhakHGUgWwmV8b3KAIiSzbIbvwSCEW2orR5xSrraL+wDy8e2QDhIwItuHHJLB+gi/sXcIqQHt//gRWuwoKWeSvwPbF9XBX3Q3ve1bQ/rPn7vc4MT74I80AFI5fozC3kLBzXwOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k94c0dH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k94c0dH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1413C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737695753;
	bh=oFy0kVQ5vivqUbxquOHO6l2U4MuIMJxo1ODrESulwtU=;
	h=To:Subject:From:Date:From;
	b=k94c0dH1Wbn1QXRNFWZZs6SbSpwCNjOpJPAyueIN3g7fjpEC8XA3Rf/B0he2wVtJY
	 YitZhAmTWqQ+xcaWZgW+FFPnmdk5cIxMA1rkiN1+O5l/4azOwtkRKmGvjhwsvmgbpp
	 eyFTM+MsPli19t+aNGGUmFhxO67n7bRg+R3EX/MzIr9aica9WuPPYyKsuQmzQjdIFm
	 Z7/nOiUi2IKGOfAaUT0bfXQtJfk0qwKb+rDSbkYkExArnIAyS1kX0G33zYQoisNQ8g
	 o9a3Wo+z0OiDyz58zcKfwVxEYpVgFCiDyxUr3r+62ryn/qOR/9WvEGs+y2OOXcUYKq
	 cK9dJFiEeU3PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BEEC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173769575361.29968.6633425164688641341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 087881c41ab3ae39744e1fe3a4ae02306134963793ab870d5070e1ebb20c8c1d
Date: Fri, 24 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737695753
