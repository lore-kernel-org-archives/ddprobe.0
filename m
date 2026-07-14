Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDDC19E7F7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783990114; cv=none; b=AzmAJs8LhD0g46L0rrYjT570tjom2CS33zUXU0y8vXRCRQ3Ro33+A+gy/NVInulb1DGEPYmUB3KuBQmdUWYK1IniB1pQQNy8S5feRYEbg8loUIK8whjh5kWDDSC3bDiFAhWULDSN/vt0ap270hlAD3dsJMB3iW586SpYNOHeftQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783990114; c=relaxed/simple;
	bh=2HkbeuWf1nbudxZdgwBeXi/uLvaPWQKgYyNnVy5e/PY=;
	h=To:Subject:From:Message-Id:Date; b=XMrKJYIzzFpwg+uI8vAo1tGIrR/B8Ma4brjXHD7k5mJzUGsjn5QCFShIgDski0I2uEA0aCVebzRLawKYDAFR2njuObRnSa2tKZdTvwhwKIeehm/ZFjbeOyOs69t6A0Nkqm7Hd2Ct3UU63Crx1aViR4+Hvtk3jX4CjdVKzCc+QE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfYbzcdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfYbzcdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE314C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783990113;
	bh=2HkbeuWf1nbudxZdgwBeXi/uLvaPWQKgYyNnVy5e/PY=;
	h=To:Subject:From:Date:From;
	b=IfYbzcdXlZT0HQFARPNOclFCz7aRSsoQShUUpwBtivZYPhfnxoxqfVvbFw/Lf9jLb
	 bHSJcuxO9vs64QC327jNyfNO2gGGn3w1JXCGzlIiw0PncxfixNNF5snmwUzaFVWE7B
	 OHmO7lYg9H7ckLIpKBA82yf7Rj905Pu5aUadlr0DozSPw3TrHnoeI49Q//J8J0NHaR
	 vaxzUpwknxD+ihPfWVrNyopjo17tg+gVNhJKxoa0ZbhPNqzKUcgxczb7+O1sGF0VBt
	 w9SmjbsYtzfHziy2rUPcx8yeqaMaOXuyf8dNcliepxa2J8a0BDm9z6IYYQCowdM4HZ
	 Za/Rwv0UUjAag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDD1C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399011368.16151.14548761674164325964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2528f49784a510b6cfe381f9a85322178d37c28d6d41c94ea3c37ea11dcd99df
Date: Tue, 14 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783990113
