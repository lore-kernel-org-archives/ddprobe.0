Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C241326D5D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770116034; cv=none; b=gvE4CL19UuGOn6NlH6ZyJYFxjsXMhp4go7w2dCj+H4PtIq58BxjmB/3zBhK/pEeBMsDnzv9SS5W4ovUfqx70Src9Hk6KkDZfQ8mycYH1xE6/1Y/CIB3F1t4EMyWgFrtAoV6lemZTsy62t1mXvH249Y5xc5KNWVIpvZjP/cHUUVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770116034; c=relaxed/simple;
	bh=6XcgxC4FICWFqHXzL3hsuktvDGIdYfwBl9+33UoHXzg=;
	h=To:Subject:From:Message-Id:Date; b=ktS1mopE6p5yfmXRmSisEwkKD2VhNwS3r6LHTKz7k1QcBlDCK1/bNV1mh68T2Wcg6TLQ8crtuqwRlANupgLT9fzRdWQRHsKFbOUYXb6ARpqx6Y57J7ld6wC5KyWZRrDnlPO+C9y7MuojKc2qV/Kr5O+PERG0bZukU1ktGvZpwfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8njZAJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8njZAJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9C7C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770116033;
	bh=6XcgxC4FICWFqHXzL3hsuktvDGIdYfwBl9+33UoHXzg=;
	h=To:Subject:From:Date:From;
	b=c8njZAJcn0JetL+RA7MbFlT2GQlmATjzP2p3lnqk5r9RBkDOrrxKAJFVPVn0yCOZw
	 8M3RMwpBXg/nSQl3CwObs0YGoHNJLavu65rn4maPxTlItzG6pgZcoijvEwvqU1FXAW
	 WHZRAsvzpXqaXHhcCGS6BGz8XN8GZt0mOcCElYK1fOyvkOHVb6Y5vaYijBwOtceJpO
	 nBnQZl5N2nVSwhP4hVLQhqt4Yt1Tse5pvNL9IgMi9qJ5U4PeMYnPhlH05RbjhpG7zc
	 sAZXQ3080nqvqbLdQOnydoJd2OOHTPyJ6+W8gh/cvnAMZ0/Tl7XYms4jMxzIg4c6wT
	 MTLSk6nGKKqZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9619CE6E803
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011603358.30546.10107476362506134846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58bec333d4a231a47924448b99a4c18d21698e6f4772081e25dc241bf450147c
Date: Tue, 03 Feb 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770116033
