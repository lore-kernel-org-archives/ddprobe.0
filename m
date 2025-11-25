Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F07CA4E
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764065574; cv=none; b=QtPgWmt0kxbYlQ90h93JPG8C56o5eX1J5hIqQp/pNRjILg+g3F8TyuIz6v7M0iVZqLBbg3UFJXRKuk7RLReWv9SJMsZUx8lREPy0YrK0zxOzxTGC/zP4H3gBP+UFOJrgO9UsR69Vhs93Xxx+ULakDzuQaRUh/PJlX9VC87RGnZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764065574; c=relaxed/simple;
	bh=wHA/wU6P+YqLKGMkyotTVrpbOxOUbdOj29YoTeOhrLM=;
	h=To:Subject:From:Message-Id:Date; b=RL5X4aWyEtNErnxMQ40rsm26FWgRrc7K8D61JFdoP3QPHbel8IWaFGBddMZPzTMzLKPIeeZO0vW5bY9RzdaODS8cJK1htM0JOkSsvDayMojbqhSHuaIqzvFGtfM84ko3NmB90MqUcCgVveSYeWekOEPQLepCNbs+t6fuDkT25yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+yX6rex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+yX6rex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3980C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764065573;
	bh=wHA/wU6P+YqLKGMkyotTVrpbOxOUbdOj29YoTeOhrLM=;
	h=To:Subject:From:Date:From;
	b=g+yX6rexe/+5+whPaXFstUN2TUJtk0vSKqAGtVih9XcXspINQ/QoPyD/+kopxYHr0
	 +eoEi407zx84VyBQfs+eI3FCbN8eAdaXFjIhhvsgnrfflfdgUngKiap+RsFW7j2D1d
	 B/MmWN/880svVzVFC7UuXJN+RitKsXrDykiYbl+w8SbKc/pdYy5wuPKBavl8s1K+DY
	 5cA+p46bcmUJGfhneh/LS2mJfbfVYv9NyIvw3lukx7bsfuk2dkZpoO1PpUGZOuTm1E
	 f6KmNCS2Xu7banuyyZXlKauBXIZNuvNhAzyNsBTwnZ7xfUYUDQWJwEvcYeHrjQMhuu
	 1R9iD8BTargSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91045CFD37D
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406557358.9904.3066402372437392655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c5fcde1106e11a503add50ad0d4e8888d5ef3f42988016d9ee28b9bc6bbefe
Date: Tue, 25 Nov 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764065573
