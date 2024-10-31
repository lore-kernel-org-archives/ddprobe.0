Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F331494AB
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730385954; cv=none; b=PQdNPld79uC359jD/z6Acw8rEBGUjozRgMNyjv+PDVJ1RJZmGMGuKJwLU+vHIInAi4fVQ6NWfRnzt0oN/UGX+vKgHgkELOkqWLGIUXUPpV+4nSBYGVOY28vfjkpk27OC9kobcz/Kb2079KcQ0y8DjlwftDr0qUzigBW8XIcgqOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730385954; c=relaxed/simple;
	bh=Yuplp8dGSglul0sRBu9BboLrPsjl7nl8ELJbvpiIVqE=;
	h=To:Subject:From:Message-Id:Date; b=rtW0jeVt+pXDcp2DPp1OnmJ1pfFWKh64cmM2h2EnnVd6Yn062UoQnIKG+5U4OfBtZc7EO9R8hJDv6KAhFXCrJgk3X/s8sA2lnhYFRxKuqtnYCZbzOnaUgnhx8VU3telWnittQESv5WFLbV9YVygm2u7EP6chJYliSJckljizG70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6nB5fyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6nB5fyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D28C4FDF0
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730385953;
	bh=Yuplp8dGSglul0sRBu9BboLrPsjl7nl8ELJbvpiIVqE=;
	h=To:Subject:From:Date:From;
	b=U6nB5fyIZ4990Ebg+D0c4LLqDpMrnkXogYBIk/YBkZb+7DS3DwqoUYzROUEoZVAvw
	 UrQKP43ahvtSQDtku2ZUo8ejQ0HEFxkWzxS8wzz4O973VrR6byYn09q189i7pP8QAX
	 TcJsrcu2ONBumgpf1kqRfW4PHZUekKWxOy0OS0BsAqady5KnLikYT2+z1V0wHqYLvQ
	 TMitMFKVxt7faA8abF7WJrSEpc3uLk7I+RZhEk2mXXwTjkiSMQ9Wl9L97Vv3HyOsJ3
	 eawfAagin09QGrBzOr8DdfeUD2ikKhG30PFAIOAfQX0QkK+WTkp3kFml/t9UOeHsFE
	 PDfVrb/qyFnTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F69D767D8
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173038595359.29098.17962457367234313013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1f9fa8ccb88c8eb0c2f3537b29e18dfb6cc99889f78ec0b7ffb846f2824ddd
Date: Thu, 31 Oct 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730385953
