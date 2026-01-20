Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204E943D4EA
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768920234; cv=none; b=AjnKw1CO+ffwp1ErV8artudA4D+jc4rB4sdsIrzo0WK3aU7XhI/CgRvMt1fNV9qZIF9FDU9ed2wuSJWYPi74EQFe3xyJeAIo+ii+QBGgOtSlM8w+U62gRrP1G6HvLRj/tMflYttMjKuzjOnVnwQKeRNudt3cNmc/X+G7JZcsxz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768920234; c=relaxed/simple;
	bh=awNywifm/6YEhqt52RIBTqV17GjpwAGJak+xjvuTQxw=;
	h=To:Subject:From:Message-Id:Date; b=l1kVD5t/e2AaC+TAuDhrjPXk48j2U/UOb0zMTLsXF2tC9T0bafFWYAXPPaqy6SdzXRQQULr9e0BDaNnaCdH0Fy3W+2q0Ki6muVk3C1kYY0Dk020eXflLxZWzmPdCsz/WLHSf7AlT3XU2Duhw9tpLZT8h87XavLBd1u8m2hACJF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaVrJJUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaVrJJUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3382C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768920233;
	bh=awNywifm/6YEhqt52RIBTqV17GjpwAGJak+xjvuTQxw=;
	h=To:Subject:From:Date:From;
	b=MaVrJJUR78I2qywldk+6BqE37Oq/sIUhN8bcLTjwO53bDY7oori+XLvFZKvuxT5rH
	 ONmYSV5w2dQbWOz5YQjPHqmHoDlyCF2fEFSlQDK6NtBHeQlu95Nl1WQj/qHq9Nzyld
	 7P0d2Hg2qZOG6hFcv0I4RNktYu4mUR1UUNQFrJC7PknNb/9WSsNdPNOV4UvMYCWAL6
	 km/T7k5FwwABGjZWRHy86DoIgSMqBEzanRypQ57wVQgB7v4c7K7K/T4nBOWh5Ljo4G
	 2/RSjnxLtz/blndny4F1z8HNrowh3qMNKIxU5+jwIyfR9ENhtf36tA9EJlXG2IP3p+
	 N8jZ1q/Vck+mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E42D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892023358.15517.3676979704771449249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081f11ddc0d0f5c47a692ef413c065cc95b9d176741930aeffd00ae270a322e9
Date: Tue, 20 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768920233
