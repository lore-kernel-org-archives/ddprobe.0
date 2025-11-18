Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F17936C596
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763482914; cv=none; b=fDF1j6ISF5KthDTSvwZmGqUMpyLj+1512egk7v4MKDqZNym4AQ+5H3JdvIzwUVqj0TJglanjfNrPnhqEsYa6vWN+yCvaIsIUu/uEE5fLuujQ0vH9b+IB7qv8o6h124Y489Js9h0eXhCY886UNP2S9VmObdaCh+qGDX78dGSIOJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763482914; c=relaxed/simple;
	bh=0P2ReLMTPrTX5uznXNpJl1seTSJufxILGRRazLfZEMk=;
	h=To:Subject:From:Message-Id:Date; b=fmPZLGM1CGEVPzX+eof9gJbWahpsKXxLU1S6MIIWi4qbKm7BeBDOJ3caFXBDC+zAjz9725MAMTXfGqqGTWVn0jJG4OaVdkPYQlTNDBmf5R7bdMJKUPv51ikrfgdmbFgxrrjYDnV5NXg6po2LjCtUpT2upNjHn27ZcdpS3tQd+XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQ/A5Gba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQ/A5Gba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE53CC2BC86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763482914;
	bh=0P2ReLMTPrTX5uznXNpJl1seTSJufxILGRRazLfZEMk=;
	h=To:Subject:From:Date:From;
	b=iQ/A5GbaOTwNJdQXGdP6Ag9BmwmaRBFAYwzm6/3z9cp5W9hrVwqv+6RNb0awCDG2F
	 exvHEUYO3M4F+9ikSajnEStJX1AZknHMhA6sz4XRPxIEjJku8HoOBbJMI0gPUa3HAi
	 YlphdT6FNajx7HeOmcvWT0KrgypKoTNyRaGJEPXRadIkJPM+V5Bt1rLOZV3so7tYXM
	 iHnrDaFAtb3QlNSPzGxq1kW94A6TfVFlP+/x+T3Kuq5pgk7mb+mvX6CDMX2gBvnSPj
	 ZxHdq/I22BAw5iDfVYYFxYwlB3iH8sdNbdMVAcxZz3NeH+21N4gpscm2z5kc+D8H4x
	 f0W8PGPD9OQ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CB8CEE339
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176348291360.21660.6508811693090655748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3181f95c2cfc85574f73c901801d9eacf5824759ceb0e681ddd0743babdc5033
Date: Tue, 18 Nov 2025 16:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763482913
