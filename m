Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496BE3B8BD1
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791279034; cv=none; b=aJ5reOoCVn55myTZWXef4td/quZPMZ+nxxqnnzbiCgeic/YX6k1RxAAwliFMdC8xSnI6kS5OQR2xR3ZvLBiwVLm88DrGiPmezKbjrOK2Ln6mqwMKPRTjqMiCWFldfm00MMKjZWs6WOO8ABVa9aH0bUoLRBykCKmNtOIXFAsx8x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791279034; c=relaxed/simple;
	bh=65yCsbZNs2trCLf6gb3w+ncrkPo/ea4TINNvXOWFJtk=;
	h=To:Subject:From:Message-Id:Date; b=dqM0iQCl1vZJ4xFjUDkn5++C/W5Mo2HJxXoqRZ1lSb/OONGnosdh55/7NmzsRF9aZStJq8DuoW/IYSDoxC2JxQmQpqPoSR6ZQ1ztpCWbjDjwzWnYKN4Ao6IjTzJXfuFyYxx56yux14sK0TXWgsp+5S/1y5iJjkSgWKfJrEAepak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgoGAypa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgoGAypa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C53C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791279033;
	bh=65yCsbZNs2trCLf6gb3w+ncrkPo/ea4TINNvXOWFJtk=;
	h=To:Subject:From:Date:From;
	b=qgoGAypahyJrOKeW4StmPIlwTyEMKESdJSAAaNnUDPfRAzfEcmYXz0kP9rdys1T3t
	 EmLwAtz27R2ykbSBWVWePOz7ylbhg6xZMAVLbr09RwZo8wC9mMLKgpnI8UKkEBTDcT
	 X6SDM5yK4F+pQT9nHOtgo/Lm+A9yEJrcxQpEh4oj3e1STUmh9RM4k2U8D+6n2ym7G7
	 gOGkL2SxOZWLIrGJm0BZGUqx0k/6fkJbvEsvq52iY+QYUBwhIdoUaYCgt9+YJkiXIg
	 Y9TL3ADibaQ4DYqmgoMQGg6vNbZ6g0/2iKPKcQDQgQB06tcEOpbJ+X+Csfd5TSx2sx
	 cXNJwRN7o6e+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDECCA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127903368.28038.10662880578662464418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64437d25d0b7710f8e2ba96da442ebbc859ff248a00a6071b5c4e63669decfdb
Date: Tue, 06 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791279033
