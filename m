Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4228A3FE4
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723857954; cv=none; b=VCEn4sIekikdvOvxAsUHcYkjTp//LBPWEIyh2cehKBr4mWKGcPCC1vUb56wwrbu3OXH0CADXIf+H7YCMg8F6iE56qUgijEUxZUu3elUCvj79bXVy8rwRp2m+y0TEdT8Z/8YLEPPDs0AJeQqbwvfVmJmHQwxLYOplme6LkbW9+y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723857954; c=relaxed/simple;
	bh=GVQuQRPlDz7JFgOCW8JzINgxXeq8ysCUBF+RvEXO/kM=;
	h=To:Subject:From:Message-Id:Date; b=OSXIVzDQ7sYgyDGLD5qjOrPBk+jJy/5vGztoDf9BC/G6Z7LuLwzvYLLdLKyl03pGHNw4L7NEJKrVeO1CPPIBWPmpmBAH3VdaxX5w1vw12YZ+2A2IW09M5pABKHuVAzzRy2i/IdvQY0CQ62ILHEppQ0V3QCMSjuaMksrJeTN74Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muJkr242; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muJkr242"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47DBC32782
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723857953;
	bh=GVQuQRPlDz7JFgOCW8JzINgxXeq8ysCUBF+RvEXO/kM=;
	h=To:Subject:From:Date:From;
	b=muJkr242vnodIcdSXykEPyrbK3If9n5VuvoVlFZd8Vv1VoQcbr1G4kTX2nj5M3CH3
	 kEznGq8AjhF80M0KRFrXQQz6uH4u7lD0ZQKRXQI6Df00acJkCYK6K4cgKIS3PQUdGT
	 6T/tSPuYsPqqVxcHcdNOo8qIJ2hJoI09aeeeoEcqYcuxHrd+xbS7PhLlYqQ29D5sHT
	 NQQaIYYK3MbZJPvCHG4gDHb6kgrnEKZ/QZK1spKDPYLLuaJGIcfufIVc4fSJHXPZUq
	 fBACG25veXafR6kS/YtGehUJ+tR5ezGsjD8KPxKBZ2c2Y86uksw/4mUGc0lyDFZaMW
	 /UdTCEsZZxukw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A21B0C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172385795362.10123.8120698956068980775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7049260ff12f7c30dab3851c9f818bc4cb654fd5318cbd56470e086a23b6a792
Date: Sat, 17 Aug 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723857953
