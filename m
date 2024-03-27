Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03EBD380
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711510697; cv=none; b=S1KktqwEf+BTrqTXBNn3ZzMO1vitMt3QZTnuRAgEvNnk79yKutYNEjMO6g8DpXFsCoBZluDy0h4zI0LuBG90S1kLcxJ9xm9dnULwCEvZpspNDCXLJgZqmdUOosRWe4VkObPlEFOOi6nILxswk2ys/CSMe8z3vgD00sUn0IQzdA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711510697; c=relaxed/simple;
	bh=BGwk+TXoOaW01eHATNXqQ0tSlWNy8XH0AAcSpcR7u5Q=;
	h=To:Subject:From:Message-Id:Date; b=TLfzii/XRcn5c9xzDNPlW34ye/vQ7DUrP3tqoNA870UE1fN5qRBy2OgtGJH5X4xD4ZTDhdMgsDn3QTxVUP7CuH4YXDQr8hOzQfhx5xfxTIcXkjvnv2l0nVxTawiWdsDzt/OTUdcGNHvszJX0okrSNbt77ZX7lnjlC522eJ9o+28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xuzm93po; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xuzm93po"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84E0AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711510696;
	bh=BGwk+TXoOaW01eHATNXqQ0tSlWNy8XH0AAcSpcR7u5Q=;
	h=To:Subject:From:Date:From;
	b=Xuzm93pomsePg4ajEEVnc6mSxTQDWrCM60OO7L9KOtR0gGFtXB1jF+wbzR+hSR54D
	 n6ufMwQwINowOMzY5K7lhNTbOHTmbF9i/W89XavM4jKnJ0jbipVDkTmqkkQvQeka9t
	 uB9ltp2uflddZy/JWTuGg14uLe8xbC657h16VZ3S3GrSbd2D60tCJtoCUe4ZmIqIBG
	 57XCr66Aw0CTecWpqNM+qsGcIm1B9lhx0FwMM7NjjuMe6zvSP4VVxutuAH4oo4XYV8
	 lvUBTRhFlmRtMi+7IwVhVFmY5GbimzSw1GO8m/ARo3kIBM+p/2jlu6RCu3SZxunb1i
	 pt7sWZLv7matg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E096C54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171151069642.18107.12321588093495850602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f733fc9a0c2b7be0943a33debde940e3ca243e8874008dbddd417652b5fb9324
Date: Wed, 27 Mar 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711510696
