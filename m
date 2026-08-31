Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5BE3D967A
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788168634; cv=none; b=ndvxANiOhPCD7qFLKG4dVVovH2urz8zyQXqCpEAkRqxWLT9sKH4j3KalYXxyV2HBdnpx5XP9PCk3420sDn3I9KQe4NzLJa+EffHWc+tuAs6xOG5Zg6x0Vq/ucI2qGt6tZ2D9y45PlBBXafjurCNcm/ES++EK1f1sCVsFJZ4846M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788168634; c=relaxed/simple;
	bh=MA5Ff6H9tutA4vV8iddcPpZrXlLrMte+wx2MlxednzU=;
	h=To:Subject:From:Message-Id:Date; b=PyBVWXseJmPSI+XmggSate20Mvm1D0+1OGjmS6fYQjTH8FPcZ4aJqaZgg6izC2+59rGdlC+m+OCLdpHQcU0MJQAqPEA71gb3wiKoiZ0HZut1hrGu0gHP5GQ3zt5n+8wauXlh/v1DK9USp5KV6xwk0bApSUCSFLfyc5U9e7t2HBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/qLV6rn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/qLV6rn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC57BC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788168633;
	bh=MA5Ff6H9tutA4vV8iddcPpZrXlLrMte+wx2MlxednzU=;
	h=To:Subject:From:Date:From;
	b=r/qLV6rnZMy+ciLXQKL6nFAclVLBwoW4+vI8RO4A/T6Y+KcXW27KstfyexVyytTAx
	 qGOJEaRDVQILWuXBjO+Ftv8qiGyWIzanEYkUi+MpPz2x//aKcF9bJyQBe7DgyI7WqU
	 Uu6r8ZOuPt/4O5rMywwqPH1hoRpuhN7RX1IebRDF64z/hfOU+gbW4KUxv8aOOjVpma
	 q1jmIMEB/aJaRmZ8X+na77eqb0b54AOCjxePN6ikRa4FLB9X61CE9lPOoKcXp/x3g5
	 sAuFoyHtzZIpGJKYjnF5iBLx1up/LThNJUDNX/9tCmhuB7i284OYS86Q5Lae2Tg3g7
	 lJTUH9s2B8LZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB792C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816863369.2726.13588468901466605934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb1ae915059e140e27d52c1e10f0e77f149af69c2c62b1ddc92174a937c6e48
Date: Mon, 31 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788168633
