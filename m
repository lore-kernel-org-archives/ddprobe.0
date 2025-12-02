Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1E9301473
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764657174; cv=none; b=KMAQGnx/ahCK7jlaZUUNGlwBX8SY0Cw0vv9EIdAlSIQ0GL/MyvmZrtW5BPRUDw+W55ia8eJvs1HLxPCbaDkxS33VnzVjLb72Y4Ie4i6hshGudckZz0msYX+cW7wodOkKZzNQk28l8+7wTztW4D7tTqPWD9eZjyrPJ2whEmb3u10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764657174; c=relaxed/simple;
	bh=iCRj9lFmZIxMU+lyZgZbipQkGmCcEWxOp6zUe1r8CFc=;
	h=To:Subject:From:Message-Id:Date; b=DJZyRE95vS3vMKjx9prFd2hN3edZqAmFwVflzffKpCBUoC/oqW1jy3OjwVSc2I4Opq5MpPryRWulO/xHXfUSj3EnPN8SAwMJDjy5qE2nnMDIXQ/uyVuqLwMwBZdw9Pc+EJLwxv4ag/vO7VUTJ+TGkzq+L4U5W2UO7v0A5vy0r/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgoWDNtE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgoWDNtE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764657173;
	bh=iCRj9lFmZIxMU+lyZgZbipQkGmCcEWxOp6zUe1r8CFc=;
	h=To:Subject:From:Date:From;
	b=LgoWDNtEDRNTEGo7FcxnyLZNjbmWA0NvuIth05nE50sCCkVFkdnxRhzBScOLHe7Yd
	 8qZJtne93PLapQLU481rUKYuhgfES1e9HcXYiZjqxdFr0E6Fx8zjJRmWmnkatEoeo9
	 6Lqzp7RDZLv3hg2U6kdKXHin2cpO2bT5j50QK0f23JJb1cn4S/us/qPLdDXHJmaa9U
	 Z1s8XrEPybWr41ciO7CaReh4sSGXIoTIkbhL9mnKRUHCtVb3nVa2BLG+/AwKwc/uu9
	 nO3YDVXNE090A9jihLRQcmuVm2up1dFBwGLbrKaFRWQDgPgORUE2GbqA63HUbWda9Z
	 EBeDeyumOH40g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA5CFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176465717358.11548.13022517409738806031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d37083d71fa5fe6ee3f96e4a769fab62c664561686b5880f19402b3377e2a600
Date: Tue, 02 Dec 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764657173
