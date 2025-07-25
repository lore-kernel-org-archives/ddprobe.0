Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6437724677A
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753448994; cv=none; b=bLmAzyAuNun0uUYUzBt/YIBGChjWb/un4iR/afqidQwN/6rrRYS1+BRbnwPGWYMgWzhg2CMjQJuJWEhkDhIR1LWSJ0v5Bh5RCelyko1AyEg977OjwqGOh/dMATPLFEJKqh3H4p3GaL18KDFWM++9jc41UWTu5PfzcHkOwi7Nc28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753448994; c=relaxed/simple;
	bh=VK/ejVEJQb9v8nldacs/W/OWzSB6tmIqhxmPNk/tI1U=;
	h=To:Subject:From:Message-Id:Date; b=oQkynkEJ8HbmODbjCDZvm6fAxOdEx4cRLHQVVfd4T9mJVisfcwMPTh6pHv38/A1gJclTevX0HuvkR5Q2sAffTp2mqlCevgUQJGn8KuSPE43gDBImWinhkeXyAjTM7AFwun5OPW/B0l5SVtcfQS9ASUkeyykRRhYmGHPqP/gzB8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOo060e4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOo060e4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C4C9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753448993;
	bh=VK/ejVEJQb9v8nldacs/W/OWzSB6tmIqhxmPNk/tI1U=;
	h=To:Subject:From:Date:From;
	b=tOo060e40elaKsY/cOFfI5IpU93M8Wen8h1ehQYvWNk6GOeXYPr9SaRdDid844aql
	 zEtcKp8KES19XFt7F/MoqrCchM0pWAztEqjFqVK8rnT8ND97YvPqkYMt9hEf5/OP2T
	 iypqkxN/TUswVWEofxj5di6d/2A+YMS0808NFkGNbj+EniNbWX6d+BDHAUxzsimRi9
	 EQ9Wr3lzFU8lp88FxrQplwLtLLBYXX93AZUta7/GerB5p9P5PqJJKEW8LFjifQAbRh
	 +/6Q04az7JNGwYRb6pKJO83IRXMXj4lDJ+cJuESLir8MCSMPBjBWqLi5/RDVUh/mm/
	 h90HpkW0VbkTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3BAC87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175344899357.11184.3883653072992958999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a11544d3d07f880ab58ca24b65901b910c2bc7c9fa0cd2a4fa70638c6c2034
Date: Fri, 25 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753448993
