Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0693EBF09
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771633494; cv=none; b=ORZ0UkXEygGfn6c8CPSYtlWCBFRkjY5r5Xz2K8H68Pj4BldQ2dRBY6W5CJ+Ptt6LbMuYIAzwmhcMRc7AM5egUVovNH0SIwpFOYSedH/GVT5NErMu1B3rp7hfuskPkyrOJQwFoeNan40kX0mfbPGkUUbYFQVO+S9NoF+4V2uOuTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771633494; c=relaxed/simple;
	bh=1BmtqTiKZo21X9yCwgHUkhykFBo6OmeqC6x9vKPX8fQ=;
	h=To:Subject:From:Message-Id:Date; b=NTxjeXcV23L53fg4izAXJTF6f4jZpb8+8afr2Jujny4CetwSoKV3syY7Zy9noJmW63cUGnhBCFETEswCffUHJzmS7QACkMNwqcYTPAr3HjJo+BKykKdEns2wIM6sCS0uWPStHKIVjgSj0M3p9y38LxfC9NVkwzHyx6vgV78bido=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hiJLZFSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hiJLZFSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B527FC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771633493;
	bh=1BmtqTiKZo21X9yCwgHUkhykFBo6OmeqC6x9vKPX8fQ=;
	h=To:Subject:From:Date:From;
	b=hiJLZFSROVGUvpf9nmRwB1BZGuEz+b1Iw4/2fIaEf1UFdZh6DYNeSR39bE0wvOsUO
	 Bc1EDJf3uP/+Mm0wcsmgJISOOeZgtWkISHxOE7td6zrjivNB0zPbL+BfPmO+vJvA1v
	 Y2VJicsF6HuD7DX3YplTpPWXmbqPCy+Cc2xJM+bEl/2TrUewABCbY54354ZwCsRp9i
	 oZkCqF31AZe12CVT/IQivf14Koxt72wcwhMVukFnA+ENfxwY1yYnszARDAeF8BrdwZ
	 aI04HKbsDDukPUdR8JlN5EJqf80PJLmCIcf+UdzLCgvQxv1okmUhsGegRdoF4GobZS
	 kRrpCfnZVLHhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E60AC5DF66
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177163349360.427.10458037278373020497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ccff3a0c8749a3fb85c539f00ea0d445c88724d0d10eae27ddeeaf18044c98
Date: Sat, 21 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771633493
