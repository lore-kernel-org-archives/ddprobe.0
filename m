Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C87120CCE4
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747342794; cv=none; b=Vsyt9J6YYgClGo+6/6vgRHJKJzdwaC/llNxGsHbFjqXaoUVLkYXTusqyXAkDJBkyfMX0epeUWXX8tuAFjaDtPpnjdCSGWS7Oub+QwtS/ECAlZ1ksmXkiz+5YIe7dY4OHu5dZz5dq27eCrBBwTjJhTRI7AZ7PgoHDVvkJdaNMufY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747342794; c=relaxed/simple;
	bh=H5mq9nXBjYY2H+D1I1GryCr3KhnGKA/9AxIuxG7FDkE=;
	h=To:Subject:From:Message-Id:Date; b=F/3fgf+pq5PfcFogxSruX4+KEzhV70v1nyDeLvSgb8C4nu9qgv+6zzVnYSiUGA8KotE1dct19fXHTH/qemQcZWdgNgBY7vaH/qLyd13e+yVEHLCblJnsRXAfe7HU83XYDBfBeX13cLS8WpfCGoMLAwn7PZ1+j3yyXotmWTG3Bek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHXFj5K9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHXFj5K9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3360C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747342793;
	bh=H5mq9nXBjYY2H+D1I1GryCr3KhnGKA/9AxIuxG7FDkE=;
	h=To:Subject:From:Date:From;
	b=gHXFj5K98zSTNRyXw3yxUjsRrHpNzJhlhtfr20Qu7vzSN6BsSrA1srNqyHQpIW72W
	 5ZhDKcChYT6Jc8HaFAbjeHfGUVE/TImFt/Gy0aHFwBYqVbuxsneNZrofPhXkOO07Xl
	 27Y4A2bbFm3YjfKdJKf/bC7yUzA70AM57z6pivgfRceMpd6TISybTQCxcX/ZdIbaVd
	 wYZ8QNMORUcEdruSyPyDutEuCgi8xShAVtoiKPcbpRu7c7WFF7hAPIZFVGNQ1y28zD
	 nbp7CbRlFG23Tc6WJvpZGUhSzLDN/1a7qrLmoyhCmqF48f2OrN98AaQo46ymtDqmvp
	 QLCmxqGp/kJhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BB2C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174734279357.9392.12216295851014771277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd1a634def7cc337c6ee78ddb7834a6d93840e7054dd9ed505b7072eac410ae
Date: Thu, 15 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747342793
