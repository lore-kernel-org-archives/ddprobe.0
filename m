Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD42221FCA
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765451574; cv=none; b=kIBcqF8jU62ZajqyJRF4q4are41eZOwe9WJxDbpA/E/b3WEEryImf4YsWjIRV6JZWpa7qyTBYi6sGWPlJbGK1aNhB7KiWa3fn2kR545UEgLw07IukcSF0WRpOKv2G9PQKnw1rszavRB5DUBnuoXkKxwHDF46WmgAly8Sj6ciNBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765451574; c=relaxed/simple;
	bh=5+qgQqpvpygcE9gaDfvfBhmJ3OrNCVrOahrcPNsG1ek=;
	h=To:Subject:From:Message-Id:Date; b=q7l4aymoj92gYZo1fsHH5VKbOTaJHXzpun1pLo3yfK4oPsuz3jJclHbIPXPXaw51HFu/mR0CHrd/ohv+3FVzvZSrsk027GEEsKK5ZAEi2SA6BthWCJPwH2wS+eiRxkRS0CHHsQKSmeJE4CLXzAh+psrdUVGs1gjo6x5GGWSxS5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcVqRqRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcVqRqRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1AAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765451573;
	bh=5+qgQqpvpygcE9gaDfvfBhmJ3OrNCVrOahrcPNsG1ek=;
	h=To:Subject:From:Date:From;
	b=rcVqRqRWf+WFx5vcrYVpAUldz0mQgb7lPpMk/wPzxtvhx63/l6YWo8dC64Q3xMp/l
	 Z+FwvMFq5oHcvtCgKmT52Wjt2FEteVy/YKPM+8UuIX+2Smz+3fEiftjKY3U5fVR3zV
	 fPUtzOYc4Hr4/1Vppwwo9zHvI3IaDz/c26dxmq5uRNsn6yQ1qz6O+3WlWbrs8H+3te
	 OsxL48tsBISIc8gJzKGqfdKgZGdF3Gcxko16F1W+99WLQ1NuGWduAfObVaQBrNWnMJ
	 B7iPmHVVkUrepCSw/zpyyvSh7FzclaV5WwjIcMyCzrtvSWIc+ICaXQhvsJjhSwfLRH
	 l6pZ+bJOjcKsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BEED41C20
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545157360.30904.3122804473278971836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000ea2806a6bde7e627607f5ae9ba732f25642e05642b68a1201bd84962c6742
Date: Thu, 11 Dec 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765451573
