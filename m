Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A742D73B6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784812234; cv=none; b=Kc18yyvscTvQElWTNTHaYnMZqfQh00P7LF9m3Svz4srWvKNZcQxIli65ZY8jHyg4ZzS9mY4sgVsM7HtNRDAYvEXlkxNIRHmQHyIbYCTOWRF8pqrjVb80xdZhaZ8syVPppbdcLE+hp6WzxYfoAVOyCbiVve5jdOd/qSrNYHY+iLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784812234; c=relaxed/simple;
	bh=vCOgPhaFZonGwzsJCKba7sz2vKaMPJOIS2wMng5+RTI=;
	h=To:Subject:From:Message-Id:Date; b=uUyT7l+sCdsEBCK6ypFrfeqAFJHFwquaBwUg46MLWIZ7QYbevQLJI2bCbItPwSMxD5gtYOUzj74/9rypCaTQsq6EEiKTIOlB9YUU7+Yzp6oMVQ8CL8OufW7a+et5suVfaTlRCjBswLN6nx08/+L9frwZNDP/gCTLbGw4l/Kja4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTmInnbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTmInnbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE9CFC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784812234;
	bh=vCOgPhaFZonGwzsJCKba7sz2vKaMPJOIS2wMng5+RTI=;
	h=To:Subject:From:Date:From;
	b=XTmInnbG3bS59WXCPmZNR0vVl/1eRqSIOZzPx5iO004rgQOlOpTIhdQTr+rsdEwm3
	 lkjg8vdzNDLdCkV9Izg/tDYegsfAUOXs1u+Q8jS48Ru+jD4HRNE1OQPuvaFvbcYW5a
	 qIT8sFhIQAUZLzk/UKdDNoEhTBv6Qg7qNK2L0J7iskT0zBwwENunWE8Pa8/KRsJq47
	 hyCrr09K1RX3vRBapc05Y9izLt78oriaasjmVotpLjNZFiLIigAbi8OX+oWwRuV+1y
	 SFdr4c3mVr+akS8HsggTGKq/lzXV3r1+zaDr1oA2uOSK4QFyV565YltWwCUOubv5O9
	 i6FdvIBNd1oEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC68AC531CA
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178481223376.14045.4251567036562777620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4314c5972b7004c7d6e52644e57b11fdcaad79daf94e29d04237574d5b60cf55
Date: Thu, 23 Jul 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784812233
