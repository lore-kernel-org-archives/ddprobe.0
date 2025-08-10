Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA7A35898
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754799595; cv=none; b=bmeHTxLq4cDxchNT3Z9edugoTl7TImvCMWkpF9jMfYk/Xv9tf197/2gH7YlIgMogWlf6VgMOp14TiFQrf20tK4fzJjup9rXEZKA2aNEWgQQQvmavSI8MKx/9jxwP+yZI+Ry43h4tNpDqvOIQZzo88mNWezrNba0+NbHd1Zmh5VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754799595; c=relaxed/simple;
	bh=S3TvgUV4ge2wDTKPflxdNRErdRdi5SZf1QOlnaMTJWs=;
	h=To:Subject:From:Message-Id:Date; b=pwqqbLHW7kZN6hKgqkLWX2WXoZ9z/am9BtSzFui31IYbESNXmAQ9ammu6gpYftS7NdBQq5VdFNAOT84CP8y9eoUWBpa73PqzSPr+bnmkAz/WpYknFrwPy2gqPyJ9aJibYgNpkD5fqvZTHAAvAliv52i7O3UpYbeQYfjUG1ZcGd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFdudwu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFdudwu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D21C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754799593;
	bh=S3TvgUV4ge2wDTKPflxdNRErdRdi5SZf1QOlnaMTJWs=;
	h=To:Subject:From:Date:From;
	b=WFdudwu5T7Vn0ZZ3x2dsbhWm19cDhd8ZJW6pLqWyeI3SpgxEfYiWHSI0/0YNLF31t
	 FOH8phQh1M2mrHmcRvLJjz75YoWoARNOpaZcC69793T6dFJCIXfEB6WISEPHcB62Lu
	 O73LNK2wrZaqFWjR8GMzSLjzfDxd+6ayWC6NN/g8qSUznfFBNX04RwaehVGbYvf+lv
	 acI9z0OSChYwp8qrbtzuU4zbugPt7k8Wx+TMUTnrxjAaTct4J4X9jhK0iMogncIyfS
	 hscxxdK0Ynbne1/SA4GR0JiJiSgtMGNoyh4jgfpXoqwz473n9bLyPfXRGwo/kGMapJ
	 h1t50lnJ6iy2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F46C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175479959362.22816.15177881636458228815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74940fb37559a663388e272dfc4054f3ab54e39f5a1385d765f34dc136b14fc
Date: Sun, 10 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754799593
