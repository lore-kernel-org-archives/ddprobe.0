Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE44383
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735698354; cv=none; b=Dk7/xe/TFbHUWMS8QUyLdrvqLvRvy90HCmypWd4J/0R5ON7zBml+8AkYrOxnq3WpB1T1DesvXAK9psJX7TnSMxnRGosr+S/U1rD+BtnkxYHvMpC2rpnclDT/7I/mnYlf/tZVv4M/fLF4+QzSMUqfdl6iiY+IwLksjTjgCd2fItM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735698354; c=relaxed/simple;
	bh=SRxah21n/WOtBO23tPNNvANsgiuMeD2FaNY/YngZvW0=;
	h=To:Subject:From:Message-Id:Date; b=uDGxNfSKzDLWKgk6Wkr+sunrpqMFC5nX/WmQxwYH7LNxoIR6FJF0dlpYx+n4FWAhplDQPPBgojOBSkHTni+SDBdYUQu0bAnxB9eoQZ6R2h/dZ/8cgDpzRYFzK6apCG7RwiVwCxzwBUlpDiy+AbSAQutoep5p2qmIvgXwOIrYMXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbBaxvIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbBaxvIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD36C4CED2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735698353;
	bh=SRxah21n/WOtBO23tPNNvANsgiuMeD2FaNY/YngZvW0=;
	h=To:Subject:From:Date:From;
	b=cbBaxvIQ0wbrtiBmvMgGJZFD9Gl4d7a+HvMQfXsp/25oQXRMJLc63BueMdzpgd3o2
	 3WmAKlPHxijwQicDx8eYur69LB6h5BTzRGsCCoj1oUg1n2H6cY0Dx3CCTmbPTGcSST
	 GZ/MBNpR8JfzZxhOTXQ+uVfuFurbBqay9U7t9Rpk0Hjs2XItRwqfSHEZIGMj7bIRgo
	 V33cO6RYsHnPZgo1PN9XMKmCnKNYQURQPJ1K1iZv8nlWHmFICsmZK0lPAyG1WXGSZ7
	 YccvnXfk5X8TTPb6QF9PXi8WGwNppvFfKtpoHM06ORxXqUyJBEaEsOLn6bfoPaj72p
	 2HPK2IvFh7oKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93101E77188
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173569835359.9158.7924082835141110810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166abf2171476376d8b6af6b24de5279a8e0d7478fece8064a6485b223bbdb3d
Date: Wed, 01 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735698353
