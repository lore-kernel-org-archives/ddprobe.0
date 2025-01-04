Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250C71D47BD
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736019954; cv=none; b=HAUsrZ2dFK6cNPRNVo37UGaGpPfarRo/TSCXEdAz/aQpK9it60gk/5vOT7aGQqgEBa+izHRgDikAYc8HUhZTZFblNpkNNtUdueacX1cJZMsRTQ7R4Ci6JzKUVoI8yxe7RAsao00NJ8bMnItn7gkJgid+IPUDTjnb3YMQ93QrpM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736019954; c=relaxed/simple;
	bh=80G3QuVoIbxgfTYgDUzirHDZk/8AEWiR394zBjkDAVE=;
	h=To:Subject:From:Message-Id:Date; b=bqPPRADbqKqLFGcBBlTXFrNrMUB96rU8pQLCHE9l6uRZfHxcmJDnAG46q5IMdlw9+nIyawb95Guz4mIADt1kVQcuQ10TPcz05NwDXbMX+UCZyK4QvLB4PpvoIipxj4AVno04k8afLQmSX3ijtG655H7GAwr+sAqK62/SZIVt0xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRECOrXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRECOrXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA96EC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736019953;
	bh=80G3QuVoIbxgfTYgDUzirHDZk/8AEWiR394zBjkDAVE=;
	h=To:Subject:From:Date:From;
	b=pRECOrXwq9cL8Lqg7xal9FTp9yYgt4DICFGpShMgDrIKTwOdzrWn9vCyLCeouKzyc
	 k6feBy7wjCYvZdZeXKWI7F9f6d9EyoQ4ZTF15qiqis/zbZvMNXC8uHkDg9segqQPxx
	 sJ1l3VcxrX6EroTEKkR5XaKJLhpBy58HhmX8C73CxgL36Q28LEvZY/oq6+llwLrFAU
	 IgIUhzKwoNDq+dPQ9wcSHRsiHKUfn2ovrUOjZWHxfRyVY5TrJCnZPyfhjjBMhFEwYS
	 6FHlcagyXGu5B+7DZq/19zsMDuhmFwCOSEYcDpZal8S8halwjaTNHA1s3V9ZLcy8nq
	 Hz75/92oSAnbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F3CE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173601995358.3160.277475100137626460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca9a97cfe40739d159cfc3ed6128576678f896d673347cbfe0cf5fafbc14e22
Date: Sat, 04 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736019953
