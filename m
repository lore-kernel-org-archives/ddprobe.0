Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFA417C68
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738145154; cv=none; b=p5uSO05NU+t6j5X2PiQf3E1zEz+DSeOkwPBrkM5IMej2XLZt+qTYBulPAQ+Mnv+3C6aBU8azP0HQ3Qro9wxScUzazgj70wtyEbxAtA3hSLAVQY+NFClzRCmdSGUw+dsr7UgM6uVE+UUidZ8ag0ds7dwmn6ccmNYAYT5AqY1LdZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738145154; c=relaxed/simple;
	bh=bBJYJIlDq83NPsMvYtFkwm5GjD/BrwLToUj1hek2e/4=;
	h=To:Subject:From:Message-Id:Date; b=WlQjU6jCgNDZVZ17sDSo6uXN3KIaKedPv+fEQQKpzbN+ArvwbUCEpdU+/4C2lAQ0PTDEruSLRrOahPNkYeh+Jsz/7T0lYKgd7XbmKYiyvUNyDrdIZCeSOzA0BymNOXGOqprei4cTa6BqoXcqtLc7LEdI2k2Dl5dHS1BNtCtaGgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlhyDAfI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlhyDAfI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4ECFC4CEE0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738145153;
	bh=bBJYJIlDq83NPsMvYtFkwm5GjD/BrwLToUj1hek2e/4=;
	h=To:Subject:From:Date:From;
	b=XlhyDAfIolTxx3UM0TQubgjs9xLm2KecLimtGk3IsdL+xQLuXVCKVqJwlIZRbne4q
	 8np/raVC83YdNWZ3CohFToWlKipiXYvIkpYoaI6G4Y/ium41lm+AUA8Kh+JJdBpcT3
	 tc/ejXO/8CXyXMBNsUz3C299OHOSB19DNhpw59j9l6/qh2sluLNy0mE3oqmpqPYC/I
	 r8gvf/vRm5zqJgsAu5yhJ5MDMrT308ex4bDADflX+h6Gk4uRUKZu+uoDpw/O8zfkY7
	 taa79Srvyosg15+Pzl+DHC4ISBvlUEahySHyDZMIdgxLLQspMRZQyndEqcGTNFpNMS
	 7U7JJD0AovZ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A286DC0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173814515365.28549.17299414464778791560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d2bace125bc4bdd1086ef91b1ef3bc9d3b16b284f2149c91c8c26a90c8a1ac
Date: Wed, 29 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738145153
