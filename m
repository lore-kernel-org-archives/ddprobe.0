Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB2E23E342
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770954894; cv=none; b=DOk4HbsGBWQvCqHDRU5IhOuiiZbOD5u2WlOjO0Q1ltSWNNtK82qlRrZFjpzMGK9gJo6BnX87q+C7Ht4fy4xKhSa+gQ9Fe7bSzZzG8sHRbKG5DSr/G4Pk2/FrhikAAGY5zwqCll+K/iJi9XTihuFH0kDqp4saNN4VdyuzArFpg8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770954894; c=relaxed/simple;
	bh=4awlwPC7s9pHRiKX9WrGA7TSVbZ7AKhk+evJG/dUyVk=;
	h=To:Subject:From:Message-Id:Date; b=l4rlveUZzzVwaoZ27F62gVu+9cMNsq70x+ZrLN7jQsOsjt/hYMhQbOumbfPPRAECLKx4mw7Ki1Frhm+pBO9+T+HmjM3jyT+i1thTXYTlY8srquMEE6gkMuc9l+xxf+DH5yKuz8DrpSt+PLUrif0xMZpeauqghx9zCg3uVgHYs6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiJVHtP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiJVHtP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF2EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770954893;
	bh=4awlwPC7s9pHRiKX9WrGA7TSVbZ7AKhk+evJG/dUyVk=;
	h=To:Subject:From:Date:From;
	b=MiJVHtP3VlSQCM055dzadUnW2F+CRMk1IHdNQ5nobN/Q+tmnmlrJLixo/fu8uLMLl
	 iEg09WdGVDfpK3/lpXEY0RdUfNAJ/3cLEfpOhSNVN3bR7GX53t0xSXZepHOhZFYKwQ
	 B2Ipm/ZpkT66bW5YlXTOQbQQtoZ22lYYuDvRkJQvjgKfAduo5ZUDzezz17xBfMeqDQ
	 pQ3HOE1JT3ZDIECOyaKxuaSpnpEKOzIgVR6+3CfBIm+1XGrsrA7ZS5SjIJ7RhE9TfQ
	 +9IXcDmPf4F/LgidRcL8Cde9PlGWODmMFl3XsLKUYSR8uFvbvT6nreqLdVde9TOSFT
	 v2iP6lZqhEqjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99C2EF48C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095489366.15292.4509320013948899716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5677917936ffd9851d561bee3bde667decab82276c147f2bfbe0b0bda815bd64
Date: Fri, 13 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770954893
