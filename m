Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E8D1F2BAB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754708394; cv=none; b=jCw8CR8XS6MU77SPPtn24C5L78h2g1VxBaAih7sve6RK7LPVhrJzHta80c4T8+qtLbu5ai8uX8MpfMXHFyZFsxwmxk5GWTzyLUQ4n8QO4vswYJrEGNvC5PYX+VCiM/ILgBIk3jlK+8ZWnWN+ZCvkoAtY84V9xf0ZVfk+Qah6BDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754708394; c=relaxed/simple;
	bh=6Ee9hSvqYisT/SxuZohdM1HtQBCXnGCvy+ipttI/+Bw=;
	h=To:Subject:From:Message-Id:Date; b=hd3mt03YyHBT8hAHVeUDlLpVtQxLsB25LbsdqdeJFLf0+6I0JGM0M6vYCBb/kjSrj717Lhdhbb/2l/o9tSfdp5qKuCjpr2cj87q7+tFlK6uofPuK7H/NkiSx/cZUOvMTYSQKIYiQL+umCmM/L6/qERzhYR1hUzLTQD2V6QfekN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcsuNQ/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcsuNQ/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B7DC4CEF0
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754708393;
	bh=6Ee9hSvqYisT/SxuZohdM1HtQBCXnGCvy+ipttI/+Bw=;
	h=To:Subject:From:Date:From;
	b=XcsuNQ/oiCIQGFfWZ39M2NAnRqG2qPfpVHXfPayZkh/X01X2gL6rTSG/O03r3XAJ1
	 ztI4u+78V1TJhtz+5i1HMBxV2QK7uaYOcitHp2/xfp4zo67o2+ZWoh9ztNzC1yVXAf
	 iqwxrgTdrwpEDhHMy2IJi2Dt7urv6vtzDsuqEQM42jAENIbyKT7kVL45XnmJfMf603
	 ue8agyRGjcewjSFyVQkD7Ye0y4PbCY7LZGJumUK7vl8Cwhm8MddnP4C2pVueeKjJIX
	 fFgt/KmnYa9Ovc/tEOXEc0aq9XBGCwGKDgkNkh2LgJdZfCSr5DySgklqDbVsEvbYfr
	 cP70dbBisqByA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94306C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175470839358.9621.8007244089902198620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1fc06c7adf64f4af4347663a3e48e79c65d09787e1ebb8ad5183728e5ab4d0f
Date: Sat, 09 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754708393
