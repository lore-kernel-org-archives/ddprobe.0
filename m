Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50774371048
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783018714; cv=none; b=NePvsOReogMJ2ESgCl+8A1Apf7wpuxmUR5JxXBoqPy70R6XaYtAEPq6va/0V9iHwl6dBJINBH9rL3xRRGQB9m2aZ1TikroWhkbI196V6XLyxi0OAS4oysjjbZfkeIWbgytXhTWx6RY62v5S+9daBahJOxsBK/caH8vxTJEwBCEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783018714; c=relaxed/simple;
	bh=uWIXuys7JCFB3VTy1NWfsK1ss6sx2VizRfuQmWgULGw=;
	h=To:Subject:From:Message-Id:Date; b=nunDPn/85aAbe+iOVJ1kP9fToCF59TcU1HOjMx42c0N9LOjvBnmwvtE+G0Vt8mJDMUnRhMKLZ6ZeHugz/oy2WjwwBsGaLyrIYIQoNFdqqu/6rnGAMfKRvc74eNWeRmmoLaSGlmuaMJZjL5Mk8yU5m5bAXjarJAnJH8KJCSQ1Nx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4GBrQMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4GBrQMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC167C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783018713;
	bh=uWIXuys7JCFB3VTy1NWfsK1ss6sx2VizRfuQmWgULGw=;
	h=To:Subject:From:Date:From;
	b=p4GBrQMNOjqBD8/tC0qt8eAO7aUJVPAiUKiPyHJ4BVAAgxBMCNpEbV/deC6Ytwres
	 ISeF/cyWDonZya3edF3G+MAXQcTiBTRZEs13s05jMAYCsn4W9tKRZVEShutBXTW+BF
	 G8S/hvSCaJHChKK6MuK7w2XQvt5Uf0x25d1aIQwBtLiwm7aNCGeVCqsDCKAY/eGz7h
	 zwJ0azBFI6Gle1T2/bN+Ex+4iEc1Wli+unUvrlz+1zXe9TY0cYpyESewab4wTTLxnf
	 3KTGMurVqQnQJlNbfYeIe6020bt3gwfR7Gw6gyH4/ntiOqYaoV6kLpx+R764SY58zu
	 jXdw7WBOKLgZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96F4C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301871368.7620.3810910063254865618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d53ead32afc1fb48d59f7d2473a57678458b93bb440dc03893b85941ab368f6
Date: Thu, 02 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783018713
