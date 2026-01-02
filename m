Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345DC23B63C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767386634; cv=none; b=YkyvFk9eJA/hGoWQDoauNrd7jdMQIfLfxQJ5sUgp89uA7NUEYPGHFlwwGwqbFSxk9x0KnBhQTPcUmvwBu6VY2BAyd45JheJYw8WVFlWBoy30ukNxM4b2yJ+xYfjq/e/w1gGuSSye6kViCrDbG4uyj44q0p68yVgBmYhQDCb7yMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767386634; c=relaxed/simple;
	bh=ESpHIHvEmlwNYXKGo9edsFZ9uTh73w/s58MO12/gVyU=;
	h=To:Subject:From:Message-Id:Date; b=UHP62b/D7ZZiFJruU7HUTT+SlTmJ/N4LUClxaEvzPijhO4IWv786pABiC+1vn2+GbAt12ti1fwGwLTmCtTFUhYIqTPYgxhylqcyUS5uwUdNWrPB5fMMesT7jff+Iua8AaRe2xAfK5aolm/rt8iElK1dRIL/N8th0/QXP6QXAA4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJXAupH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJXAupH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA27C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767386633;
	bh=ESpHIHvEmlwNYXKGo9edsFZ9uTh73w/s58MO12/gVyU=;
	h=To:Subject:From:Date:From;
	b=RJXAupH8IhVgzWo9fx60mMlQaFkJvOUSg8G5w/mkYJqSvTg8QnkzA/En44SvMLrup
	 QFnBol48U6GJCQeol7fSrrMA1MiCzMub9579vsULcqp6HiBZQ67ldTw4dLRh1dao7H
	 DuzOD03PJj4lE1B7XBs1VP0cgdQSTqc9XOVd8QzUrQl7cmtVAdobB24TMMm21A6X1q
	 uePrt3GFzn1QjF+nk1P8LkioY95WDZiaK6n/0QDLQhD2wrTeET7wdWSH4Injc707fM
	 H7i70isys/wAgBbXmPQLQ4yHadlwpNuWUE3JA4G8c1ISu0tjRXo3i1gn6h/PPp3KAT
	 XspFfAMFWprFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955D0FA3758
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738663358.18616.1318480186048482158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a04d49969ed2cba666fdbc5dd2666d0fcc19793b08dc4e45c661ae98554eb6
Date: Fri, 02 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767386633
