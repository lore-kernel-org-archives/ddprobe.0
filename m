Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF95D2D73BC
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778574034; cv=none; b=Ga9Tl3fNgLVuEeKPT8RHoffLxt3yyDiW4vK0HBOlYvCEbCMwu3dcDmiVQOH50Ri/nK3XwnwMYXjysPmGiwyy+nP7UCOHGHoq1J8hMYq0zPwXCcGB0EJOy22705F3ixSLjSxLeMjeHmAjGjT+mJoo7HFiJdRWbAeGmLZ8FYB8IJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778574034; c=relaxed/simple;
	bh=lt13YTIEUo18DGjdgzPVL18Ct2EE1365x8BiwWW1N0E=;
	h=To:Subject:From:Message-Id:Date; b=jzF1xZmwg9wDG2sD3Z+JHIbQnBHw7+4W0SAw2LfwWXHpAb4oGOnQ7SMtjEbdnbaPck8SXekyUtWYEY41yuxa5O5a7WEKu0We9D05Qxf2Rr0ZmTPw7AlE5gc9J+0YRumycsDMfmffNI6M487SHmmZLqERnZKdVAykh0vvXnNSZEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xs0HO5zv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xs0HO5zv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F8AC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778574033;
	bh=lt13YTIEUo18DGjdgzPVL18Ct2EE1365x8BiwWW1N0E=;
	h=To:Subject:From:Date:From;
	b=Xs0HO5zv5TTBZv6oOIv0AEfYScl6xtNtVeB6tONITFTViA7aMdXXo8L+4juxTrJxI
	 uGQwgzD1Nk/rmXp8z4H3DZ5vGdy0J+4+m3PDQJMNyZh26U7sOE0lDWQGrX5dnoZjk1
	 dcZc5SPMxOYt3mPN/hQu53SkdHNndO71Be2y6LiPRjo4jHcL2AmJj+dhCORnk8nXRs
	 yA1YzY1QPtNl6OXvoQnnUH03KuH0IxC2lh2kq7NLxHZTu7sJ0g1KmW5vf6oZQCi5xx
	 U/dTr1LZxzL1uv8NwZtRvFG8Nmc9MkNAraxiLnAE0LdzJg5X9xxtXeBvfNgysjkAp5
	 T51RAv0I1zsnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A956FCD4F26
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177857403368.15540.3273067562469724213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58bd35d88e6030c42c791b5663333e14fecccdeba594ddbe88ac043a7560043
Date: Tue, 12 May 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778574033
