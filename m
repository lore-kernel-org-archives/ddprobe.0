Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641B72F3B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 05:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719033143; cv=none; b=hufEN4ALRg1m1ThWMoPB9gS7U17ZivKO836oiwv8SmnZXQxLde6LsbdSfan8yG5y4ToUot94RSl/DBVz8GnCasl3CgugDMYGKXzoPIbYWWmicz6i+AIwHVIYezv5prC4Yq6aNvUNDAe4IhMlyJyjkOA25kA57zbE60tSB3EmoYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719033143; c=relaxed/simple;
	bh=WO6lOQEEob193OQ6Znf2BCX4EtdHb1mmtUgJW3tvo3Q=;
	h=To:Subject:From:Message-Id:Date; b=fcMgYQPJl/oa0ga7RxrCycrVkeL5D4wMeYpQyelFkREEAFA87KqJERIcIUT0wiXZoqoe3lmM8TeX1DGmJ8HgZUQfVti8IgaCzgIO8vvf3KT0dXYXga+iyXcl2LkdIoXKep7i0Ec/5gRI1zNXpdBP6/YI5bJRy/YB4IrznZ+KOc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpxrJQQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpxrJQQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DB6C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 05:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719033142;
	bh=WO6lOQEEob193OQ6Znf2BCX4EtdHb1mmtUgJW3tvo3Q=;
	h=To:Subject:From:Date:From;
	b=MpxrJQQvaIuNW4Ws6yRFtpXiessC6hw/Iha490YzsYOC7YSkqcwuTgt04kVb72yUT
	 DOpXj1pOjHoQ7sKwBU/d9D/yXSsHzsqBJMoFijdvwlj0fGsJcial2Jnd02uRB2EtzV
	 2ZMhCuWVtTZxcQkjnR7ZlrHcic9+pSksFkLy+P+fsS7UdcZODvKAMuTN+56jCJduVR
	 tqzhus3fZwNt3ySc8yOFxZEKjCn837L5hw9AL5knvvFe7RvmYalPOYQpjzT/wWTo/Q
	 MdtFb7btyzUR+0EUqvb12oGmpMXm10SVRdnlP+NiZnXYypvaMcgnmqnElFqsF0gfUj
	 2rVkIMVOpA2wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A1FC2BB85
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 05:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171903314278.30371.4790796472049317155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c51be408dfdb27ed7de99ef5b1f747c14161c0c4f7aeb3350e85401713c502b2
Date: Sat, 22 Jun 2024 05:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719033142
