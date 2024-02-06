Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD4DD51A
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707239897; cv=none; b=gTCvQK2Bx9Ql8Ydnv0/na06K8WMps4etc7j+9dj9GpWFitK1yi5acVSE4uFTRTXcGxWouaOIGjERvemzOMv/FKJuaw6azI6aJWAVsUMegMatBZBXkTD52JNRTORDHcgONEJmBuA7D3Jwl3nvBhrptonPf2g3U1Cl3Vef6STJs2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707239897; c=relaxed/simple;
	bh=yyFvbBeLbnhIuHrnFQsI69ZB33a7n11RJxgz0mv4NLg=;
	h=To:Subject:From:Message-Id:Date; b=susLbDvgPT9UMl02v6J7AvbN2/5W7tgQlTDuiQW+ex+r8qgFydI6DDUCBkIskkFgd0n7EFkX/t8Uu0nsap7Z3QhjKSQEC/lfigsspei9RhAZ1zenl8dwPq3oDVaAruyHGQVbV/mtQJT6TNDdoQiLebeVxgIWKwu8Juhq/xTKDVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PS6t623F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PS6t623F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9498BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707239896;
	bh=yyFvbBeLbnhIuHrnFQsI69ZB33a7n11RJxgz0mv4NLg=;
	h=To:Subject:From:Date:From;
	b=PS6t623F5lL8NgzqXh85P+mFvjKgnxa4yLgLFHHTJQXZoEvCQ+Pc3WQglaSsxItVS
	 f8mr77HztL3THNCSWuNa4puccAtYghTZr55B0IO3yhVsngNUh7uR8OlCtEVum0Xfkr
	 /F7RKlzhiulzIe9SFsIp+pTF+8d/i98Z7O/glqA608D+pO2isARGR5Q1CUagJ07TuL
	 1wTtMODWvrWRE1nh56YvcmqOkZBwcPUpvjCV9fDwweYDWF+u+09L8up8x5p1NSQ8ew
	 /vpRdqIaCQcd5mi5vRlMFvbFFmo2Z6CjGYVTU7o7aQ4PL3NPRjWQV68E6E86swuXa+
	 SqesSWx5ZBZ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7694DC4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170723989647.2286.8951579007730282530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2583180105ea4d7c629860d4a887e0ff38357067d8e7c166c96b9b02a521fc5
Date: Tue, 06 Feb 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707239896
