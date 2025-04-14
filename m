Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9B62E3386
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744636794; cv=none; b=Y354l9OIsYFQ5HCLd+/Afwn2aYH/DnxjbS/HwXoLHcWkQAMEdU5VpUU6dS2TE9fulxI+AGkSjDg8u4uXV4JSHB3MnE+8eOzPP0bAorZtx6jwtDujtJqTVt1hiyaNPTiusoj+qOBcupIA0KNiKrKi/S/poaMtwYjeuq2XlgEO69E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744636794; c=relaxed/simple;
	bh=q+2gjDRzizsyq3PULureloZNwsIXjJoArt6eEsrewBo=;
	h=To:Subject:From:Message-Id:Date; b=swlSEkVZBk3hSjVVDgx0ReZjoLGC/yKWsHuGNAy3e7Rh/qIRdkZXXOIZMT3ytS98DxnFdzzNg26+5xi8CXkvHEv9AJ7J6ndKUIAqPUpXr3MzEOd6NEr7RSqTzCtQU+m/QyBXNmfhyoEJ7h5QtuhsoDmyxPSavbV+z8PywH4+/oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4EOqX0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4EOqX0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7096C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744636793;
	bh=q+2gjDRzizsyq3PULureloZNwsIXjJoArt6eEsrewBo=;
	h=To:Subject:From:Date:From;
	b=c4EOqX0iOoO3dXJ0RPBGLv7eUj8Y5xs28rteMRHb98AJEj9B8aosKRDBKo+xJ+2km
	 wITAN+sqfU6se4tILV6NjnOEgoP6jtaqPMZ7/vfL46qu/h1BNkvz22lu34Ir3NXHs8
	 s2Teyetwux7dyuc0xsCPIGETqCTnUYQf/1dgfIqW5sin7/sDVGy8ycGaUXFpHCFh6f
	 iMRDNuLxn3jVpRGk5xVkteIZUuzH0zRw9YWpMAtTRhToxkbZLgvUyhetwIpLAGcJHQ
	 4ZM7Iosu1WBT3X8T5NN9Rrjb0pFEQgYBQ97dZmHoFgswoQBKpLxrildi4bBztJ8l7d
	 vCe0eqiVhLHMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2666C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174463679365.25691.5580046651871980406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e306e0c8f58a38808bd91051a855fc9420fd768778c0ff1a91693927b5fce1ab
Date: Mon, 14 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744636793
