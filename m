Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C800333EAE9
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763654513; cv=none; b=cI1IJdJHbsOLHqz7Y3XRYx7ygiiai7pvwD/5CPTZ2EiMaN3b63Sqo8TTFN0zjB2zDGI5rCE+TwiTl6Qc/Tm5II9XNo49N/nHoTUKqcLFQs9D8rREjhmlU0WzkEaSJh5RmkSjv/nFcLF5FJx7d/1WO6sMC7Af/RGzzd03bsoUUEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763654513; c=relaxed/simple;
	bh=SPQEIrmgENgBxzOCZfPKXKJeehVBuqA32otCs8TG35E=;
	h=To:Subject:From:Message-Id:Date; b=iONOOLUJG0Fe0OZ8ojSbrH6KZQSRgEMmKC+vRoIM6zvfdmKvkDVGitdqMCvlixTTtJtnCu/Uoi2naHlE2GhjYztMMgbKV77hP2h3AcBhQ6NfK9BaFyxjWwzU1f8EIaJFx32z0aQP0LgmUbrqFgj4qvWkmXB8ZHqd/JvNIT972as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHuh+sL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHuh+sL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6550C116C6
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763654513;
	bh=SPQEIrmgENgBxzOCZfPKXKJeehVBuqA32otCs8TG35E=;
	h=To:Subject:From:Date:From;
	b=nHuh+sL4qEH52jBSaRQh4pne8Sg1XS6u+ifcJxAxFkg7ye2rDZF6FvKAKFygimufk
	 xUYvFAbxDxSZeDkw4O+1QUCeGGf26eOFDwX5ipPXBdz217t7VigVT2r4/WOYkSBqd1
	 Hm9f7WP3zAKZA9SHx6isZuv72DQtiIWS/e0FaSt2MhfNzDyauKxq/XJAlpUxqAYGdb
	 flAQkke/+JdaS/gd+jbkRVkIywRkM8K0Ex7b94/DYV5qWt066gU2rHCMozf8L1BJGK
	 3o8/xm34gvYEYhY41KofgEGh9uCUjJAuwuFe7wBmsMbGjhiWJyqcN1oYxxInxYxGO5
	 Gk4D8wfc5Ytyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929BACF887B
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365451358.22145.11880507029021205137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24b6f3779a31f6d686ef17a70ad20d001c700dd749b2c8cc2d2d6fd084fb882
Date: Thu, 20 Nov 2025 16:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763654513
