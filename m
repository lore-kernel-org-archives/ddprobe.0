Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690BE72602
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791089434; cv=none; b=dM4BD9Q9k/s2JaU/87HnIwViwj8qyaqbDkfAYwG9M3DK0+XvvQdTySqh8mnewSBh1STfEr4Y6mHJ2TpvC0vgruXx5bDzAYsu46l/IqY3zuzybTq7L+Vb7ZrpIUiX6FViJGArf06z7aCH37s2FLKp0soeXtr0BwztgbRLN50xXgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791089434; c=relaxed/simple;
	bh=mHlJ4r10rcwGV+0O+qj27biuf5zkxGqsKUNr7P7e1fI=;
	h=To:Subject:From:Message-Id:Date; b=pXqyWLGDsiB88Y7FsXfmaPqsz5FFYmsWGLlHPbHhhWNMF8QLnoCORPDgXf1z/L3++HkOF7ArtnyRxdVJpXX4SJ21MVGbmiJRYlWEPwHFcT+3KW3BVSIo/SAMF6WrNutm23WlNCnWzq21GhE4Yu8QY1s5tBtdo0J9dFtvmLwnzf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOkWKaiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOkWKaiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3F2C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791089433;
	bh=mHlJ4r10rcwGV+0O+qj27biuf5zkxGqsKUNr7P7e1fI=;
	h=To:Subject:From:Date:From;
	b=QOkWKaiY9eWzrN3U73K1iEicb1Yo9BpuA3kAUpzVybt3JpUmDuzImuvhTj/bulFjl
	 PlnxENYIsh6w36g+rZTrGyTbJYn/3fHk51w/VjzYjDHpPnOctEf82HfShfNOC9puUj
	 wIVZzBC+fKThhSC3UN8tr0LpW/lGMAYnbnqo00n70VLr9DOr6osXsnfO0brbl/5xu/
	 DZ0XxYXmr5XENW5M4QjvgCyutH6dPfiSjAYorF9a3IA3wOq2hGhkA1nR4ZTO6I/+Ty
	 sbTlRmQOOcGsRJReRM2hR2/510MNRfQj37ig2SScqsTii+jvMR42Spf/USscsBZkkp
	 kjPNnd/iC48dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B468FCA5FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179108943369.15582.15385334041988102033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d747d69755bdc4fc8ee9a36584e5034839307bca3667a39362536e72f70e78
Date: Sun, 04 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791089433
