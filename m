Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B199217F33
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765634574; cv=none; b=p2Ra0b+L6b3TkeGEcUPWvLO01g2ynHmlMueayLBNtYI5SsLPfZ/E9TEAlLbw05HooxojIangu7uyyheWTOlX8FsSlxESMuoJhtee42D2f7eK6qYsTROoQbIlmv0TXR71X4ZGZGZJUsYgSnTRNota1A/85Y3/coZGW9ribuzJA9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765634574; c=relaxed/simple;
	bh=ee3uGkl0/p3Z5Q1j/hTe+lYLo06nOpnRSg8IJr/wJlM=;
	h=To:Subject:From:Message-Id:Date; b=lABb/8Hi3fW/l75rx958CrAvbZnH/hKhRjJ9gR/Le/Wfa4GVcPe5snxZptJiHo0d4a0+BCCddJP3WL7MkwMUWABou2EVIVcAeU9Oa2uJVTN9DelHYFTmtA/liXBZAio8RIOfrDuEomyDdi29pJVYUGB+KJ+mC/X9vTGh2qAdWc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gt/+LIQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gt/+LIQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72F0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765634573;
	bh=ee3uGkl0/p3Z5Q1j/hTe+lYLo06nOpnRSg8IJr/wJlM=;
	h=To:Subject:From:Date:From;
	b=gt/+LIQAEYt2EPlsfbx5mPf2POEr/8fNM2SRsoWJsVztQnUoeYOb1n17LJgi/yU7e
	 D5T2Try56dAUqTjZDlttPo6A9zkC6kRApUhMX/CNHqLnQIU9oRyH6dmYfxulLeGkNF
	 QHKva+QiFxGSZc+2wtdnnxmoP/M5m1F/pgZD8oi8UaANUnU+nm1/bYEc5tCbocCUYA
	 DJYePkx7DkHUolq8q0EnRMraOJS2BuhgidjqKrhSNEZos5SM3ZAY9auE4TQb2AHJ26
	 gkoBZ2ig7rMIKXVb7MmnkSdgXQxDfpnnfwF9Sstw+YU2214lKtH9Ah+u8M4nqWb5kx
	 fIz3+m8SYFKbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B9FD5AE41
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563457359.31726.10041524849374169341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9d7d4a8f1ae0bdaf9dda11f90fd5e9c0861da9420512d8adc1da2d1ecc7684
Date: Sat, 13 Dec 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765634573
