Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1041AC15D
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708065497; cv=none; b=e8Y27Y0Z6bd6RHTK9rZI6EkEQXUm7MSgD1mR/uMgObqXhEHVnQxcjZgqv1T+IKXbgD8Wl5HNOL0IhBthEkGXnILi9S9pQK6CS1ZDt/lpc8a/RTC6H7caWTXX48WJ8CKIXogSNZHSsvFfg+sSx9yJD0161C1PgC5Vt3krn2uRrsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708065497; c=relaxed/simple;
	bh=v2Umo32XdqINmb07vFgGXghbINeF547+FbsIhHQde6w=;
	h=To:Subject:From:Message-Id:Date; b=Qji9wIn+2X58ouhFXuOiFZwGzQ4RrwxvaxHQNFNd0Z4P/COgQEVRr+WAQxq24MHs8kENaFkwhzRsMWx3BPQfJ2Elbf4RNA00fqWKgFd+6HxZIpt7N1vF5Ipb/z2C9cXNtfge8OmMxYiBisbRVhZyE2lLHV71lIilSammWUELEz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BapTsPLO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BapTsPLO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84405C433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708065496;
	bh=v2Umo32XdqINmb07vFgGXghbINeF547+FbsIhHQde6w=;
	h=To:Subject:From:Date:From;
	b=BapTsPLOJwgd/1YtplQxlYUwO5/7sYgC+nbpNpcpLQbZwGOtg7V/pJjTYerr5tR9N
	 vVbSbuFA0RogoHllnyJc4O6so0P6pZWlKPOV3OJBd0ITiNOp12dXm0cGO8t6MhiIfq
	 OfkgwHAnb6DQ2bGbtBUkIe1BcZFS1rphaJSxn5cFQIwKIdaqvLY6ZZErb44MB6iO0e
	 FuEfK5A9gMO9KSpsTQKlhtx7mqBZQkAXGIyjelpimU2B9LJcLAKu0z0FRC2epQpVMA
	 v3lUnUXhzM10sXFlGyUCcej3r9mlPdv6Q/EN8nsJZPorsHj0FZZS62xuGNmI49cgnu
	 BHBFAZKRk6JmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67575C48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170806549638.10663.9601208282140259602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c03ba4b08cb92dfcbceca38962ace05054192960ed181968bb2356d3a15fb1
Date: Fri, 16 Feb 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708065496
