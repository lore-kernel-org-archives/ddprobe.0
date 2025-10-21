Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27992635
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761012594; cv=none; b=nFzVTM4brbh3Ey3ExdR2Jztywb8vDHfZd/V9w7dpJiRZ1rmYt9O4cEETteBLIcSIRS8v5+CUmPLEHBRZiGcKytFOEBZB+q0lrP/2FZXocJG9ojhZJQ2yYwYRBGTlX6BUnuSQetkdA5t7yRnIksvxhqURr4pL0WIoJxwOeZPRf7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761012594; c=relaxed/simple;
	bh=t3CIRhEeiIAPJvzM6CYKpCFbuYoNslSrsPyYZ/JrCoc=;
	h=To:Subject:From:Message-Id:Date; b=jZVjUUnGSJ7qRdFqUqSTmhpDpWbJZRpA1plEDOcyMQSMUhqQ8UxKbUE6NqUJ12334UcZsizLPCBPzTB2Xv7XiYEcx32jNb7C6Ly/jPSGe80tzTlto5R6N3Af/dFHqCSxfGqoUSXGb+/Ff4kKxXxpL8LGPxqD/afi8vRDozpbxKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tv143CUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tv143CUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C64C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761012593;
	bh=t3CIRhEeiIAPJvzM6CYKpCFbuYoNslSrsPyYZ/JrCoc=;
	h=To:Subject:From:Date:From;
	b=tv143CUxaqhn/Jxp88KHbj7DSiR0MakVV0lEv40R8LiCku+cmOTkJ2KYmF1bG0x9F
	 S0f0c+uY/q+ne0HDqy43HHP1Huethvyp0cJAV0WBPtX3ws9YmY/lyeDmdUnvnv+lnb
	 cVklGAXYLIZqWMcFC9bEzQgIvUyZ2GW1e4JyZ0UE42HfdfzSS+1D9STLHA+4TE8lg+
	 PNY9EQZ0+OOb7lNeYk8vt7b5hHazUbnpq0My+TrUboZuLgQNy25srnNcvo+Z1K11Z3
	 GoyphfrvA0sIJDJFk6htUypHI//lKnnt+GqiW2orxQ+RiyyjkxmNp0+WD35YJD2TT2
	 VMeUS9KNydWsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DADCCD1A2
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101259359.14192.2910404408067590101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf2001422e9dbeb4ac87107065722b763f0aff426c128854e0e13f82462675a
Date: Tue, 21 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761012593
