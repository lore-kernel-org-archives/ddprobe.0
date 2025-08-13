Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F641E9B31
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755053994; cv=none; b=qdNWEJ0/KZtyLrpcojwM34vjxjA4bS8P6cGJ6I8ooKVMlrh0iM9qO4fQyMrQFHHnxPNXMU2eZlJb4Hbt5QOgmJtQ9Pjo53/fHUn19mi0nkLAVmaBGiwr2lxPrZwoEXc2hnj/ua9bM+D1w9BZUE0G+lDusj+NgoVPbAQXjFcGC+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755053994; c=relaxed/simple;
	bh=mAxi72OGTfszTJtBnoDyJIhM6Lir9Mp+FOtcQynyoXc=;
	h=To:Subject:From:Message-Id:Date; b=gpCj6puUdA5PkBYXYAMb55Sf/sTcdg9Eav0xmihH4s0soPdNgUkyvCi06yONGC008L5XDBpQaH3MU7DFVXquoceHDLMVy0Nt8xuaH554VX3aeWSTsjNoaroZFeqQdgq+80GhPrwYvj+EtrfKcY8tGn5aknHVGTaKJtgCOvKkn1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p97kt4SE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p97kt4SE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF3AC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755053993;
	bh=mAxi72OGTfszTJtBnoDyJIhM6Lir9Mp+FOtcQynyoXc=;
	h=To:Subject:From:Date:From;
	b=p97kt4SEApjE0euxwQEL6xYnOpotkZUq774WfSgJ39Drovkxt83PIju856PphKXlA
	 0DzlwlLo3hhs6dHZIsU3Reb/HtUw5LCuiWOziGNawCkkFOYgZrpzV+F6TPzrbcwHD8
	 yClG6RkuRaXBj0seBpjXiuvkO9Ty0XaWp1kP/jwLqbfdkLqs55IK4JAGqY33ihhckT
	 /7GHtu2YnAIn0WhFqaIGAPiQv4PXqOQBuWwCL6fIvquwPgCrzqhLYxIeld/ihvjoCf
	 hTkTaEbQ4GNRaMn287ZyOHHOLAzWiDU2IKQ9D+w2w2snKG0Eal+Vp4CPA4Tzq4UXCu
	 OPMra4K0DpSbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E785CA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505399357.31449.16772428526347027127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409f11836fa575c8c6c624791a5aac4124bd4d86403fd272063bf98127305d5d
Date: Wed, 13 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755053993
