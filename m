Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE2149362B
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787436034; cv=none; b=jHkrUBZNReXM+9PVP9zXCz4QAAQ9XbjSmsM8Rhy+o15AeM29tJTo5YKR4xIB5HGaFQ2jHL97WXLehEP4WXkur4FDYQ2pBbwAqwSBxNhiwJRnzP4SnUNeZp71HcN8My51WwlyyGiMMX47zycuHkr8kJCu89dcOi+qM2L/zNl0Z9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787436034; c=relaxed/simple;
	bh=LWjLlAfRM4rsC1NcWIPuU3u13cnUMWkl/dDydOsOYTk=;
	h=To:Subject:From:Message-Id:Date; b=q1nsRN9SK15CZ1K8Io7ugpvialic/P/vcfSoTd9+fmcQVd9Uym+8m62ZNxfIftLfcgEe+YGgKwZ1YtAUwPm0hg4j/GXfBnRkxHl4VWuj3iK6cjJ8xCY2KdceXGgcvheWBwh0xyu7rYI/qLGjN+P/VqVay1Yl6ooayxhomc1T0bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ecdo57wF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ecdo57wF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4D6C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787436033;
	bh=LWjLlAfRM4rsC1NcWIPuU3u13cnUMWkl/dDydOsOYTk=;
	h=To:Subject:From:Date:From;
	b=Ecdo57wFrzNN/I8f/Ey2kmYW6wjZ3wugzIbri42pRpQ7MkOPXmQ3usN7Leg/7fylG
	 JKO6cglP7Z48EbcfG8GU8HcunVIzu1Wz6Xxhp4ETz7q35aDj2c8CMObzPLijaXamSt
	 hruMISr9FWahOEyelZjOELhpdkySAKdz7k1f87O9xMCMbkLPH5VFeN2gJX7u66cpb8
	 KVZ29XVZWTRdBxlQKKuTRQL0mAYwAHJ5nyhq48Yhpe50RhNVSEqw+iI64GLI0aHM5/
	 WykZXbPE/6ccWgacWOZf+tEu6rfsw2L1i5Lk0KJZYW8wS8swreox/TnMMm4kKLhvwI
	 yL/yZDMUSWc3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7CBC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743603369.27410.6442074171766108915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0420e1798066bde67b34ca23329b97849f9e4a6c22bee0c142e0dccbe5b5c6
Date: Sat, 22 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787436033
