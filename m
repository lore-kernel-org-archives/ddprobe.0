Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9A5266588
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745243394; cv=none; b=A4ERi+Lv6Gi5/AfWFDSmEMlni+XUf2Q0F04sxR3i1QDyX1RB49k/o5/S1bjVptj4w5IHx4Cxme4ao/oursAARbJSIB1VDHKESEbY1Ac0/IGmaPb2U8eK08dsu2KGz6BJJe+kUPF9OS2tNS1MCfMC/upb0hX4aIdApnGDa8nMBYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745243394; c=relaxed/simple;
	bh=X5xW0+HrNnmfWF1dgHWXJh3O7+3kaRSVUZ+K6ckdQMA=;
	h=To:Subject:From:Message-Id:Date; b=l67npzA2kkEwOhRQ4rom8etiL6dRb6vrbJB7ZqnFl44znjX69uhFikkb1RI+GLp6UQp3t8njEQVVC5uCpK/vtR4QxxCen5SN6oiaOVc1LA96jvZwklriC9rCz8heR88D1MT08ftoJx47NsjSBt4hnwCN9iOgJS9vZSlB5tYQI3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoEk5Wwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoEk5Wwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3611C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745243393;
	bh=X5xW0+HrNnmfWF1dgHWXJh3O7+3kaRSVUZ+K6ckdQMA=;
	h=To:Subject:From:Date:From;
	b=KoEk5WwabbWrqCTdhh3LB40rQZpAJ66i3ncH7jABq3mX8aIXorYzG1ZNG/r/w7Rnr
	 pj1NskapnzVWaUfHiTPxoHrXbFJdSJ13K1NwhCSW1IFRakDWUAJwv3/DABVwcX/oju
	 HX6QFe99uRjhEAMsJisUdkqd01tsVXhGKJiJLoouEP0eKxo4iP/eESYyUjQN9jcwvR
	 B05A7/moUqSkINVCUsW8CaR5ZuDB9IpxlrCj3P3UgjrhcmJ8EAWp7mh/9kj7XKI8lO
	 jRHS/yJHWOO9DNB4BvC0FeqOPlEQaRmtiZ6cMWSLOoUIABO+t9UTzEnY/GOsBpuFgh
	 qG26N9TOKqTyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34E6C369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174524339365.20900.13880797629347840750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f64bb6ac575a3f06196a2c6cf28cbdacb00643f701aa541d23c8e3f2e44b0945
Date: Mon, 21 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745243393
