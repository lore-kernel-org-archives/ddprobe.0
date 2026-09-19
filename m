Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C0537F006
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789834234; cv=none; b=p4lIvKGe0ysaoPKTHaRpB1FL26YPcXroHslpjKz/7ud6PjznIudHJhK+vnrUPyAIHl8jyFSJZ52T9nnjlUs8cdjWzQN4MoygnuIpxaMeXBCMXs483UhE7XaY+7J2iKZKxib1ZayhtVblujUNxwLU5J/Dt0yWOjjgCQtqwlaG4mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789834234; c=relaxed/simple;
	bh=LeenQ68TuFaCLFUyQf0vF/wvGEyw9WrQjshUToUgKoc=;
	h=To:Subject:From:Message-Id:Date; b=HdazE1bRQD4G3GxaB+DFpWOW5Iea1xIqjfxL/34psFKiRc00SSBtp4sf6Vl3nHIZvir4Ts4J4CQbh+bZKYkdFgrgaKOAZ8wG2KebXgycJ6ZUO0yUn/eTSWYUQKogoCJlmF1+b8RrdLsyKmJNFnj90sbys7Z8SZDF1h1A6GiQPDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pA+oN7eX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pA+oN7eX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E9DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789834233;
	bh=LeenQ68TuFaCLFUyQf0vF/wvGEyw9WrQjshUToUgKoc=;
	h=To:Subject:From:Date:From;
	b=pA+oN7eXVmQH+zFfgwtoXn7ejf48D6zLFxdejLNQyQUzrXKd3INNWE7Y8jCkgY7Dl
	 dRFM+oug6rn1BIVgQYkIZYSvuiQVlTm7QQUFLBmNeDnNYv8ji2tL/ViwbBVpyx3JIL
	 Io24aWe6f4zLZzskVXaZiykC1wsiZjTBrNeVXBGtkdNsgDhgaAyCZxlhO1uMEJkOCJ
	 69adIFof1nQ5hXLt913us+ld0SfYnftdBGfyCFXgd1QTo6LrgJK7rVY8DnlCOPE1fX
	 VBp7J2UpN01NgcGev6qlSJ+c3XfAvOHnlMQ+QBhoyszqZ9DaHCBDK7iPkOvUE6BkmO
	 N40dpxbEZutkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB828C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178983423369.17880.13056800530141306496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0eabe7add31973499ffb94a5d81fdc8db7699aa37aef33110d939b5ab3c5d13
Date: Sat, 19 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789834233
