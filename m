Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379F62AF1D
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766612034; cv=none; b=MQk5NWSaVZpV5LsYt0udmieiYwaFqhazuvNiCr+Y42CRsSEBYTdnexX1eqmJl28lHfBkUA3HRgh7lUnz0grcwcS8P4v1xQXbytCOYrWleUnDXmQdALKTbNaGfE/QQLwZZE5znkwwrB1yrnF8AYuJG/2q/pskT/l1B9TdFSpMYFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766612034; c=relaxed/simple;
	bh=kE4lqU4Wwz2XXEg8sLf0A+n4lJi4pE7PLz3k8yYtfS8=;
	h=To:Subject:From:Message-Id:Date; b=Gu22RHLsgD1787ntYXmufADGils36YUKNOjyvvznp8jB9W5JkfmaXQeROPfXb+oa3w4fvhQQls9iteu7yBINe0u2kkUz7qJapPfpGk7b1D75NDYHMnWm57q0epw6nn7I817CQdIoYErumFKaedBwBR+R/TNCrKvP9ZfFUaoyVGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXXOgPQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXXOgPQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B25C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766612033;
	bh=kE4lqU4Wwz2XXEg8sLf0A+n4lJi4pE7PLz3k8yYtfS8=;
	h=To:Subject:From:Date:From;
	b=kXXOgPQenpRI4LOZACnIu1He1BU1JqupWnyNtJtuY65OmdaiayWVkpzaNG5EP4q5Y
	 3A7OXLRaCow8i9Rf+qVuqxcyKvZa+u0rXmr8C2xfYl8MgBLc+iXpmMD4uVtNGrh++Z
	 FWN5N17wlfLYgJkj7RxDxa3aayVqOz0y4D/iv4PzRNlaBFf9zlpm+6fVzv3kYNqNYG
	 MZKZDVkgiwQ2+TTP1+xR4m9zfGUOgCISkmhfQsF0Iqt7/5rYlwaxti1sFZX36TMcxv
	 rv3o7odJV1EQ/zWWixWve/BVnUj2z3ZKQs2mCN1xxYY1jLyIbn0LbvW/9NnD5WoQ/6
	 1WGnwmzMLroqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924CEE78496
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661203357.27457.4643901494412781083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6deb197129857146ae73c31830c726e811e01fea471f74f356b2078aeb1f050c
Date: Wed, 24 Dec 2025 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766612033
