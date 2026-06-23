Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AB2287510
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782227794; cv=none; b=O5M06GTzsAks+B/osHjS+l98wTQd53QPbF/HSCFKercH9//ESXtuzDQEbSSg16APESuOGveJxyVO9/jAqdCNb+Bmkfe9EmyFbtKaTNr4dkLKvPn8djdzi9r4nAPvqZFIeh67k/ht72l8I3NnkrKqKFYDmT2xc9HX4xXmRmmyIwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782227794; c=relaxed/simple;
	bh=75ZxSkwgAFFm0fP8fpOJycel5wuLznI/wSfMMpL1euk=;
	h=To:Subject:From:Message-Id:Date; b=cnYHwaXoIo14cG4Ozzi9YDqI6sZ9XLZ7jui2jDQK/jdZHFlW6BYPuVSBMyLHhoSm44zwddCW4L7r0XHAwKfCCsiVbdGFHVy0jx4vEdzAUAYvTMysBO47Qz4JrPDwNnb+ItSEKqIJUP9XBTCN6ug9XW9Cp4XxAVJCy9gNsQvt0a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g52yEVVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g52yEVVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4450C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782227793;
	bh=75ZxSkwgAFFm0fP8fpOJycel5wuLznI/wSfMMpL1euk=;
	h=To:Subject:From:Date:From;
	b=g52yEVVslYHcj/oYH2L+hmZmTGPTWJW73Ja/r3ShK3WHfubSbn8Y/12QWhYtKsHqz
	 W02c+Rq+ieY9cG0+vpLp8ghaSgZzaF5AkFO3EZG0zggcJ8GUP8j73nrORQlsItMWnp
	 2e+f5BQNlo3hSoRiKkNx99Ad6Pk0vqaxkbv+gHMMc4H5bZoGVsr0HHjwpKgn3ROinx
	 t2K85DOYcKFZT2rUw6OJlWDGIvYfoP2+o6MrUbLuEBhx03RT53MPbTqRUGQ4Azazp3
	 yITc0EtZtiN4JXzMmciN41gCJ3X75pQm7/ndXfZBNhRtKDQT5+SwpL46Vow9NJ9IWQ
	 23B1y0Luqjsng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92FBCDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178222779368.18365.14198219351030766383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc382f683400a49ee876670a4f60f47a49883b6cb5ca462c3f63593e5f4855d1
Date: Tue, 23 Jun 2026 15:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782227793
