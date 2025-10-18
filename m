Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE65264F99
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760763594; cv=none; b=fQzQyCI2RPpwPUyg/fDExfVciVmWCVrKY4SqZ7rMdnNmG9nMWTlEYTh+98OAy2lQ8BGPnjAVzpGTNTcf6qjT5PNMQBqWDIEVrslRm2/MPTAGBXMCKk+6aj/aY/AvA3+ObRJbKKTlnCPBF2Zv50nbNyYvtncsdQiTlFFc3LKznis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760763594; c=relaxed/simple;
	bh=nrI2xkRkhAtaVjW26YN93apdlh8LJglJaQP8GPNOAqE=;
	h=To:Subject:From:Message-Id:Date; b=sItEVcJdbIIJEaQUQOjVF89oIU65nD8bN9ky+oR9TSyfRjcddPvo8m0K6nauFeZ02sPDVgaIr8tZXXkREclJUXGUaL2Nhy7G7J7vrTE4Iqzz343oiwetc8R+ov+J+TVzKDannnOFQqdz50nDIssCcy1BRP0Lj0IEZmunBptxRNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLW5ubU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLW5ubU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36BBC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760763593;
	bh=nrI2xkRkhAtaVjW26YN93apdlh8LJglJaQP8GPNOAqE=;
	h=To:Subject:From:Date:From;
	b=dLW5ubU9uSwMZefbdnNd6uZ1esH3Kl1TxKLd2Yz7O+4Z4+56hQDBxULkaOgSdt6MI
	 TcElE3YgGwNSZKHfg3W+HNxk8+18dO2Dq4x5UO7Lf50rlYU8Lz3Sbb6pZo7bPz0CAZ
	 um0tA9XNrWLbmkdIvV+Y/4JH7/0N0o82H8+ERrZ5DqPx/dsAL/ZFJCToDOuSkQc3mJ
	 fowjRHwCkPtVSAu3ZXfovXYf9LN8r6mMtol2JcPhNx+xXrJrm1En9t4hl+uy9YjfCa
	 vSug4g9/D0f0/Paq+Xv/MoC/hBqDnjFyZ3Nd5QDGTXnhKvqemHyphNndDqMeV4ZD26
	 dGopNd3smLmZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957F3CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176076359358.28653.13645326009997023439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22c3f74c51d7772cc0ff47c89b47565f6e3325dc5628d75a4a64aad607ead9b
Date: Sat, 18 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760763593
