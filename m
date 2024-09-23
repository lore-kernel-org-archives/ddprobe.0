Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C64415E86
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727119554; cv=none; b=Zt8GvNHWtVeTyEoFRGZZw5NB4iossaB62JfsrPOKTbyfr5BmUyWPfWt5M2mLjmnJdtHZsjiRKrCE6cN3UlkptD+pLTrUghgiiXyQmIopOWRQpjKTEarD7lcGjCQ6QuWbwxTmpAHH9aLsdz85Qmropi0f6tppBDK7svv8xnBVNM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727119554; c=relaxed/simple;
	bh=9DkvMyBAbzcBFHefIegZGNqvPyaSHxlHUf7RjsU1jJ4=;
	h=To:Subject:From:Message-Id:Date; b=PI0Icwovf9krTS3wZvp/8T6SbIOg1vZk3hKo5zvkzoNL8TeNlTn1IDJGqzDviW2iUjkWDlRyOmUutvEfRJmoLlpALIJSu5NKR2py+jnfHq2/+SdpLiv57gFYoszUUFZSf+d3KA4lrs9WrX0nvPRN46+FqOhjG+nQN8Jd2IN+OpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elRnOAl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elRnOAl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D0FC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727119553;
	bh=9DkvMyBAbzcBFHefIegZGNqvPyaSHxlHUf7RjsU1jJ4=;
	h=To:Subject:From:Date:From;
	b=elRnOAl7sAyRmWywIq8zXqs6FskGQnJWR3bfo3dqZGmcBYGeqkKswOc6QR+3jLG+r
	 98NWObEM1VZv5k7Rv5RpZlWm+5A80p8ZjnUO6WF33FmnHnBv0KY9Bdm5KJaIRRdXmn
	 ORBv5KwYjb7k4IAfObLDzuiSeGyAa8S5CmkQk0PQoIS63hR1RdT3aQhltku7lV+Ynz
	 aNRD50NFfig3r28uOmqCNSzQk5HYbMeJB2mAPEDpYk7VxUJ2pg4xpsCe42wCC4qDJI
	 SedePuTiTjODe45uZeGs67QALLTdD7XzhpH9jOKXN6G9lg/MBhIAJlqyJc7zLnZsto
	 AysnDY5ueB7Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E7ACF9C71
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172711955358.31136.3786128248555220241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b833e179c3b28185161ad04d371438c554d2f28bc296dcfc28f0bfa93b894be
Date: Mon, 23 Sep 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727119553
