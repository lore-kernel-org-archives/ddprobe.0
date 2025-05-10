Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E051C5D7D
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746862194; cv=none; b=m4AG3Y5JrOb2LC82IHR7bsIF6IUOUzZgP9JmQHm713NPJvWKG92eQ2e5NUTEZOlf5EcMl43QDrVZT9O1n4tb2hoZzOyw2LaMpO9fxWAz+RAXpiJToJqUDlo4Px9rlaACzJhO5Q4WvnoPlT2doXJd+W3nFa+niF9yAUcdXob1O4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746862194; c=relaxed/simple;
	bh=0FwXF7LUgMmSAh07PQDDZKc0QSAowqANdyMpYr5Jw8w=;
	h=To:Subject:From:Message-Id:Date; b=C3TTmAFHtOuwDqKAHRRc9RvHH/7j7yUeemyU05vxWC6IgNDMEdBzlwA9cqPnOreVbjbQPVBJ8whe14+r3oJyDErFqJYQSf7ltAPMxEiuGKgsIer8dgXEipaCmId47o+0uI/OiMi950F2KzzVhQpKi3L+a5r4GlcVNJgIrWfQhso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEMda5u6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEMda5u6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E37C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746862193;
	bh=0FwXF7LUgMmSAh07PQDDZKc0QSAowqANdyMpYr5Jw8w=;
	h=To:Subject:From:Date:From;
	b=kEMda5u65OnMbmtx3PYUFIGHMidP4uQmPHc0AT4VrCRP7AthKf+vq7kXHvJJV3vpM
	 OXINObnqumD2cgKPuw2pyvjxlY5aTEs6waGpSonUSR7oQ0k1kdDDAVu0jnUz8KzpHP
	 1ayV258jCS45Syx9YjjhXNOIIyxnIXirfeYfX3L47Ourh1slvcv5uFDugDauBK5WaQ
	 UAZ3Dp3U2ajnH0tIZD+x+IJOZp8eGNAaW/Q92fEW4S4O8gnxG6yigDRAF/NEwJn5Kx
	 378Op5Yk0zfH2dCOPgtzDURWPDXniy+bw5vKbacXb3+w1/PFWtNJt1QFnj98v5VQyW
	 TBsqta7XKGIaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E91CC3ABBE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686219357.28492.15338831059637513937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f91250824f9bd5be122c5aab20c49e81f4b78288b3761e7ab15439a3bde2c583
Date: Sat, 10 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746862193
