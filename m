Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FEA221703
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760427593; cv=none; b=VQqthZwz4jxq4h9rrLtnUOTi4VomRHcUZoCaPQU1uSOShZg9NcszOoxNZDwonbXHtHdRjEf2Ivi/yLLsyh5lWdDe5GktYDVJwAKNOnkW/6dUUNFNv2BkVSarsC5aoC+7jRLtHS2VShYsHYijn9RAeN4O43eLON9AuA6ZMsFx1iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760427593; c=relaxed/simple;
	bh=FkzJhpVC5KrO4ji9hTygQ4zm1j0bj524qCncBWwqBnw=;
	h=To:Subject:From:Message-Id:Date; b=aH5B97Ov054tJDDUdXA8PW6ayFLDh4eEMrKQe6s3cxQBlDAUqPcvVvJ2IjWkC8JJiAIjNEFs3zdzXT5y2d3QfI+2o8QhylgvUKtKxqD4evcykgyrVjQTWYpKN+hoV2dwwc2U4Sz6qTKMXvwCAo7qq3M2Y2EfBmFCx66u9q9gq+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfnWCaKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfnWCaKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9639C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760427593;
	bh=FkzJhpVC5KrO4ji9hTygQ4zm1j0bj524qCncBWwqBnw=;
	h=To:Subject:From:Date:From;
	b=TfnWCaKYtprx0XNziQqKJorLUP9K4JmWHztWcAake6QRputHleZCeHZjDAVlQDZuZ
	 eb0UpjnPL1sIdjP2f8pW92s4fQwu0i+sGLRGhRuRWjFTvHhiEQWO3mZZy3Hrr69Aoa
	 oZA7XJ+8SwfHKk64EnRs7/HDAIs+UBTK2QSyf02w++auzW/h/8/aMLEtMEHjag8O4f
	 3vKdO98ChjX8CttqokNGQo60elKW9KylEv09eD/DUcPpDzo8/grHh/ZE5wdWdbYdy1
	 xyTqNip+TZ4mcazUW8nT7AG8YFvkyOV0S9L8cykW6QLf/Sc7zJ/J4lp8FugY0qyWfh
	 fBfHc4o2i3Gfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933A8CCD18F
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042759359.14186.9216232992117618245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d26602e61eb5343b1f098cde3dbc1a3652e03e28315105cb3f03926ab1d6a4
Date: Tue, 14 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760427593
