Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235A61A9F82
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770420234; cv=none; b=uDTfTVVaOBiGoH/nWPRhPDQ+2jgpMQAaA3Ft3o+xhzxxBJXIJoBkZmOrctaUh9ClNUkeJVfl5zOk49K6f3/OP7bbRFwdOYbayvQ1fzge/FGquRelte9MWWzHFaLQ2jO4RrT2M44mE+0zSxvwDbjEI8F/F01bDWs1dioSBaxR+N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770420234; c=relaxed/simple;
	bh=sQfsBYF/iYcGEhrIuXlEgUV9EqPgXYlSh7SvJ2yc79o=;
	h=To:Subject:From:Message-Id:Date; b=p39Tclxe2FGLZkQDfw/gQBUbjdiERn1HneaFcVzwY+yg5p6nLzmY3OHEBgUERTNcYmn8Nx9dKjprhbK/pnums2HtPH3qpHGv/R3c5M1NxxojpskIWGFmSwtBYgcH2J9j/+v7xbXGjE5q9rXEYWy9rKj0QWgMy3nukPnxi2znHC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeYHG1G4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeYHG1G4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBBAC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770420233;
	bh=sQfsBYF/iYcGEhrIuXlEgUV9EqPgXYlSh7SvJ2yc79o=;
	h=To:Subject:From:Date:From;
	b=EeYHG1G43PqP1CfgNDFv76EcnQIb15JhlU75a86d6n4E753ckzZUY/CsntiX4JSLS
	 6PD8UdW9sSalNzIAL5WwTTjxh9kU5g1vRBAbxW2h4/ZU/1uGCx/Swfwm9+xoQpOHnp
	 absL0vBYQz4g9rlu0Hx0cmc5RmFRWKUaetZs/i3FKRJDYh+2Tkv67qraTMQylKI5yg
	 gURB5P30DxiicAYp5/LZuCaZim3chYk7XVaW8mbX6nTOJHxHPBxz9/E/qOc4Alz0um
	 SmMsCSpc177xaPgrSZY9f6038S80mnzNo5wbNuBk5aVjtxGanstC8bQRLZPfNu+GbN
	 4kHjpDAuYC0BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99218EE6B6A
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042023358.8397.7584289917608395493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5bcb7a999c860107fdfb4febe86bd942f8188db880940ae30b374b5a09edc0d
Date: Fri, 06 Feb 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770420233
