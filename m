Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C9C384
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711847297; cv=none; b=RD5lCe7rmlRlQujDGpJFnr7/j8E3FmrXgoOEqmza3cvjJBggTp5zEbEW3TWyfJfB7MwDyvAQ2NXLfCJwflf08rFTVsjdufr39VdSIs0ajN9OsfB+8r/skyIIha7/PcREV81RC6lvnYvd7dN96yuJfJhrP065feySA+/LqqMmPW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711847297; c=relaxed/simple;
	bh=vDRuP6SvUPLJU9s/sZMkvJS+4JZNCNkAhlxkmM6MpJQ=;
	h=To:Subject:From:Message-Id:Date; b=BgTg6FV5YONpQGnbfNcv3WY0W7SOSFHByyBQhCiU7UicYXq0r4hJgoj/knSeSpeL8UmgTn7L5vx94ZuBeIRkwJzVTYah2Zk+Z970iXuSqumDz+vRbHFklD8lvrmnte4iL/bwkYUwHJE5l5MRvrqu9XrEY23e2hXb23zNkQ9Oeyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKLFo9e0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKLFo9e0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B32C433F1
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711847296;
	bh=vDRuP6SvUPLJU9s/sZMkvJS+4JZNCNkAhlxkmM6MpJQ=;
	h=To:Subject:From:Date:From;
	b=QKLFo9e0PFlQ1jcMKx503DA4NDje6BPLdZh+VW1A0uK1e8TExHLdD5kIDhWpDmWQ/
	 gFRlkfH4g7dx0I4S22Ht5JXwNnLU0nEXTx7bMc88YyYPw7OX3tVCQspGC++wZfqk+a
	 SuwqEV+8uAA9NotHMmPhFFi809LjNnNks1y984rnzPPkanQ8sX17liqP8NZ+VZmrNa
	 7Qa5oRk/ZLDajO3+ksXpw1QHJCfUn8j+dHD099wGu5vF9euCV/RZA9gBV35CChen82
	 1iDovpamIx5QdonQ4rspQgjSbWndWYjdB+3OLTsA5sJ9lbDo7pfeRKBVDvjaby0t7n
	 VOG+j9376gGPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 655B5C6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171184729638.21862.9830392213486296649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57751079763a9eebadef9605f45ca74e70ccd7cf408fae021371c8eedd79b91
Date: Sun, 31 Mar 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711847296
