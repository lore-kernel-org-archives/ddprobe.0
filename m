Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4288B12AAC0
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 21:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716674063; cv=none; b=dBNlTHaOogMxdabWd8zUNtPdSOpIGb6F1QEWoeFU1Ej0xlJm0582TWhkc4p/LnjFPJ/jMOqwYpYmUMXT3/34Jj+njGI0f+ODaKTz1h7UZNqHqfRf9F7Zyc2NHELU5gmGCxJ4Q5rc0XKP4h1heb566MHGYe5lKq6CIBzsYHOcY4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716674063; c=relaxed/simple;
	bh=MxHG3mYBeF5V18khL4EKks+4LPCPVVv1xG7k9QXXync=;
	h=To:Subject:From:Message-Id:Date; b=QFOwMywYdpsPnP6Vz3CIk/VfB6HempludtlXYDprIHi+O4BxtAewTU+6BRVrfwyDNwODDL74zgWAA8hxWehSedgZRNZ+j1McI9d1ZKcLXwI0TME9WLbt7N+cyTwahoxt3Lp23QpYx3jgDqAeAhqdYBGZtb4Lno1v/JbQAzpdfNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3vSjuzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3vSjuzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE709C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 21:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716674062;
	bh=MxHG3mYBeF5V18khL4EKks+4LPCPVVv1xG7k9QXXync=;
	h=To:Subject:From:Date:From;
	b=l3vSjuztFBwA3UABLEo+wxQTLgJzBeW00dGhxKbhfZvmVDiBStnN3qRzXzsXC3s5u
	 6SpXDca1KElR32ipvRnl8ruxefOPLQ+JkgI4NINkzjYivUagRltYq7VLgUNd4v7/Q4
	 mQJKg+ook7vgt468p6M5YDUDuE8nM+jXgyWNG4Iw4INBcNdPWekKpHlwsDtwws12MX
	 HRF0/omXoBss0TYws+aJ7EfLxVga3b0ZJafvmAnxM1Z52f62cvvP8klLtXJgooTc95
	 gScEO3adoDnq/2AvLrgGF5jSOMk8irmMs5jcpDrvz+lrrAMtTSNYQmjtTVoDs3MiS4
	 x/L92wcBb8iCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6B7C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 21:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171667406277.30413.2905389229746428255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26526ba7e5ae55a25e5adf7504f4309b47a88051559eef521cfaaaa1ad07eab9
Date: Sat, 25 May 2024 21:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716674062
