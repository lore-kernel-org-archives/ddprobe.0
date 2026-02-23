Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102A35695
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771890894; cv=none; b=iA/ycpKhPW/d+OufUXz7ZCzGp+1x4z4GAazrB/vzudQyDuGH7YlTj6Y99Q+jwxDCywIw514navh2PWlhFAipjxuq/8wIOG+K3Ds3ccMU2O2TOc7XncwvQxUEghRSRQI+asqtC1lb9T3R40bqg0eFczq+W9VWol1hnTn40wBmJ+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771890894; c=relaxed/simple;
	bh=MFbFYL8wpVWBnwghRDueN455hZnohivryQvjgr0noM0=;
	h=To:Subject:From:Message-Id:Date; b=OTLyOyKXB2vz139pJo+gJm7KjnNQHNZnqg4YvZoKC94V59SHLUOzgpZI8RHvsFKF6lLFOjcY2VVoqAPjwYtxVIs5Pb46SGwnJgmbsxeynsatUA7hb1pQ7a/4h6xpyO9SLYU3JsuWSxdB2iXHOvCsE5Uza92yIN2evGc5+LSRAuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVvy2NE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVvy2NE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC674C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771890893;
	bh=MFbFYL8wpVWBnwghRDueN455hZnohivryQvjgr0noM0=;
	h=To:Subject:From:Date:From;
	b=BVvy2NE3nIJ3ulslN0iJeOPHrVGyH46f7V2ICMvsYhd+/eedlMYknRm5KjqBiv3Xy
	 dAiaGg/Eo/QV2k7hQBdNRi4/hKr663AekZvTgnQBKctAuTVMLevApeZDge7tVlObuj
	 i1vmmrHJSI4xe4vMHnqjY5bSuL4xBa9iY40mT0eSs6C45kLEkd/jee/3pX/dvtMmx1
	 GUxbn4LHqU/LD4pscPW1AM1uYe+LktCQbu1DqP4wWPIkEusmRmWos1XM7o/N7ta10G
	 wNeavi9aLRyMmlXqdUw7FfY0QTPN6kVxCtTcW/Cz7JzSQWp0kqMimADJxKLN4vLGfO
	 IQ0DDQPY+PANw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B1EEEC2B1
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189089360.12116.16531137077272070757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d1f0f8af09858971d5f523d21da34af206be1411be32ab06f650c7555832b8
Date: Mon, 23 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771890893
