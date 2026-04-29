Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26770169AD2
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777436854; cv=none; b=aBzMImeLHxUFjlGxhgfJBN7GMe0Df+WMGbgcN4bJYz5DrHezYRv38+qw4KWYQTnHf30DrYxsuYbBnUFwQoEm7PFnpSVYsdZ6Da1RiuNQUhn4Kd4IJYvvgwQwp8IJVaXMEBA02YuDVl9PRLTar+9YHSs+5IUcwaZxZKEiqNZgVzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777436854; c=relaxed/simple;
	bh=kYYO1geS5eN4XJrZL6DLKLGrASLUZ9FIA/nRPFpWnow=;
	h=To:Subject:From:Message-Id:Date; b=s6ZU+aE6NXwMJI3yr37BCC5MPuMGaxM0hxJzC3Db/Xpb3bdz5T15sCrjJYUcPPDa5ksFUpAyfzmj3k7IlzFWockD+Ux1TMv9w8SGmgHvzth5LXnFpWtAkUBnZ8gcRggSoQcOeUPGH+fzMwZPtFv9N/R/gsgiMyrSu5yMibsKG/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xu2OMH2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xu2OMH2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD74AC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777436853;
	bh=kYYO1geS5eN4XJrZL6DLKLGrASLUZ9FIA/nRPFpWnow=;
	h=To:Subject:From:Date:From;
	b=Xu2OMH2Xy05Vh6eyA3VsqNzOzbrTcE6bRCH4rQxSJcqqX4iJGNnS00gGVtH1II64G
	 vUcP7DRRysahh7hSQkLMxU2XEsjSNJ0unz05V2syKQuLnQpFx0GLpkYEdvvMVOUne/
	 d93xUb2xdxmYt0QIoqwM3chje7hvhmSRTV/WHUDJFxM7GksWMwr7B/Q5F2Ds8YHBw8
	 AhTNCBjEKgRLjweea/NFOu9wAgwbdBbD7OoR7PGFfB/q63LNExW/J6y+NBXb91l8US
	 E/PfP27eq8mKxXDmhh+7hpQ98M/z48JDqUnbgHA3cIMSeV0zoEr6vosxLluI0hfa7B
	 CZgkeuqdYnyBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA15DFF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743685368.16814.5828087272294894694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95cd9b015276614a45ae03deb7c90eb769ca5427b56ecd5a15ce93da39e1a8e4
Date: Wed, 29 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777436853
