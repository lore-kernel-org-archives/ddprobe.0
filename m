Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD8D18870F
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733207154; cv=none; b=dzZUN6oxOGU35sdTWl5YLlGfJR6oeHa0bsvP74lyVOl/oV5JLEKdNgeGsCuTmZFYIkCTVI/79OCE0k0HX2Hgjzy6S3lg3ns6keKniWcp6892rztMjPP90E+SqSlIPivh6iO63e2S8bm/g7ONwNU5x5ZedOubOZNV/2B5hO3BYds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733207154; c=relaxed/simple;
	bh=Ic3YAHXoXk95I0//EiJ9A/5gRjVsnAtTGKjaqUG5iRs=;
	h=To:Subject:From:Message-Id:Date; b=OfYTcz+HC90o5XJvrutSBiih2uOeKggios3plLLV3Wya4vLfEdXT8QpvgTISc44JxUDAPrrwfVMz0zHQGTdOBXpdPmZ542t22NE4byRwteI4GjkBs0UNQkGRFqJZOiMGgym8gYMu/wxlQByeoecboQMVymJzi7lV+Zxgd57O4/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USxkObVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USxkObVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A24C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733207153;
	bh=Ic3YAHXoXk95I0//EiJ9A/5gRjVsnAtTGKjaqUG5iRs=;
	h=To:Subject:From:Date:From;
	b=USxkObVDoyTNYRvuVamICnYVjP0Bx+0abM+U1LqpuvWWBnFwWGdoyiHKmjY+bEbbg
	 UCeUqpjymHtoR4qVhBJeX9NxJ+FCxXL8II1/E7BxN2BzTBZoGxVFJlClOWkbQBE3qt
	 z6vT9Ur/zM1259BKk3oZ6yaIOxI7O+4nNjulYHaqTRuWkHLrmfzot79mhjIxt2/Rgq
	 uvvqHmxGgTg3D3BD0zJepM8ruyziDdxvptnuqGsHjdQLZ8egpKaEbhH/iiMpe5cIjD
	 QTTgAShIlrkw8nAksbMCwOn1o4Opex47oULT63BPGrJ32HerzToKpen+ZAZHOuXw3E
	 jYSX0VIVny0tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96772E6C60B
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173320715359.5902.2097384814081857346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f44e164c952bfe9fb4a666314560e39655f7d199739146443338bc8cc98bd5
Date: Tue, 03 Dec 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733207153
