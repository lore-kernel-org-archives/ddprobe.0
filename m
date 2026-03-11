Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C6A3C3437
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773220494; cv=none; b=QWJBSemHUguCYY7J7FWCQ8QS0JGJ27xmJ6JO1SfKgV4Oti3gWsDegFMpNNLxYt27Jkhl/SX4K9kn8cciggcHjK3ATplBxLB01jy4Xtk8Qm8ZBndUPJdNeFtvyHZOdK88q6XqKS1GbKlXpx0/S+G8mB/50Wi4ffC6th4gZbg9g/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773220494; c=relaxed/simple;
	bh=4ArnOHFGGgG5ldcqGLKkEWjlS5PcOVl0twS2QaC6QrA=;
	h=To:Subject:From:Message-Id:Date; b=YZNWlHzva+OmCl9lVYp6VDxFLk/VK6393YyBgDgIKa3bVYLCOHUQKiIoNHXaSXUZXFVq/NEIvXekrFnHDgcR7VktUxDkJ2dkjQM62vHu/l66TYNvGuQCahY+kJVGbMQoNg6FF0tOty4QNpkjCYKOAH4asNwi7nduFNDlYKsXEyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1LoGhXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1LoGhXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1115C2BC86
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773220493;
	bh=4ArnOHFGGgG5ldcqGLKkEWjlS5PcOVl0twS2QaC6QrA=;
	h=To:Subject:From:Date:From;
	b=s1LoGhXj4lbW+1RGxS7RvGU+rwDrn7UaknxCKX84YW1PBsBRA5WI8ar3er/Z6Yvon
	 TXGDhf7Zk1N/B+eXLHtTOuncDgviXtwfIC4ThD8URNR0EvET5UkJUidTX9xtG0snL5
	 lfuCGthf0FF17QJPlf7cOerFQ28401sWSKmkqGxF7kpkoxk7E4pt4uJ4PaW0sJY5fb
	 MgARIT3Ign2FiJyFb4c0g65D7KnTnf18oHZqlQSZzWXpNcWJWEVAkycNjWannjwkjg
	 gVxF5rrxa7XrDL8GC+zcW0z26Q2YGsYnakGXYjWMXebD9497p+Psy9UPlrJyejmgBV
	 BruYLU7BdzQSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBDB1049512
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177322049357.15101.10240129336047182138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d438191cbbdaa8bda9274a794f5460ade17a50b82433568e5559dd49ac69c3
Date: Wed, 11 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773220493
