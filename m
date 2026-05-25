Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE57305664
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779706954; cv=none; b=WWGSZpONNyQ0lt77H2v7HHa98CLREFI5D7kuhzN7ZnUyLVTkXgTrejivurKmYkVeSJHjBbuPomoxfY9kzeh9ZW82Yr3ORTGnU8WESEDOw5TDeTyscCKIQFRoo+CDXLD6T75KsgML4JZY3KYn1CE0oHEi5EGMc4d/r7vIOQca5PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779706954; c=relaxed/simple;
	bh=+AwcDviQY7HMRtqi95ls2xY29Q6SukVPtcdnM7KUxoA=;
	h=To:Subject:From:Message-Id:Date; b=sCAxvEcXBKIZ9XWloXGwMWCMSBDMk/u3FYtACA4IvMa370oDAaXigtDUJGq35npoNgEeAtiP0kMDm/RohgNfsYCEX/wFewOoZgGiUDv0yoRPZ0+U/fthF1rgU7iawoFqQqPM3b6G7syFYX/vY2kuzNqtqgRH2M42hs09mKbXF0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tk42AwKn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tk42AwKn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0809C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779706953;
	bh=+AwcDviQY7HMRtqi95ls2xY29Q6SukVPtcdnM7KUxoA=;
	h=To:Subject:From:Date:From;
	b=Tk42AwKnA5SQwSjbJ4VV2/YBszLzvGJGBxHxxh4KuG8jOjsBiPrKnvZ9i3wBJ6Dca
	 HYmuTofPajKZ+wlq0QyQQG+vL0Kpop6RBvLnqExrpisTwMir1jhjzashfPjFoHrgfD
	 6ixveAOSOxWCvXpjy86cjm3LkUg7ATV/9PHyqvG19o0jniPyYu1htgzsLB/60m9gEC
	 HFiQgk1c8+DjmRv6C3STtpBmnswrLRrXbwigd0VdjreugiMi2E1lAA40NXwB1oLi5X
	 UsFX3a2vgrm/KVotLwZ8PTnqV4fiHVLjPs+oCD1W2xASH9nyvp/e8Nd4iywjEN36Le
	 afc5FjHzqHh9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC33CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970695372.8910.13691814131853178864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd38136d845b7cf1bafa1a333247afdbfd345497e42ccb91d10fe3e94b9bcbf7
Date: Mon, 25 May 2026 11:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779706953
