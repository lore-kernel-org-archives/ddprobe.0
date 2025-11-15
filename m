Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530191487E9
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763201394; cv=none; b=P8zZY11XPe/dCC3brUhOzpq/VFanIwxMsW/DXsWIa1i/lMUNAYHATryWbzA9apdDdww7FQtyofN5aJrZeGC2fe1kZGZ+hUxtnYal4NngXE7jX0fldzfCYkPd2EqejrXD7G33wDmnELOucbMfK4IfbIVDcU92rFnVRu3M74IVijk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763201394; c=relaxed/simple;
	bh=N8ObBqsyee0pYtqtQvPYKlpbCUogzroWoXuhnhQZbIY=;
	h=To:Subject:From:Message-Id:Date; b=AaIa3sBRWfkBi1pIDZX5+1EhEopGZeHg9mKjFhyLmqD92cvVuIz9+mNBo+nLRX59tMKF92td96z9h7xBGKzvHaFyheTcQ280ryUkxl0YQiWpay2WwsMY/HGY6FkOox8cEpn8VugvC6mTmu0cQuziyandnIQ6TQkiMpwXrPg+u2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbLr7no/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbLr7no/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CB0C19422
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763201393;
	bh=N8ObBqsyee0pYtqtQvPYKlpbCUogzroWoXuhnhQZbIY=;
	h=To:Subject:From:Date:From;
	b=DbLr7no/pwkyJy3fiGTy1DB7KDHhdWfaxBdv19LxTJXdLxD7TizeIFEj+hRXAsOYe
	 nbahvIi/bPN0JlX4w7hXBgSlSTGF4iXw/+cTex7gSIT+EThMlIQXpQOsL3ZLdL9UJ8
	 ozq+xRQBqvqRQ+kt2ZMY2iuyb3xBNTW/4t7o4RQ6U3fXm+5Qwtc2JRDXts9Islny8a
	 qgcJJMjb0LAMVW9UwI8Rkk5ZPfmLZpFwPNwHCsB1hRQTky8Rhx40niJSOOD2wZs4no
	 v57GFjXv7u2/MY+Y2/W+Tezp3MG2GdBwmG5uznU6IG/mueZ6qhWgDBFNQJdDrZmSyN
	 mtnnzqv3+j5Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B473ECEB2C9
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320139372.9162.11170603933852164148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d659e46d63fce8fdeefdf7daac9ed817ce12e8c522c21c41a158e074c2ebee
Date: Sat, 15 Nov 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763201393
