Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386D718E361
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736773554; cv=none; b=P5nNZiDnJ4jVohuPT1gzMOE/23rRGPGVden8Ox+MC2TzL7GNw68tYJ7nhxdWM5mNJkYlCmTB0Otflvd6q1zvCjsI8mxojHEltY/tbDkif1lyi7k/blZuNnUfuMwtT8DHR1axzL2R/mBn6J7EnuR0Jyct+8Vik9PQj97lKzIznCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736773554; c=relaxed/simple;
	bh=TicURojll9GsORPKgYMJBgzNOI0VE+efIDMkgpk9968=;
	h=To:Subject:From:Message-Id:Date; b=ftNGM3L20ek84VlSxR1O6HqFppNmUj+576GXAJxacpjgchB5RXhO9XQPqJa+7fAtax+9Jio5bTPWVgmj5fav/gYBVyhhcihGAz/VfBtsDmufRKnBLNBf0V69XLKvjusTzfz7BQNbUlag2N9SbF07rbJ+5epYfSE1vqHhx2UOigY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWXgBniZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWXgBniZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B426BC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736773553;
	bh=TicURojll9GsORPKgYMJBgzNOI0VE+efIDMkgpk9968=;
	h=To:Subject:From:Date:From;
	b=FWXgBniZ5SYXE3D4IIHR4b+/91rWpilayF/7Mfhc5SMwhQtF7kjWxDAcF6pFWKl8W
	 l9Yoy39/LJZTNkO26PJf7gajKTrfUtfuBtDv7WU+ua3K18UnnAOEh5bhYwHI9iY9Pb
	 1XaIbcd+R5iww+Qz7GmPMIBrmtd3vASwWOFM+jQpKJAsp1graxFdwVq14Zo6q1xhTi
	 tURAZxhs8eAbb5CmHblSIrxxjxgcOoozObwjvqSzYbPumx/Z5jOdLn47q00jZmY/Fv
	 bSg0e7137upgDFtT1Kyvmy+PXQZYPpUK/NHhfNtX/xhRr+bId6iP0pJZdGTLQWePG3
	 ojD5dD059c0QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E041C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173677355359.17830.4475468576202726625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02accb29acd1c06afc3c29b58cef879473c867e8835d6eef77505c08c70fb993
Date: Mon, 13 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736773553
