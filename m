Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1961D30DEC1
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771443894; cv=none; b=gsjV+31WrGO5GkXqwT3jmUxt3+YhFtbMrZS4umpNkiP2Pq6gKZ98lpPd6jUUqxaX0I+cRtOAnwXfoNyqfJqgwfOCEPJh8A+m/kYTjTUZ1Yl7kJzPq/aocIrCk6omtOV3+jOhhr0+IgLB+DBYaxJ0jF098wc3mS+8eCmXwwiIWK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771443894; c=relaxed/simple;
	bh=iCGJX2x7cAD0/ObNnbKsw2X9n+oNu9GR+5MyQaCJKZ4=;
	h=To:Subject:From:Message-Id:Date; b=iVU9Y3baR1bZv0IR7aGd/y+fJ0LYMsAQ0z5rHFbLiY2BR1pzJ+aXTX98c7CbxsWfCez0nA+wH6e6digWeA6zDijCbEC0TQ7Q0BHXOmEp4VLGzDt6pbK0ljEEfHVyiyJbYHvSTOjW4EMLP+tFjznMoF3Qfme5T3eqz3t1JmxhaLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmZcY/qi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmZcY/qi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E72C19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771443893;
	bh=iCGJX2x7cAD0/ObNnbKsw2X9n+oNu9GR+5MyQaCJKZ4=;
	h=To:Subject:From:Date:From;
	b=bmZcY/qiuM3RTajRxUk9lUpXS2pIk/X6zxQJLWygasniS/FxjpGwAyQZ1aw2QnA/E
	 jCLxpWbwCXe0cRQlTM9hfdwBmI5/CreAoBD8QjiYfxKEKC4YQeLmBzEaZSuyJQFoPH
	 8l3LZjZtMUmK1t6wh7TdpNDF74Pt2aFYSeKaR+Qndplgft7J6NJM4lT0ktA9YsvIny
	 Q65AlnjoDvxyLp9ec9lkBcyTA9/m9LrDIOHqbcJEj65rIUnkRAyr6xm6mD8mvoiJeE
	 cLbJqieMf56nzotWWiaVl3ZovEgdC67oPcQ3m2lIMGKM8pERF8+0bQmvpsFj5pDUkm
	 N+HafPpJ30aAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9906FE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144389361.11273.16737535855279949013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a9a59aaa13b3f7bbd92bd614f51ca6be59913b369aab6c2ba246eaec455a8da
Date: Wed, 18 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771443893
