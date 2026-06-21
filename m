Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6045E23536B
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782068194; cv=none; b=tD+3pB2LDleRXjeBkD/ZpBhyYlhcyA1ZEXK/lL9wKsil93JAo+DC+C7QVfXBPjAezIUufa4EKr+xX+tIPG9lwtifAxYORyr/DxY9h6q16znF8Q/++EpCb2wFPkwWEy7y9hnKHMg/dJuQ0odPGxIiwFCbv3tpqlvh9+2gf2HVhWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782068194; c=relaxed/simple;
	bh=SFW1nAHrh8xMUiJp8gQxtWAsfhUdQi0drK1iiCLndAY=;
	h=To:Subject:From:Message-Id:Date; b=BP/qQp1OcvbhpkvkAfQlTzQZd2H68aUzSiHjZhi7ewtyR8R3buxEC/qyemZxma1MRrtATiSFZn6JgZkzIXYPh5gLX5ZUU3DbGcOOftn3286jHd4tJwRkS/Sq5mkSJ1M7Jj874RX7hbj8LGsYVutuoEUMRvTuXGIpZWdbzk6hYpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSpgzKSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSpgzKSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E98C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782068193;
	bh=SFW1nAHrh8xMUiJp8gQxtWAsfhUdQi0drK1iiCLndAY=;
	h=To:Subject:From:Date:From;
	b=TSpgzKSRh9lw7QE8Y4AG2qAz0Km0S7AhAvBlOgB/TMCEhi9sXpplpUpLsrJ+vpIvM
	 ZIt14NcB1ErCAZK8KggaNDEMJ4oya78H1G/9roP56pLDuzlC3bZje28nU+NYARiBGA
	 t/w8YBJ0xI0+rM9VxZhwro3Lzwz2VJlqY0d63Tj8GJ5j1n5wJVgVeQ4B4fFUOeILbP
	 qZD36SfH1oh9Hs3pb8m4eamtGgIOTE6jc+9yxjq82wwHOIgYwJXA+/0va6NFtzLset
	 6MJaxL+CaXoiFq/h1SyNpfy6XZlNssiJpPJpKHVxhoKwc56kWk67X/9/7QZlGhLmP7
	 TWK/PC7MLqnRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84EACD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178206819368.21078.7629798584586355426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 202a1b5891d2f1d83876a1fc5e5e188e070c97d0f90085642e81ceae70368f95
Date: Sun, 21 Jun 2026 18:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782068193
